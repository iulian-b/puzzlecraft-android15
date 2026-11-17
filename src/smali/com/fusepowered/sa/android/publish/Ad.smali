.class public abstract Lcom/fusepowered/sa/android/publish/Ad;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/Ad$AdState;
    }
.end annotation


# static fields
.field private static init:Z


# instance fields
.field adInfoOverride:Lcom/fusepowered/sa/android/publish/adinformation/b;

.field protected context:Landroid/content/Context;

.field protected errorMessage:Ljava/lang/String;

.field protected extraData:Ljava/lang/Object;

.field protected placement:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

.field private state:Lcom/fusepowered/sa/android/publish/Ad$AdState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/sa/android/publish/Ad;->init:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/Ad;->extraData:Ljava/lang/Object;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/adinformation/b;->a()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->adInfoOverride:Lcom/fusepowered/sa/android/publish/adinformation/b;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->placement:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/Ad;->errorMessage:Ljava/lang/String;

    sget-object v0, Lcom/fusepowered/sa/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->state:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/Ad;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAdInfoOverride()Lcom/fusepowered/sa/android/publish/adinformation/b;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->adInfoOverride:Lcom/fusepowered/sa/android/publish/adinformation/b;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->extraData:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()Lcom/fusepowered/sa/android/publish/Ad$AdState;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->state:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->state:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    sget-object v1, Lcom/fusepowered/sa/android/publish/Ad$AdState;->READY:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/Ad;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/fusepowered/sa/android/publish/AdEventListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/sa/android/publish/Ad;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/sa/android/publish/Ad;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fusepowered/sa/android/publish/Ad;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Z)Z

    move-result v0

    return v0
.end method

.method protected load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Z)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/Ad;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/Ad;->context:Landroid/content/Context;

    const-string v4, "User-Agent"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/fusepowered/sa/android/publish/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/fusepowered/sa/android/publish/Ad;->init:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/h;->a(Landroid/content/Context;)V

    sput-boolean v3, Lcom/fusepowered/sa/android/publish/Ad;->init:Z

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    const-string v0, ""

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getPublisherId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getPublisherId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    const-string v0, "publisher ID and/or product ID were not set."

    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/Ad;->state:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    sget-object v5, Lcom/fusepowered/sa/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    if-eq v4, v5, :cond_2

    const-string v0, "load() was already called."

    move v1, v3

    :cond_2
    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/Ad;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, "network not available."

    move v1, v3

    :cond_3
    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad wasn\'t loaded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/Ad;->setErrorMessage(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fusepowered/sa/android/publish/Ad$1;

    invoke-direct {v1, p0, p2}, Lcom/fusepowered/sa/android/publish/Ad$1;-><init>(Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return v2

    :cond_5
    sget-object v0, Lcom/fusepowered/sa/android/publish/Ad$AdState;->PROCESSING:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/Ad;->setState(Lcom/fusepowered/sa/android/publish/Ad$AdState;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/Ad$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/fusepowered/sa/android/publish/Ad$2;-><init>(Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/Ad;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p3, v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->loadFromServer(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;ZLcom/fusepowered/sa/android/publish/c/p;)V

    move v2, v3

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method protected abstract loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
.end method

.method public setAdInfoOverride(Lcom/fusepowered/sa/android/publish/adinformation/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/Ad;->adInfoOverride:Lcom/fusepowered/sa/android/publish/adinformation/b;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/Ad;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setExtraData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/Ad;->extraData:Ljava/lang/Object;

    return-void
.end method

.method public setState(Lcom/fusepowered/sa/android/publish/Ad$AdState;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/Ad;->state:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    return-void
.end method

.method public show()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
