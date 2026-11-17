.class public final Lcom/fusepowered/l1/LoopMeInterstitial;
.super Lcom/fusepowered/l1/BaseAd;
.source "LoopMeInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/LoopMeInterstitial$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mExpirationListener:Lcom/fusepowered/l1/ExpirationTimer$Listener;

.field private mExpirationTimer:Lcom/fusepowered/l1/ExpirationTimer;

.field private volatile mIsDisplaying:Z

.field private volatile mIsLoading:Z

.field private mIsVideoPresented:Z

.field private mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

.field private mTask:Ljava/util/concurrent/FutureTask;

.field private mUserIteractionListener:Lcom/fusepowered/l1/UserIteractionListener;

.field private mVideoBridgeListener:Lcom/fusepowered/l1/BridgeListener;

.field private mVideoController:Lcom/fusepowered/l1/VideoController;

.field private mVideoControllerTask:Ljava/util/concurrent/FutureTask;

.field private mVideoFile:Ljava/io/File;

.field private mWebView:Lcom/fusepowered/l1/AdView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/fusepowered/l1/BaseAd;-><init>(Landroid/content/Context;)V

    .line 70
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start creating interstitial with app key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 71
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mAppKey:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->initWebView()V

    .line 78
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/UserIteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mUserIteractionListener:Lcom/fusepowered/l1/UserIteractionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/l1/LoopMeInterstitial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsVideoPresented:Z

    return v0
.end method

