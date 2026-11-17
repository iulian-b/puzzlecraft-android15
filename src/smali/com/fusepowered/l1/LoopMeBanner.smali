.class public Lcom/fusepowered/l1/LoopMeBanner;
.super Lcom/fusepowered/l1/BaseAd;
.source "LoopMeBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;,
        Lcom/fusepowered/l1/LoopMeBanner$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBannerView:Lcom/fusepowered/l1/LoopMeBannerView;

.field private mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

.field private volatile mRefreshTimer:Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;

.field private volatile mSilentMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/fusepowered/l1/LoopMeBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/l1/LoopMeBannerView;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "bannerview"    # Lcom/fusepowered/l1/LoopMeBannerView;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/fusepowered/l1/BaseAd;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start creating banner with app key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 48
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeBanner;->mActivity:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/fusepowered/l1/LoopMeBanner;->mAppKey:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/fusepowered/l1/LoopMeBanner;->mBannerView:Lcom/fusepowered/l1/LoopMeBannerView;

    .line 54
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/l1/LoopMeBanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeBanner;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeBanner;->refreshBanner()V

    return-void
.end method

.method static synthetic access$200(Lcom/fusepowered/l1/LoopMeBanner;)Lcom/fusepowered/l1/LoopMeBanner$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeBanner;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    return-object v0
.end method

