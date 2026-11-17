.class public final Lcom/fusepowered/as/view/vastplayer/VastPlayer;
.super Ljava/lang/Object;
.source "VastPlayer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final supportedMimeTypesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

.field private adsToPlay:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fusepowered/as/view/vastplayer/PlayableAd;",
            ">;"
        }
    .end annotation
.end field

.field private allImpressionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

.field private atLeastOneAdPlayed:Z

.field private context:Landroid/content/Context;

.field private currVidPos:I

.field private currentAd:Lcom/fusepowered/as/view/vastplayer/PlayableAd;

.field private currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

.field private hasPassed0Percent:Z

.field private hasPassedCloseOffset:Z

.field private volatile killTimer:Z

.field private linearWebView:Landroid/webkit/WebView;

.field private masterFrameLayout:Landroid/widget/FrameLayout;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private nonLinearWebView:Landroid/webkit/WebView;

.field private onPreparedFired:Z

.field private vastPlayerListener:Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

.field private vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

.field private vastVideoViewSizeChangedEventHandler:Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;

.field private final videoTimerMonitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    const-class v0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->LOG_TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "video/3gpp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "video/mp4"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "text/html"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->supportedMimeTypesSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/as/model/ad/VASTProviderAd;Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->adsToPlay:Ljava/util/LinkedList;

    .line 70
    iput-boolean v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->atLeastOneAdPlayed:Z

    .line 71
    iput-boolean v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->hasPassed0Percent:Z

    .line 72
    iput-boolean v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->hasPassedCloseOffset:Z

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->videoTimerMonitor:Ljava/lang/Object;

    .line 74
    iput-boolean v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->killTimer:Z

    .line 75
    iput v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currVidPos:I

    .line 76
    iput-boolean v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->onPreparedFired:Z

    .line 89
    iput-object p2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    .line 90
    iput-object p3, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastPlayerListener:Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

    .line 91
    iput-object p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->context:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->configureMasterFrameLayout()V

    .line 94
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->configureVideoView()V

    .line 95
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->configureLinearWebView()V

    .line 96
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->configureNonLinearWebView()V

    .line 98
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->registerVideoPlayerListeners()V

    .line 102
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->buildAdsToShow()V

    .line 104
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-interface {p3, v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;->onVideoViewCreated(Landroid/widget/VideoView;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->onPreparedFired:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->onPreparedFired:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allImpressionEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/component/VastVideoView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->startVideoTimer()V

    return-void
.end method

.method static synthetic access$1502(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->atLeastOneAdPlayed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->showNextLinearCreative()V

    return-void
.end method

.method static synthetic access$1700(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->hasPassedCloseOffset:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->hasPassedCloseOffset:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->hasPassed0Percent:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->hasPassed0Percent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Lcom/fusepowered/as/model/vast/Banner;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->getBannerAsOverlayLayoutParams(Lcom/fusepowered/as/model/vast/Banner;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Z
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->stillPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->nonLinearWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->videoTimerMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->killTimer:Z

    return v0
.end method

.method static synthetic access$602(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->killTimer:Z

    return p1
.end method

.method static synthetic access$700(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastPlayerListener:Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/PlayableAd;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentAd:Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/ad/VASTProviderAd;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    return-object v0
.end method

.method private buildAdsToShow()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getFirstPlayableVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getFirstPlayableVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->videoTimerMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->killTimer:Z

    .line 327
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoViewSizeChangedEventHandler:Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/VastVideoView;->removeVastVideoViewSizeChangedEventHandler(Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;)V

    .line 333
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastPlayerListener:Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

    const-string v1, "Either there was no playable VASt or there was an invalid VAST received."

    invoke-interface {v0, v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;->onFailure(Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 327
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getFirstPlayableVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    const-class v1, Lcom/fusepowered/as/model/vast/InLine;

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/VASTUtils;->normalizeSequenceEnabled(Ljava/util/TreeSet;Ljava/lang/Class;)Ljava/util/LinkedList;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/SequenceEnabled;

    .line 344
    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->adsToPlay:Ljava/util/LinkedList;

    new-instance v3, Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    check-cast v0, Lcom/fusepowered/as/model/vast/InLine;

    invoke-direct {v3, v0}, Lcom/fusepowered/as/view/vastplayer/PlayableAd;-><init>(Lcom/fusepowered/as/model/vast/InLine;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->adsToPlay:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private configureLinearWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    .line 180
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->configureWebViewWebSettings(Landroid/webkit/WebView;)V

    .line 186
    return-void
.end method

.method private configureMasterFrameLayout()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 114
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    .line 116
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method

.method private configureNonLinearWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->nonLinearWebView:Landroid/webkit/WebView;

    .line 193
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->nonLinearWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->nonLinearWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->nonLinearWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->nonLinearWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->configureWebViewWebSettings(Landroid/webkit/WebView;)V

    .line 199
    return-void
.end method

.method private configureVideoView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 128
    new-instance v0, Lcom/fusepowered/as/view/component/VastVideoView;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/view/component/VastVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    .line 130
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/VastVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;-><init>(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoViewSizeChangedEventHandler:Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;

    .line 172
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoViewSizeChangedEventHandler:Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/VastVideoView;->addVastVideoViewSizeChangedEventHandler(Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;)V

    .line 173
    return-void
.end method

.method private configureWebViewWebSettings(Landroid/webkit/WebView;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 207
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 209
    return-void
.end method

.method private getBannerAsOverlayLayoutParams(Lcom/fusepowered/as/model/vast/Banner;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .prologue
    .line 310
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/Banner;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/fusepowered/as/utils/DisplayUtils;->convertDipToPx(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/Banner;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fusepowered/as/utils/DisplayUtils;->convertDipToPx(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 317
    return-object v0
.end method

.method private getLinearWebViewEndCardLayoutParams(Lcom/fusepowered/as/model/vast/MediaFile;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .prologue
    .line 452
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/MediaFile;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/MediaFile;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 453
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/MediaFile;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertDipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 454
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/MediaFile;->getWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/fusepowered/as/utils/DisplayUtils;->convertDipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 456
    iget-object v3, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 460
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 461
    int-to-float v1, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 464
    iget-object v3, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 466
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 467
    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 483
    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v2

    .line 471
    :cond_1
    iget-object v3, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 473
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 474
    int-to-float v1, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    .line 476
    :cond_2
    iget-object v3, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 478
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 479
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method private registerVideoPlayerListeners()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    new-instance v1, Lcom/fusepowered/as/view/vastplayer/VastPlayer$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer$2;-><init>(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/VastVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 228
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    new-instance v1, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;-><init>(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/VastVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 278
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    new-instance v1, Lcom/fusepowered/as/view/vastplayer/VastPlayer$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer$4;-><init>(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/VastVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 291
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    new-instance v1, Lcom/fusepowered/as/view/vastplayer/VastPlayer$5;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer$5;-><init>(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/VastVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 306
    return-void
.end method

.method private showNextLinearCreative()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 354
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->videoTimerMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->killTimer:Z

    if-eqz v0, :cond_0

    .line 356
    monitor-exit v1

    .line 449
    :goto_0
    return-void

    .line 357
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentAd:Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentAd:Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->getLinearCreatives()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->adsToPlay:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 362
    iget-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->atLeastOneAdPlayed:Z

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastPlayerListener:Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;->onSuccess()V

    .line 368
    :goto_1
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->videoTimerMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->killTimer:Z

    .line 370
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 357
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastPlayerListener:Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

    const-string v1, "No ads played"

    invoke-interface {v0, v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;->onFailure(Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentAd:Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentAd:Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->getLinearCreatives()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 377
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->adsToPlay:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentAd:Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentAd:Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->getLinearCreatives()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 381
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->showNextLinearCreative()V

    goto :goto_0

    .line 385
    :cond_6
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentAd:Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->getLinearCreatives()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/LinearCreative;

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    .line 387
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/LinearCreative;->getMediaFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/MediaFile;

    .line 390
    sget-object v3, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->supportedMimeTypesSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/MediaFile;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 398
    :goto_2
    if-nez v0, :cond_8

    .line 399
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find a playable mimetype in MediaFiles for this Creative.  Supported are: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->supportedMimeTypesSet:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->showNextLinearCreative()V

    goto/16 :goto_0

    .line 404
    :cond_8
    const-string v1, "text/html"

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/MediaFile;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 406
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-virtual {v1, v5}, Lcom/fusepowered/as/view/component/VastVideoView;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->nonLinearWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 409
    invoke-direct {p0, v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->getLinearWebViewEndCardLayoutParams(Lcom/fusepowered/as/model/vast/MediaFile;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/MediaFile;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    goto/16 :goto_0

    .line 421
    :cond_9
    new-instance v1, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    .line 422
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->START:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 423
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->FIRST_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 424
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->MID_POINT:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 425
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->THIRD_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 426
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->PROGRESS:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 428
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->START:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 429
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->FIRST_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 430
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->MID_POINT:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 431
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->THIRD_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 432
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->PROGRESS:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allImpressionEvents:Ljava/util/List;

    .line 438
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allImpressionEvents:Ljava/util/List;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentAd:Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    invoke-virtual {v2}, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->getInlineAd()Lcom/fusepowered/as/model/vast/InLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/InLine;->getImpressionUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 439
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->allImpressionEvents:Ljava/util/List;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperImpressionUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 441
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->nonLinearWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->linearWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/MediaFile;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/as/view/component/VastVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 445
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VastVideoView;->bringToFront()V

    .line 446
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VastVideoView;->start()V

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private startVideoTimer()V
    .locals 2

    .prologue
    .line 492
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;-><init>(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 562
    return-void
.end method

.method private stillPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 566
    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-virtual {v1}, Lcom/fusepowered/as/view/component/VastVideoView;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/as/view/component/VastVideoView;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ge v1, v2, :cond_0

    .line 574
    :goto_0
    return v0

    .line 570
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    if-eqz v0, :cond_0

    .line 616
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->videoTimerMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 617
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->killTimer:Z

    .line 618
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->CLOSE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 620
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->CLOSE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 623
    :cond_0
    return-void

    .line 618
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAd()Lcom/fusepowered/as/model/ad/VASTProviderAd;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    return-object v0
.end method

.method public getCurrentCreative()Lcom/fusepowered/as/model/vast/LinearCreative;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    return-object v0
.end method

.method public getMasterFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    if-eqz v0, :cond_0

    .line 628
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->videoTimerMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 629
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->killTimer:Z

    .line 630
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->masterFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 636
    :cond_0
    return-void

    .line 630
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->videoTimerMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->killTimer:Z

    .line 588
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VastVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currVidPos:I

    .line 590
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VastVideoView;->pause()V

    .line 591
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->PAUSE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 592
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->PAUSE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 596
    :cond_0
    return-void

    .line 588
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->showNextLinearCreative()V

    .line 581
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 600
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    if-eqz v0, :cond_0

    .line 601
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->videoTimerMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->killTimer:Z

    .line 603
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    iget v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currVidPos:I

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/VastVideoView;->seekTo(I)V

    .line 605
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->vastVideoView:Lcom/fusepowered/as/view/component/VastVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VastVideoView;->start()V

    .line 606
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->startVideoTimer()V

    .line 607
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->currentCreative:Lcom/fusepowered/as/model/vast/LinearCreative;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->RESUME:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 608
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->RESUME:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 611
    :cond_0
    return-void

    .line 603
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
