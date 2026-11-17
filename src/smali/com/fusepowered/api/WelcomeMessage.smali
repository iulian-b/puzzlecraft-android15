.class public Lcom/fusepowered/api/WelcomeMessage;
.super Ljava/lang/Object;
.source "WelcomeMessage.java"


# instance fields
.field public final isUpToDate:Z

.field public final latestVersion:Lcom/fusepowered/ads/APIVersion;

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fusepowered/ads/APIVersion;)V
    .locals 1
    .param p1, "welcomeString"    # Ljava/lang/String;
    .param p2, "latestVersion"    # Lcom/fusepowered/ads/APIVersion;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fusepowered/api/WelcomeMessage;->message:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/fusepowered/api/WelcomeMessage;->latestVersion:Lcom/fusepowered/ads/APIVersion;

    .line 20
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->sdkVersion:Lcom/fusepowered/ads/APIVersion;

    invoke-virtual {v0, p2}, Lcom/fusepowered/ads/APIVersion;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/fusepowered/api/WelcomeMessage;->isUpToDate:Z

    .line 21
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public logItLikeItsHot()V
    .locals 3

    .prologue
    .line 24
    const-string v0, "FuseAPI"

    iget-object v1, p0, Lcom/fusepowered/api/WelcomeMessage;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-boolean v0, p0, Lcom/fusepowered/api/WelcomeMessage;->isUpToDate:Z

    if-nez v0, :cond_0

    .line 26
    const-string v0, "FuseAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A newer version of the SDK is available ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/api/WelcomeMessage;->latestVersion:Lcom/fusepowered/ads/APIVersion;

    invoke-virtual {v2}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method
