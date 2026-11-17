.class public Lcom/fusepowered/l1/LoopMeInterstitialUnity;
.super Ljava/lang/Object;
.source "LoopMeInterstitialUnity.java"

# interfaces
.implements Lcom/fusepowered/l1/LoopMeInterstitial$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private volatile mActivity:Landroid/app/Activity;

.field private volatile mLoopMeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mActivity:Landroid/app/Activity;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/l1/LoopMeInterstitialUnity;)Lcom/fusepowered/l1/LoopMeInterstitial;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mLoopMeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fusepowered/l1/LoopMeInterstitialUnity;Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/LoopMeInterstitial;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitialUnity;
    .param p1, "x1"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mLoopMeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fusepowered/l1/LoopMeInterstitialUnity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public load()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/l1/LoopMeInterstitialUnity$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/l1/LoopMeInterstitialUnity$2;-><init>(Lcom/fusepowered/l1/LoopMeInterstitialUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public onLoopMeInterstitialClicked(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 98
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLoopMeInterstitialClicked"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 99
    const-string v0, "LoopMeEventsManager"

    const-string v1, "interstitialDidReceiveTapNotification"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onLoopMeInterstitialExpired(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 110
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLoopMeInterstitialExpired"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 111
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mLoopMeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->setReadyStatus(Z)V

    .line 112
    const-string v0, "LoopMeEventsManager"

    const-string v1, "interstitialDidExpireNotification"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onLoopMeInterstitialHide(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 91
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLoopMeInterstitialHide"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 92
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mLoopMeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->setReadyStatus(Z)V

    .line 93
    const-string v0, "LoopMeEventsManager"

    const-string v1, "interstitialDidDisappearNotification"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onLoopMeInterstitialLeaveApp(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 104
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLoopMeInterstitialLeaveApp"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 105
    const-string v0, "LoopMeEventsManager"

    const-string v1, "interstitialWillLeaveApplicationNotification"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;
    .param p2, "error"    # Lcom/fusepowered/l1/LoopMeError;

    .prologue
    .line 78
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLoopMeInterstitialLoadFail"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 79
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mLoopMeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->setReadyStatus(Z)V

    .line 80
    const-string v0, "LoopMeEventsManager"

    const-string v1, "interstitialDidFailToLoadAdNotification"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onLoopMeInterstitialLoadSuccess(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 70
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLoopMeInterstitialLoadSuccess"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 71
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mLoopMeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->setReadyStatus(Z)V

    .line 72
    const-string v0, "LoopMeEventsManager"

    const-string v1, "interstitialDidLoadNotification"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onLoopMeInterstitialShow(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 85
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLoopMeInterstitialShow"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 86
    const-string v0, "LoopMeEventsManager"

    const-string v1, "interstitialDidAppearNotification"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onLoopMeInterstitialVideoDidReachEnd(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 117
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLoopMeInterstitialVideoDidReachEnd"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 118
    const-string v0, "LoopMeEventsManager"

    const-string v1, "interstitialVideoDidReachEnd"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public declared-synchronized setAppKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 30
    if-eqz p1, :cond_0

    const-string v0, ""

    if-ne p1, v0, :cond_1

    .line 31
    :cond_0
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "wrong app key"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_0
    monitor-exit p0

    return-void

    .line 33
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/l1/LoopMeInterstitialUnity$1;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/l1/LoopMeInterstitialUnity$1;-><init>(Lcom/fusepowered/l1/LoopMeInterstitialUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/l1/LoopMeInterstitialUnity$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/l1/LoopMeInterstitialUnity$3;-><init>(Lcom/fusepowered/l1/LoopMeInterstitialUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method