.method static synthetic access$202(Lcom/fusepowered/l1/LoopMeInterstitial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitial;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsVideoPresented:Z

    return p1
.end method

.method static synthetic access$300(Lcom/fusepowered/l1/LoopMeInterstitial;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoControllerTask:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fusepowered/l1/LoopMeInterstitial;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitial;
    .param p1, "x1"    # Ljava/util/concurrent/FutureTask;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoControllerTask:Ljava/util/concurrent/FutureTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fusepowered/l1/LoopMeInterstitial;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitial;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/fusepowered/l1/LoopMeInterstitial;->prepareVideoController(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->startExpirationTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/VideoController;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoController:Lcom/fusepowered/l1/VideoController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/LoopMeInterstitial$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    return-object v0
.end method

.method private initBridgeListener()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/fusepowered/l1/LoopMeInterstitial$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$2;-><init>(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    iput-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    .line 268
    return-void
.end method

.method private initWebView()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/fusepowered/l1/AdView;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fusepowered/l1/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    .line 274
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->initBridgeListener()V

    .line 275
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/AdView;->addBridgeListener(Lcom/fusepowered/l1/BridgeListener;)V

    .line 277
    :cond_0
    return-void
.end method

.method private preloadHtmlInWebview(Ljava/lang/String;)V
    .locals 7
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 432
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    :cond_0
    new-instance v6, Lcom/fusepowered/l1/LoopMeError;

    const-string v0, "Broken response"

    invoke-direct {v6, v0}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    .line 434
    .local v6, "error":Lcom/fusepowered/l1/LoopMeError;
    invoke-virtual {p0, p0, v6}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V

    .line 439
    .end local v6    # "error":Lcom/fusepowered/l1/LoopMeError;
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/l1/AdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareVideoController(Ljava/lang/String;)V
    .locals 6
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v3, Lcom/fusepowered/l1/tasks/VideoFileLoaderTask;

    new-instance v4, Lcom/fusepowered/l1/tasks/VideoFileLoader;

    invoke-direct {v4, p1}, Lcom/fusepowered/l1/tasks/VideoFileLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/fusepowered/l1/tasks/VideoFileLoaderTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    .line 143
    iget-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    invoke-static {v3}, Lcom/fusepowered/l1/ExecutorHelper;->submitTask(Ljava/util/concurrent/FutureTask;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 145
    .local v2, "stream":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 148
    :try_start_0
    const-string v3, "loopmeVideo"

    const-string v4, ".mp4"

    iget-object v5, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    new-instance v3, Lcom/fusepowered/l1/tasks/VideoFileWriterTask;

    new-instance v4, Lcom/fusepowered/l1/tasks/VideoFileWriter;

    iget-object v5, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoFile:Ljava/io/File;

    invoke-direct {v4, v2, v5}, Lcom/fusepowered/l1/tasks/VideoFileWriter;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-direct {v3, v4}, Lcom/fusepowered/l1/tasks/VideoFileWriterTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    .line 155
    iget-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    invoke-static {v3}, Lcom/fusepowered/l1/ExecutorHelper;->submitTask(Ljava/util/concurrent/FutureTask;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    .line 157
    .local v0, "descriptor":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    .line 158
    new-instance v3, Lcom/fusepowered/l1/VideoController;

    iget-object v4, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    invoke-direct {v3, v0, v4}, Lcom/fusepowered/l1/VideoController;-><init>(Ljava/io/FileDescriptor;Lcom/fusepowered/l1/AdView;)V

    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoController:Lcom/fusepowered/l1/VideoController;

    .line 165
    .end local v0    # "descriptor":Ljava/io/FileDescriptor;
    :goto_1
    return-void

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    new-instance v3, Lcom/fusepowered/l1/LoopMeError;

    const-string v4, "Exception during video file creation"

    invoke-direct {v3, v4}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p0, v3}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V

    goto :goto_0

    .line 160
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "descriptor":Ljava/io/FileDescriptor;
    :cond_0
    new-instance v3, Lcom/fusepowered/l1/LoopMeError;

    const-string v4, "Exception during video file creation"

    invoke-direct {v3, v4}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p0, v3}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V

    goto :goto_1

    .line 163
    .end local v0    # "descriptor":Ljava/io/FileDescriptor;
    :cond_1
    new-instance v3, Lcom/fusepowered/l1/LoopMeError;

    const-string v4, "Exception during loading of video file"

    invoke-direct {v3, v4}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p0, v3}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V

    goto :goto_1
.end method

.method private proceedLoad()V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/fusepowered/l1/IdentityProvider;->getInstance(Landroid/content/Context;)Lcom/fusepowered/l1/IdentityProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/l1/IdentityProvider;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 123
    sget-object v1, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Start initialization google adv id"

    sget-object v3, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 125
    new-instance v0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/fusepowered/l1/LoopMeInterstitial$1;

    invoke-direct {v3, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$1;-><init>(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/l1/tasks/AdvIdFetcher;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;)V

    .line 133
    .local v0, "advTask":Lcom/fusepowered/l1/tasks/AdvIdFetcher;
    new-instance v1, Lcom/fusepowered/l1/tasks/FetcherTask;

    invoke-direct {v1, v0}, Lcom/fusepowered/l1/tasks/FetcherTask;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    .line 134
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    invoke-static {v1}, Lcom/fusepowered/l1/ExecutorHelper;->executeTask(Ljava/util/concurrent/FutureTask;)V

    .line 139
    .end local v0    # "advTask":Lcom/fusepowered/l1/tasks/AdvIdFetcher;
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->fetchAd()V

    goto :goto_0
.end method

.method private releaseResources()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "releaseResources"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 356
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/l1/LoopMeInterstitial$5;

    invoke-direct {v1, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$5;-><init>(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoController:Lcom/fusepowered/l1/VideoController;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoController:Lcom/fusepowered/l1/VideoController;

    invoke-virtual {v0}, Lcom/fusepowered/l1/VideoController;->destroy()V

    .line 368
    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoController:Lcom/fusepowered/l1/VideoController;

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 372
    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoFile:Ljava/io/File;

    .line 374
    :cond_2
    return-void
.end method

.method private startAdActivity()V
    .locals 4

    .prologue
    .line 392
    sget-object v1, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Starting Ad Activity"

    sget-object v3, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 393
    invoke-static {p0}, Lcom/fusepowered/l1/BaseAdHolder;->put(Lcom/fusepowered/l1/BaseAd;)V

    .line 395
    iget-boolean v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsVideoPresented:Z

    if-eqz v1, :cond_0

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/fusepowered/l1/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 402
    return-void

    .line 398
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/fusepowered/l1/AdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private startExpirationTimer()V
    .locals 5

    .prologue
    .line 280
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mExpirationTimer:Lcom/fusepowered/l1/ExpirationTimer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mAdParams:Lcom/fusepowered/l1/AdParams;

    if-nez v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mAdParams:Lcom/fusepowered/l1/AdParams;

    invoke-virtual {v1}, Lcom/fusepowered/l1/AdParams;->getExpiredTime()I

    move-result v0

    .line 285
    .local v0, "validTime":I
    new-instance v1, Lcom/fusepowered/l1/LoopMeInterstitial$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$3;-><init>(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    iput-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mExpirationListener:Lcom/fusepowered/l1/ExpirationTimer$Listener;

    .line 292
    new-instance v1, Lcom/fusepowered/l1/ExpirationTimer;

    int-to-long v2, v0

    iget-object v4, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mExpirationListener:Lcom/fusepowered/l1/ExpirationTimer$Listener;

    invoke-direct {v1, v2, v3, v4}, Lcom/fusepowered/l1/ExpirationTimer;-><init>(JLcom/fusepowered/l1/ExpirationTimer$Listener;)V

    iput-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mExpirationTimer:Lcom/fusepowered/l1/ExpirationTimer;

    .line 293
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mExpirationTimer:Lcom/fusepowered/l1/ExpirationTimer;

    invoke-virtual {v1}, Lcom/fusepowered/l1/ExpirationTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method private stopExpirationTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 297
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mExpirationTimer:Lcom/fusepowered/l1/ExpirationTimer;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Stop schedule expiration"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 299
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mExpirationTimer:Lcom/fusepowered/l1/ExpirationTimer;

    invoke-virtual {v0}, Lcom/fusepowered/l1/ExpirationTimer;->cancel()V

    .line 300
    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mExpirationTimer:Lcom/fusepowered/l1/ExpirationTimer;

    .line 302
    :cond_0
    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mExpirationListener:Lcom/fusepowered/l1/ExpirationTimer$Listener;

    .line 303
    return-void
.end method


# virtual methods
.method public addListener(Lcom/fusepowered/l1/LoopMeInterstitial$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 414
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    .line 416
    :cond_0
    return-void
.end method

.method addUserIteractionListener(Lcom/fusepowered/l1/UserIteractionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/l1/UserIteractionListener;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mUserIteractionListener:Lcom/fusepowered/l1/UserIteractionListener;

    .line 429
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 325
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "destroy"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 326
    invoke-static {}, Lcom/fusepowered/l1/PlayerActivity;->finishActivity()V

    .line 327
    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    .line 328
    iput-boolean v4, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsReady:Z

    .line 329
    iput-boolean v4, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsLoading:Z

    .line 330
    iput-boolean v4, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsDisplaying:Z

    .line 331
    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    .line 332
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v0, v3}, Lcom/fusepowered/l1/AdView;->addBridgeListener(Lcom/fusepowered/l1/BridgeListener;)V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->stopExpirationTimer()V

    .line 336
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mUserMetaData:Lcom/fusepowered/l1/UserMetaData;

    invoke-virtual {v0}, Lcom/fusepowered/l1/UserMetaData;->clear()V

    .line 337
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->releaseResources()V

    .line 338
    invoke-static {}, Lcom/fusepowered/l1/BaseAdHolder;->clear()V

    .line 339
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 341
    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoControllerTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoControllerTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 345
    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoControllerTask:Ljava/util/concurrent/FutureTask;

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 349
    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mHandler:Landroid/os/Handler;

    .line 351
    :cond_3
    iput-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    .line 352
    return-void
.end method

.method fetchAd()V
    .locals 5

    .prologue
    .line 306
    invoke-static {p0}, Lcom/fusepowered/l1/BaseAdHolder;->put(Lcom/fusepowered/l1/BaseAd;)V

    .line 307
    new-instance v2, Lcom/fusepowered/l1/AdRequest;

    iget-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/fusepowered/l1/AdRequest;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mAppKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mUserMetaData:Lcom/fusepowered/l1/UserMetaData;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/l1/AdRequest;->getRequestUrl(Ljava/lang/String;Lcom/fusepowered/l1/UserMetaData;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "requestUrl":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/l1/tasks/AdFetcher;

    iget-object v2, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/fusepowered/l1/LoopMeInterstitial$4;

    invoke-direct {v3, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$4;-><init>(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/l1/tasks/AdFetcher;-><init>(Ljava/lang/String;Landroid/os/Handler;Lcom/fusepowered/l1/tasks/AdFetcher$Listener;)V

    .line 320
    .local v0, "fetcher":Lcom/fusepowered/l1/tasks/AdFetcher;
    new-instance v2, Lcom/fusepowered/l1/tasks/FetcherTask;

    invoke-direct {v2, v0}, Lcom/fusepowered/l1/tasks/FetcherTask;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    .line 321
    iget-object v2, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mTask:Ljava/util/concurrent/FutureTask;

    invoke-static {v2}, Lcom/fusepowered/l1/ExecutorHelper;->executeTask(Ljava/util/concurrent/FutureTask;)V

    .line 322
    return-void
.end method

.method fetchAdComplete(Lcom/fusepowered/l1/AdParams;)V
    .locals 1
    .param p1, "params"    # Lcom/fusepowered/l1/AdParams;

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lcom/fusepowered/l1/LoopMeInterstitial;->setAdParams(Lcom/fusepowered/l1/AdParams;)V

    .line 443
    invoke-virtual {p1}, Lcom/fusepowered/l1/AdParams;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->preloadHtmlInWebview(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public getAdFormat()Lcom/fusepowered/l1/AdFormat;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lcom/fusepowered/l1/AdFormat;->INTERSTITIAL:Lcom/fusepowered/l1/AdFormat;

    return-object v0
.end method

.method getVideoController()Lcom/fusepowered/l1/VideoController;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mVideoController:Lcom/fusepowered/l1/VideoController;

    return-object v0
.end method

.method getWebView()Lcom/fusepowered/l1/AdView;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsReady:Z

    return v0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 94
    iget-boolean v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsLoading:Z

    if-eqz v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsLoading:Z

    .line 98
    sget-object v1, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Start loading interstitial"

    sget-object v3, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 100
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    sget-object v1, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interstitial already loaded"

    sget-object v3, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 102
    invoke-virtual {p0, p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadSuccess(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    goto :goto_0

    .line 107
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 108
    new-instance v0, Lcom/fusepowered/l1/LoopMeError;

    const-string v1, "Not supported Android version. Expected Android 4.0+"

    invoke-direct {v0, v1}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "error":Lcom/fusepowered/l1/LoopMeError;
    invoke-virtual {p0, p0, v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V

    goto :goto_0

    .line 113
    .end local v0    # "error":Lcom/fusepowered/l1/LoopMeError;
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/fusepowered/l1/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->proceedLoad()V

    goto :goto_0

    .line 116
    :cond_3
    new-instance v0, Lcom/fusepowered/l1/LoopMeError;

    const-string v1, "No internet connection"

    invoke-direct {v0, v1}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v0    # "error":Lcom/fusepowered/l1/LoopMeError;
    invoke-virtual {p0, p0, v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V

    goto :goto_0
.end method

.method public onLoopMeInterstitialClicked(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 498
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad received tap event"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 499
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$Listener;->onLoopMeInterstitialClicked(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 501
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialExpired(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mExpirationTimer:Lcom/fusepowered/l1/ExpirationTimer;

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsReady:Z

    .line 513
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->releaseResources()V

    .line 514
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 515
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ads content expired"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 516
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$Listener;->onLoopMeInterstitialExpired(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 518
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialHide(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsReady:Z

    .line 485
    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsDisplaying:Z

    .line 486
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdView;->onDisappear()V

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->releaseResources()V

    .line 490
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_1

    .line 491
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad disappeared from screen"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 492
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$Listener;->onLoopMeInterstitialHide(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 494
    :cond_1
    return-void
.end method

.method public onLoopMeInterstitialLeaveApp(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 505
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Leaving application"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 506
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$Listener;->onLoopMeInterstitialLeaveApp(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 508
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;
    .param p2, "error"    # Lcom/fusepowered/l1/LoopMeError;

    .prologue
    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsReady:Z

    .line 463
    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsLoading:Z

    .line 464
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/l1/LoopMeInterstitial$7;

    invoke-direct {v1, p0, p2}, Lcom/fusepowered/l1/LoopMeInterstitial$7;-><init>(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 474
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialLoadSuccess(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsReady:Z

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsLoading:Z

    .line 449
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/l1/LoopMeInterstitial$6;

    invoke-direct {v1, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$6;-><init>(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 459
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialShow(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 478
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad appeared on screen"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 479
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$Listener;->onLoopMeInterstitialShow(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 481
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialVideoDidReachEnd(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Video reach end"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 523
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mListener:Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/l1/LoopMeInterstitial$Listener;->onLoopMeInterstitialVideoDidReachEnd(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 525
    :cond_0
    return-void
.end method

.method setReadyStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsReady:Z

    .line 406
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 377
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interstitial will present fullscreen ad"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 378
    invoke-virtual {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsDisplaying:Z

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial;->mIsDisplaying:Z

    .line 381
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->stopExpirationTimer()V

    .line 382
    invoke-direct {p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->startAdActivity()V

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_0
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interstitial is already presented on the screen"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0

    .line 387
    :cond_1
    sget-object v0, Lcom/fusepowered/l1/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interstitial is not ready"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0
.end method
