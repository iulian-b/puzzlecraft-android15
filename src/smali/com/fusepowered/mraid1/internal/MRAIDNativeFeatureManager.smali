.class public Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;
.super Ljava/lang/Object;
.source "MRAIDNativeFeatureManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDNativeFeatureManager"


# instance fields
.field private context:Landroid/content/Context;

.field private supportedNativeFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "supportedNativeFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public isCalendarSupported()Z
    .locals 4

    .prologue
    .line 25
    iget-object v1, p0, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    const-string v2, "calendar"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 29
    .local v0, "retval":Z
    :goto_0
    const-string v1, "MRAIDNativeFeatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCalendarSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return v0

    .line 25
    .end local v0    # "retval":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInlineVideoSupported()Z
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    const-string v2, "inlineVideo"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 36
    .local v0, "retval":Z
    const-string v1, "MRAIDNativeFeatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInlineVideoSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return v0
.end method

.method public isSmsSupported()Z
    .locals 4

    .prologue
    .line 41
    iget-object v1, p0, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    const-string v2, "sms"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 44
    .local v0, "retval":Z
    :goto_0
    const-string v1, "MRAIDNativeFeatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmsSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v0

    .line 41
    .end local v0    # "retval":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorePictureSupported()Z
    .locals 4

    .prologue
    .line 49
    iget-object v1, p0, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    const-string v2, "storePicture"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    .local v0, "retval":Z
    const-string v1, "MRAIDNativeFeatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStorePictureSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return v0
.end method

.method public isTelSupported()Z
    .locals 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/List;

    const-string v2, "tel"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 58
    .local v0, "retval":Z
    :goto_0
    const-string v1, "MRAIDNativeFeatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTelSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v0

    .line 55
    .end local v0    # "retval":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