.method private preloadHtmlInWebview(Ljava/lang/String;)V
    .locals 7
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 338
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    new-instance v6, Lcom/fusepowered/l1/LoopMeError;

    const-string v0, "Broken response"

    invoke-direct {v6, v0}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    .line 340
    .local v6, "error":Lcom/fusepowered/l1/LoopMeError;
    invoke-virtual {p0, p0, v6}, Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerLoadFail(Lcom/fusepowered/l1/LoopMeBanner;Lcom/fusepowered/l1/LoopMeError;)V

    .line 345
    .end local v6    # "error":Lcom/fusepowered/l1/LoopMeError;
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mBannerView:Lcom/fusepowered/l1/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeBannerView;->getWebView()Lcom/fusepowered/l1/AdView;

    move-result-object v0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/l1/AdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private proceedLoad()V
    .locals 6

    .prologue
    .line 165
    invoke-static {p0}, Lcom/fusepowered/l1/BaseAdHolder;->put(Lcom/fusepowered/l1/BaseAd;)V

    .line 166
    new-instance v3, Lcom/fusepowered/l1/AdRequest;

    iget-object v4, p0, Lcom/fusepowered/l1/LoopMeBanner;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/fusepowered/l1/AdRequest;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/fusepowered/l1/LoopMeBanner;->mAppKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/fusepowered/l1/LoopMeBanner;->mUserMetaData:Lcom/fusepowered/l1/UserMetaData;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/l1/AdRequest;->getRequestUrl(Ljava/lang/String;Lcom/fusepowered/l1/UserMetaData;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "requestUrl":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/l1/tasks/AdFetcher;

    iget-object v3, p0, Lcom/fusepowered/l1/LoopMeBanner;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/fusepowered/l1/LoopMeBanner$3;

    invoke-direct {v4, p0}, Lcom/fusepowered/l1/LoopMeBanner$3;-><init>(Lcom/fusepowered/l1/LoopMeBanner;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/fusepowered/l1/tasks/AdFetcher;-><init>(Ljava/lang/String;Landroid/os/Handler;Lcom/fusepowered/l1/tasks/AdFetcher$Listener;)V

    .line 179
    .local v0, "fetcher":Lcom/fusepowered/l1/tasks/AdFetcher;
    new-instance v1, Lcom/fusepowered/l1/tasks/FetcherTask;

    invoke-direct {v1, v0}, Lcom/fusepowered/l1/tasks/FetcherTask;-><init>(Ljava/lang/Runnable;)V

    .line 180
    .local v1, "mFutureCommonTask":Lcom/fusepowered/l1/tasks/FetcherTask;
    invoke-static {v1}, Lcom/fusepowered/l1/ExecutorHelper;->executeTask(Ljava/util/concurrent/FutureTask;)V

    .line 181
    return-void
.end method

.method private refreshBanner()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/fusepowered/l1/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mSilentMode:Z

    .line 234
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeBanner;->fetchAd()V

    .line 236
    :cond_0
    return-void
.end method

.method private startRefreshTimer()V
    .locals 7

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeBanner;->getAdParams()Lcom/fusepowered/l1/AdParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeBanner;->getAdParams()Lcom/fusepowered/l1/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdParams;->getAdRefreshTime()I

    move-result v6

    .line 206
    .local v6, "interval":I
    new-instance v0, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;

    const-wide v2, 0x7fffffffffffffffL

    int-to-long v4, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;-><init>(Lcom/fusepowered/l1/LoopMeBanner;JJ)V

    iput-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mRefreshTimer:Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;

    .line 207
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mRefreshTimer:Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method private stopRefreshTimer()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mRefreshTimer:Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Stop schedule refresh ad"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 213
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mRefreshTimer:Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;->cancel()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mRefreshTimer:Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/fusepowered/l1/LoopMeBanner$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/l1/LoopMeBanner$Listener;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    .line 68
    :cond_0
    return-void
.end method

.method fetchAd()V
    .locals 3

    .prologue
    .line 130
    new-instance v1, Lcom/fusepowered/l1/LoopMeBanner$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/l1/LoopMeBanner$2;-><init>(Lcom/fusepowered/l1/LoopMeBanner;)V

    .line 158
    .local v1, "bridgeListener":Lcom/fusepowered/l1/AdWebViewBridgeListener;
    new-instance v0, Lcom/fusepowered/l1/AdWebViewBridge;

    invoke-direct {v0, v1}, Lcom/fusepowered/l1/AdWebViewBridge;-><init>(Lcom/fusepowered/l1/AdWebViewBridgeListener;)V

    .line 159
    .local v0, "adWebViewClient":Lcom/fusepowered/l1/AdWebViewBridge;
    iget-object v2, p0, Lcom/fusepowered/l1/LoopMeBanner;->mBannerView:Lcom/fusepowered/l1/LoopMeBannerView;

    invoke-virtual {v2, v0}, Lcom/fusepowered/l1/LoopMeBannerView;->setWebViewClient(Lcom/fusepowered/l1/AdWebViewBridge;)V

    .line 161
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeBanner;->proceedLoad()V

    .line 162
    return-void
.end method

.method public fetchAdComplete(Lcom/fusepowered/l1/AdParams;)V
    .locals 1
    .param p1, "params"    # Lcom/fusepowered/l1/AdParams;

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/l1/LoopMeBanner;->setAdParams(Lcom/fusepowered/l1/AdParams;)V

    .line 333
    invoke-virtual {p1}, Lcom/fusepowered/l1/AdParams;->getHtml()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "html":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fusepowered/l1/LoopMeBanner;->preloadHtmlInWebview(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAdFormat()Lcom/fusepowered/l1/AdFormat;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/fusepowered/l1/AdFormat;->BANNER:Lcom/fusepowered/l1/AdFormat;

    return-object v0
.end method

.method getWebView()Lcom/fusepowered/l1/AdView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mBannerView:Lcom/fusepowered/l1/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeBannerView;->getWebView()Lcom/fusepowered/l1/AdView;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 222
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad will disappear from screen"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 223
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeBanner;->stopRefreshTimer()V

    .line 224
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mBannerView:Lcom/fusepowered/l1/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeBannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mBannerView:Lcom/fusepowered/l1/LoopMeBannerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeBannerView;->setVisibility(I)V

    .line 226
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeBanner;->getWebView()Lcom/fusepowered/l1/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdView;->onDisappear()V

    .line 227
    invoke-virtual {p0, p0}, Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerHide(Lcom/fusepowered/l1/LoopMeBanner;)V

    .line 229
    :cond_0
    return-void
.end method

.method loadComplete()V
    .locals 3

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mIsReady:Z

    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Banner successfully loaded"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mIsReady:Z

    .line 274
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeBanner;->showBanner()V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeBanner;->getWebView()Lcom/fusepowered/l1/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdView;->onAppear()V

    goto :goto_0
.end method

.method public onLoopMeBannerClicked(Lcom/fusepowered/l1/LoopMeBanner;)V
    .locals 3
    .param p1, "banner"    # Lcom/fusepowered/l1/LoopMeBanner;

    .prologue
    .line 313
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad received tap event"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 314
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/l1/LoopMeBanner$Listener;->onLoopMeBannerClicked(Lcom/fusepowered/l1/LoopMeBanner;)V

    .line 317
    :cond_0
    return-void
.end method

.method public onLoopMeBannerHide(Lcom/fusepowered/l1/LoopMeBanner;)V
    .locals 3
    .param p1, "banner"    # Lcom/fusepowered/l1/LoopMeBanner;

    .prologue
    .line 305
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad disappeared from screen"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mIsReady:Z

    .line 307
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/l1/LoopMeBanner$Listener;->onLoopMeBannerHide(Lcom/fusepowered/l1/LoopMeBanner;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onLoopMeBannerLeaveApp(Lcom/fusepowered/l1/LoopMeBanner;)V
    .locals 3
    .param p1, "banner"    # Lcom/fusepowered/l1/LoopMeBanner;

    .prologue
    .line 320
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Leaving application"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 321
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/l1/LoopMeBanner$Listener;->onLoopMeBannerLeaveApp(Lcom/fusepowered/l1/LoopMeBanner;)V

    .line 324
    :cond_0
    return-void
.end method

.method public onLoopMeBannerLoadFail(Lcom/fusepowered/l1/LoopMeBanner;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 3
    .param p1, "banner"    # Lcom/fusepowered/l1/LoopMeBanner;
    .param p2, "error"    # Lcom/fusepowered/l1/LoopMeError;

    .prologue
    .line 281
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad fails to load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fusepowered/l1/LoopMeError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 282
    iget-boolean v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mSilentMode:Z

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mIsReady:Z

    .line 286
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/l1/LoopMeBanner$4;

    invoke-direct {v1, p0, p2}, Lcom/fusepowered/l1/LoopMeBanner$4;-><init>(Lcom/fusepowered/l1/LoopMeBanner;Lcom/fusepowered/l1/LoopMeError;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLoopMeBannerShow(Lcom/fusepowered/l1/LoopMeBanner;)V
    .locals 3
    .param p1, "banner"    # Lcom/fusepowered/l1/LoopMeBanner;

    .prologue
    .line 298
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad appeared on screen"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 299
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/l1/LoopMeBanner$Listener;->onLoopMeBannerShow(Lcom/fusepowered/l1/LoopMeBanner;)V

    .line 302
    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mListener:Lcom/fusepowered/l1/LoopMeBanner$Listener;

    .line 76
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 85
    sget-object v3, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Banner did start loading ad"

    sget-object v5, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v3, v4, v5}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 87
    iget-boolean v3, p0, Lcom/fusepowered/l1/LoopMeBanner;->mIsReady:Z

    if-eqz v3, :cond_0

    .line 88
    sget-object v3, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Banner already loaded"

    sget-object v5, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v3, v4, v5}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 89
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeBanner;->showBanner()V

    .line 127
    :goto_0
    return-void

    .line 95
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 96
    new-instance v1, Lcom/fusepowered/l1/LoopMeError;

    const-string v3, "Not supported Android version. Expected Android 4.0+"

    invoke-direct {v1, v3}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "error":Lcom/fusepowered/l1/LoopMeError;
    invoke-virtual {p0, p0, v1}, Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerLoadFail(Lcom/fusepowered/l1/LoopMeBanner;Lcom/fusepowered/l1/LoopMeError;)V

    goto :goto_0

    .line 101
    .end local v1    # "error":Lcom/fusepowered/l1/LoopMeError;
    :cond_1
    iget-object v3, p0, Lcom/fusepowered/l1/LoopMeBanner;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/fusepowered/l1/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/fusepowered/l1/LoopMeBanner;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/fusepowered/l1/IdentityProvider;->getInstance(Landroid/content/Context;)Lcom/fusepowered/l1/IdentityProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 103
    sget-object v3, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Start initialization adv id"

    sget-object v5, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v3, v4, v5}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 105
    new-instance v0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;

    iget-object v3, p0, Lcom/fusepowered/l1/LoopMeBanner;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fusepowered/l1/LoopMeBanner;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/fusepowered/l1/LoopMeBanner$1;

    invoke-direct {v5, p0}, Lcom/fusepowered/l1/LoopMeBanner$1;-><init>(Lcom/fusepowered/l1/LoopMeBanner;)V

    invoke-direct {v0, v3, v4, v5}, Lcom/fusepowered/l1/tasks/AdvIdFetcher;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;)V

    .line 113
    .local v0, "advTask":Lcom/fusepowered/l1/tasks/AdvIdFetcher;
    new-instance v2, Lcom/fusepowered/l1/tasks/FetcherTask;

    invoke-direct {v2, v0}, Lcom/fusepowered/l1/tasks/FetcherTask;-><init>(Ljava/lang/Runnable;)V

    .line 114
    .local v2, "futureAdvIdTask":Lcom/fusepowered/l1/tasks/FetcherTask;
    invoke-static {v2}, Lcom/fusepowered/l1/ExecutorHelper;->executeTask(Ljava/util/concurrent/FutureTask;)V

    goto :goto_0

    .line 117
    .end local v0    # "advTask":Lcom/fusepowered/l1/tasks/AdvIdFetcher;
    .end local v2    # "futureAdvIdTask":Lcom/fusepowered/l1/tasks/FetcherTask;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fusepowered/l1/LoopMeBanner;->mSilentMode:Z

    .line 118
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeBanner;->fetchAd()V

    goto :goto_0

    .line 123
    :cond_3
    new-instance v1, Lcom/fusepowered/l1/LoopMeError;

    const-string v3, "No internet connection"

    invoke-direct {v1, v3}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    .line 124
    .restart local v1    # "error":Lcom/fusepowered/l1/LoopMeError;
    invoke-virtual {p0, p0, v1}, Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerLoadFail(Lcom/fusepowered/l1/LoopMeBanner;Lcom/fusepowered/l1/LoopMeError;)V

    goto :goto_0
.end method

.method showBanner()V
    .locals 3

    .prologue
    .line 184
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Banner did start showing ad"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 185
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mBannerView:Lcom/fusepowered/l1/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeBannerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    sget-object v0, Lcom/fusepowered/l1/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Banner already shown"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner;->mBannerView:Lcom/fusepowered/l1/LoopMeBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeBannerView;->setVisibility(I)V

    .line 191
    invoke-virtual {p0, p0}, Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerShow(Lcom/fusepowered/l1/LoopMeBanner;)V

    .line 193
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeBanner;->getWebView()Lcom/fusepowered/l1/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdView;->onAppear()V

    .line 195
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeBanner;->startRefreshTimer()V

    goto :goto_0
.end method
