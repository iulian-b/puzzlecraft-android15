.class public Lcom/fusepowered/vast/activity/VASTActivity;
.super Landroid/app/Activity;
.source "VASTActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final QUARTILE_TIMER_INTERVAL:J = 0xfaL

.field private static TAG:Ljava/lang/String; = null

.field private static final TOOLBAR_HIDE_DELAY:J = 0xbb8L

.field private static final VIDEO_PROGRESS_TIMER_INTERVAL:J = 0x21L

.field public static displayMetrics:Landroid/util/DisplayMetrics;


# instance fields
.field private mCurrentOrientation:I

.field private mCurrentVideoPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mIsCompleted:Z

.field private mIsPlayBackError:Z

.field private mIsProcessedImpressions:Z

.field private mIsRewarded:Z

.field private mIsVideoPaused:Z

.field private final mMaxProgressTrackingPoints:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOverlay:Landroid/widget/RelativeLayout;

.field private mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

.field private mPostroll:Lcom/fusepowered/vast/activity/Postroll;

.field private mPostrollFlag:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mQuartile:I

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSkipOffset:J

.field private mSkipOffsetRelative:Z

.field private mSkipOffsetServer:J

.field private mStartVideoProgressTimer:Ljava/util/Timer;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mToolBarTimer:Ljava/util/Timer;

.field private mTrackingEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/vast/model/VASTTracking;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackingEventTimer:Ljava/util/Timer;

.field public mVastModel:Lcom/fusepowered/vast/model/VASTModel;

.field private mVersion:Ljava/lang/String;

.field private mVideoDuration:I

.field private mVideoHeight:I

.field private mVideoProgressTracker:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoWidth:I

.field private rekt:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "VASTActivity"

    sput-object v0, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;

    .line 76
    const/16 v0, 0x14

    iput v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMaxProgressTrackingPoints:I

    .line 82
    iput-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    .line 97
    iput-boolean v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsVideoPaused:Z

    .line 98
    iput-boolean v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsPlayBackError:Z

    .line 99
    iput-boolean v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    .line 100
    iput-boolean v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsCompleted:Z

    .line 102
    iput v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mQuartile:I

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/vast/activity/VASTActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->overlayClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/vast/activity/VASTActivity;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->rekt:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fusepowered/vast/activity/VASTActivity;Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;
    .param p1, "x1"    # Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/fusepowered/vast/activity/VASTActivity;->processEvent(Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V

    return-void
.end method

.method static synthetic access$102(Lcom/fusepowered/vast/activity/VASTActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->rekt:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fusepowered/vast/activity/VASTActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->stopTrackingEventTimer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/fusepowered/vast/activity/VASTActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fusepowered/vast/activity/VASTActivity;Lcom/fusepowered/vast/model/VASTTracking;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;
    .param p1, "x1"    # Lcom/fusepowered/vast/model/VASTTracking;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/fusepowered/vast/activity/VASTActivity;->processProgressEvent(Lcom/fusepowered/vast/model/VASTTracking;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/fusepowered/vast/activity/VASTActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/vast/activity/VASTActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->infoClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/fusepowered/vast/activity/VASTActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->skipClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/fusepowered/vast/activity/VASTActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->closeClicked()V

    return-void
.end method

.method static synthetic access$500(Lcom/fusepowered/vast/activity/VASTActivity;)Lcom/fusepowered/vast/activity/PlayerControls;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fusepowered/vast/activity/VASTActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fusepowered/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fusepowered/vast/activity/VASTActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mQuartile:I

    return v0
.end method

.method static synthetic access$908(Lcom/fusepowered/vast/activity/VASTActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/fusepowered/vast/activity/VASTActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mQuartile:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mQuartile:I

    return v0
.end method

.method private activateButtons(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 407
    if-eqz p1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/activity/PlayerControls;->setVisibility(I)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/activity/PlayerControls;->setVisibility(I)V

    goto :goto_0
.end method

.method private calculateAspectRatio()V
    .locals 14

    .prologue
    .line 611
    iget v7, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoWidth:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoHeight:I

    if-nez v7, :cond_1

    .line 612
    :cond_0
    sget-object v7, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v10, "mVideoWidth or mVideoHeight is 0, skipping calculateAspectRatio"

    invoke-static {v7, v10}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :goto_0
    return-void

    .line 616
    :cond_1
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget v7, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mScreenWidth:I

    int-to-double v12, v7

    mul-double/2addr v10, v12

    iget v7, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoWidth:I

    int-to-double v12, v7

    div-double v8, v10, v12

    .line 617
    .local v8, "widthRatio":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget v7, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mScreenHeight:I

    int-to-double v12, v7

    mul-double/2addr v10, v12

    iget v7, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoHeight:I

    int-to-double v12, v7

    div-double v0, v10, v12

    .line 619
    .local v0, "heightRatio":D
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 621
    .local v4, "scale":D
    iget v7, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoWidth:I

    int-to-double v10, v7

    mul-double/2addr v10, v4

    double-to-int v6, v10

    .line 622
    .local v6, "surfaceWidth":I
    iget v7, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoHeight:I

    int-to-double v10, v7

    mul-double/2addr v10, v4

    double-to-int v3, v10

    .line 624
    .local v3, "surfaceHeight":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 626
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 627
    iget-object v7, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iget-object v7, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v6, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 631
    sget-object v7, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " screen size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mScreenWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mScreenHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    sget-object v7, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " video size:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    sget-object v7, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "surface size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private cleanActivityUp()V
    .locals 2

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->cleanUpMediaPlayer()V

    .line 638
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->stopTrackingEventTimer()V

    .line 639
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->stopVideoProgressTimer()V

    .line 640
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->stopToolBarTimer()V

    .line 641
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/activity/PlayerControls;->setVisibility(I)V

    .line 644
    :cond_0
    return-void
.end method

.method private cleanUpMediaPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 654
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 655
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 656
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 657
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 658
    iput-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 660
    :cond_1
    return-void
.end method

.method private closeClicked()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 453
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsPlayBackError:Z

    if-nez v0, :cond_0

    .line 454
    sget-object v0, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->close:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->processEvent(Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 457
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->finishVAST()V

    .line 460
    return-void
.end method

.method private createMediaPlayer()V
    .locals 2

    .prologue
    .line 257
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 258
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 259
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 260
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 261
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 262
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 263
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 264
    return-void
.end method

.method private createOverlay(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 267
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    .line 268
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 270
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 271
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fusepowered/vast/activity/VASTActivity$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/vast/activity/VASTActivity$1;-><init>(Lcom/fusepowered/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 279
    return-void
.end method

.method private createPlayerControls()V
    .locals 8

    .prologue
    .line 282
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 288
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->resolveSkipOffset()V

    .line 290
    new-instance v1, Lcom/fusepowered/vast/activity/PlayerControls;

    invoke-direct {v1, p0}, Lcom/fusepowered/vast/activity/PlayerControls;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    .line 291
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v1, v2}, Lcom/fusepowered/vast/activity/PlayerControls;->setVastModel(Lcom/fusepowered/vast/model/VASTModel;)V

    .line 293
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    iget-wide v4, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffset:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostrollFlag:Z

    invoke-virtual {v2, v1, v3}, Lcom/fusepowered/vast/activity/PlayerControls;->init(ZZ)V

    .line 294
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    invoke-virtual {v1, v0}, Lcom/fusepowered/vast/activity/PlayerControls;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/fusepowered/vast/activity/PlayerControls;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    invoke-virtual {v1}, Lcom/fusepowered/vast/activity/PlayerControls;->getLearnText()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    invoke-virtual {v1}, Lcom/fusepowered/vast/activity/PlayerControls;->getLearnText()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/fusepowered/vast/activity/VASTActivity$2;

    invoke-direct {v2, p0}, Lcom/fusepowered/vast/activity/VASTActivity$2;-><init>(Lcom/fusepowered/vast/activity/VASTActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    new-instance v2, Lcom/fusepowered/vast/activity/VASTActivity$3;

    invoke-direct {v2, p0}, Lcom/fusepowered/vast/activity/VASTActivity$3;-><init>(Lcom/fusepowered/vast/activity/VASTActivity;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/vast/activity/PlayerControls;->setSkipButtonListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 335
    return-void

    .line 293
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createPostroll()V
    .locals 2

    .prologue
    .line 359
    new-instance v0, Lcom/fusepowered/vast/activity/Postroll;

    invoke-direct {v0, p0}, Lcom/fusepowered/vast/activity/Postroll;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostroll:Lcom/fusepowered/vast/activity/Postroll;

    .line 360
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostroll:Lcom/fusepowered/vast/activity/Postroll;

    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/activity/Postroll;->setVastModel(Lcom/fusepowered/vast/model/VASTModel;)V

    .line 361
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostroll:Lcom/fusepowered/vast/activity/Postroll;

    invoke-virtual {v0}, Lcom/fusepowered/vast/activity/Postroll;->init()V

    .line 362
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostroll:Lcom/fusepowered/vast/activity/Postroll;

    invoke-virtual {v0}, Lcom/fusepowered/vast/activity/Postroll;->getLearnMoreButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/vast/activity/VASTActivity$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/vast/activity/VASTActivity$4;-><init>(Lcom/fusepowered/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 380
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostroll:Lcom/fusepowered/vast/activity/Postroll;

    invoke-virtual {v0}, Lcom/fusepowered/vast/activity/Postroll;->getXButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/vast/activity/VASTActivity$5;

    invoke-direct {v1, p0}, Lcom/fusepowered/vast/activity/VASTActivity$5;-><init>(Lcom/fusepowered/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostroll:Lcom/fusepowered/vast/activity/Postroll;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/activity/Postroll;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostroll:Lcom/fusepowered/vast/activity/Postroll;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 388
    return-void
.end method

.method private createProgressBar()V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 224
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 228
    return-void
.end method

.method private createRootLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 239
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 240
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 242
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 243
    return-void
.end method

.method private createSurface(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 247
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 248
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 251
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 252
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 253
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 254
    return-void
.end method

.method private createUIComponents()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 197
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->createRootLayout(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->createSurface(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 203
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->createMediaPlayer()V

    .line 204
    invoke-direct {p0, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->createOverlay(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 207
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->createPlayerControls()V

    .line 208
    iget-boolean v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostrollFlag:Z

    if-eqz v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->createPostroll()V

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/fusepowered/vast/activity/VASTActivity;->setContentView(Landroid/view/View;)V

    .line 214
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->createProgressBar()V

    .line 215
    return-void
.end method

.method private finishVAST()V
    .locals 2

    .prologue
    .line 982
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 984
    :try_start_0
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastDismiss()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :goto_0
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/VASTPlayer;->setLoaded(Z)V

    .line 989
    invoke-virtual {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->finish()V

    .line 990
    return-void

    .line 985
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private fireUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 734
    if-eqz p2, :cond_0

    .line 736
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    invoke-static {p1, p2, v0}, Lcom/fusepowered/vast/util/HttpTools;->httpGetURL(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/vast/VASTPlayer;)V

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    sget-object v0, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "\turl is null"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fireUrls(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 747
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 749
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    invoke-static {p1, v1, v2}, Lcom/fusepowered/vast/util/HttpTools;->httpGetURL(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/vast/VASTPlayer;)V

    goto :goto_0

    .line 752
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v3, "\turl list is null"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_1
    return-void
.end method

.method private hideProgressBar()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    return-void
.end method

.method private hideTitleStatusBars()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->requestWindowFeature(I)Z

    .line 192
    invoke-virtual {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 194
    return-void
.end method

.method private infoClicked()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->activateButtons(Z)V

    .line 394
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->processClickThroughEvent()V

    .line 395
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsCompleted:Z

    if-nez v0, :cond_0

    .line 396
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastComplete()V

    .line 397
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsRewarded:Z

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastRewardedVideoComplete()V

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->closeClicked()V

    .line 402
    return-void
.end method

.method private overlayClicked()V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->startToolBarTimer()V

    .line 721
    return-void
.end method

.method private processClickThroughEvent()V
    .locals 12

    .prologue
    .line 417
    sget-object v5, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v5, v5, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v5, :cond_0

    .line 418
    sget-object v5, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v5, v5, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v5}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastClick()V

    .line 421
    :cond_0
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v5}, Lcom/fusepowered/vast/model/VASTModel;->getVideoClicks()Lcom/fusepowered/vast/model/VideoClicks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/vast/model/VideoClicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "clickThroughUrl":Ljava/lang/String;
    sget-object v5, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clickThrough url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v5}, Lcom/fusepowered/vast/model/VASTModel;->getVideoClicks()Lcom/fusepowered/vast/model/VideoClicks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/vast/model/VideoClicks;->getClickTracking()Ljava/util/List;

    move-result-object v4

    .line 427
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "click"

    invoke-direct {p0, v5, v4}, Lcom/fusepowered/vast/activity/VASTActivity;->fireUrls(Ljava/lang/String;Ljava/util/List;)V

    .line 431
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 432
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 433
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 434
    .local v2, "resolvable":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_2

    .line 435
    sget-object v5, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v6, "Clickthrough error occured, uri unresolvable"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget v5, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    int-to-double v6, v5

    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-double v8, v5

    const-wide v10, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_1

    .line 437
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 439
    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/fusepowered/vast/activity/VASTActivity;->activateButtons(Z)V

    .line 447
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvable":Landroid/content/pm/ResolveInfo;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 442
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "resolvable":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/fusepowered/vast/activity/VASTActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvable":Landroid/content/pm/ResolveInfo;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private processErrorEvent()V
    .locals 2

    .prologue
    .line 678
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/fusepowered/vast/model/VASTModel;->getErrorUrl()Ljava/util/List;

    move-result-object v0

    .line 680
    .local v0, "errorUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "error"

    invoke-direct {p0, v1, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->fireUrls(Ljava/lang/String;Ljava/util/List;)V

    .line 681
    return-void
.end method

.method private processEvent(Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V
    .locals 5
    .param p1, "eventName"    # Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    .prologue
    .line 955
    iget-object v4, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mTrackingEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 957
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTTracking;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 967
    :goto_0
    return-void

    .line 962
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/vast/model/VASTTracking;

    .line 963
    .local v3, "v":Lcom/fusepowered/vast/model/VASTTracking;
    invoke-virtual {v3}, Lcom/fusepowered/vast/model/VASTTracking;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 966
    .end local v3    # "v":Lcom/fusepowered/vast/model/VASTTracking;
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/fusepowered/vast/activity/VASTActivity;->fireUrls(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private processImpressions()V
    .locals 2

    .prologue
    .line 726
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    .line 727
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/fusepowered/vast/model/VASTModel;->getImpressions()Ljava/util/List;

    move-result-object v0

    .line 728
    .local v0, "impressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "impression"

    invoke-direct {p0, v1, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->fireUrls(Ljava/lang/String;Ljava/util/List;)V

    .line 729
    return-void
.end method

.method private processPauseSteps()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsVideoPaused:Z

    .line 484
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 485
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->stopVideoProgressTimer()V

    .line 486
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->stopToolBarTimer()V

    .line 487
    return-void
.end method

.method private processPlaySteps()V
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsVideoPaused:Z

    .line 493
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 494
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->startToolBarTimer()V

    .line 495
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->startVideoProgressTimer()V

    .line 496
    return-void
.end method

.method private processProgressEvent(Lcom/fusepowered/vast/model/VASTTracking;)V
    .locals 2
    .param p1, "event"    # Lcom/fusepowered/vast/model/VASTTracking;

    .prologue
    .line 975
    if-nez p1, :cond_0

    .line 979
    :goto_0
    return-void

    .line 978
    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/vast/model/VASTTracking;->getEvent()Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/vast/model/VASTTracking;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/vast/activity/VASTActivity;->fireUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resolveSkipOffset()V
    .locals 6

    .prologue
    .line 340
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVersion:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/fusepowered/vast/model/VASTModel;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "skipOffsetValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 345
    :cond_0
    iget-wide v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffsetServer:J

    iput-wide v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffset:J

    .line 355
    .end local v0    # "skipOffsetValue":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipOffset:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffset:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 346
    .restart local v0    # "skipOffsetValue":Ljava/lang/String;
    :cond_1
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffsetRelative:Z

    .line 348
    const/4 v1, 0x0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffset:J

    goto :goto_0

    .line 350
    :cond_2
    invoke-static {v0}, Lcom/fusepowered/vast/util/Assets;->parseOffset(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffset:J

    goto :goto_0

    .line 353
    .end local v0    # "skipOffsetValue":Ljava/lang/String;
    :cond_3
    iget-wide v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffsetServer:J

    iput-wide v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffset:J

    goto :goto_0
.end method

.method private showPostroll()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/activity/PlayerControls;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostroll:Lcom/fusepowered/vast/activity/Postroll;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/activity/Postroll;->setVisibility(I)V

    .line 717
    return-void
.end method

.method private showProgressBar()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    return-void
.end method

.method private skipClicked()V
    .locals 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostrollFlag:Z

    if-eqz v0, :cond_1

    .line 467
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 468
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->showPostroll()V

    .line 473
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVersion:Ljava/lang/String;

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->skip:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->processEvent(Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 476
    :cond_0
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastSkip()V

    .line 479
    return-void

    .line 470
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->finishVAST()V

    goto :goto_0
.end method

.method private startToolBarTimer()V
    .locals 4

    .prologue
    .line 760
    iget v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mQuartile:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->stopToolBarTimer()V

    .line 766
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mToolBarTimer:Ljava/util/Timer;

    .line 767
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mToolBarTimer:Ljava/util/Timer;

    new-instance v1, Lcom/fusepowered/vast/activity/VASTActivity$6;

    invoke-direct {v1, p0}, Lcom/fusepowered/vast/activity/VASTActivity$6;-><init>(Lcom/fusepowered/vast/activity/VASTActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 778
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/activity/PlayerControls;->setVisibility(I)V

    .line 781
    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsVideoPaused:Z

    if-eqz v0, :cond_0

    .line 782
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->activateButtons(Z)V

    goto :goto_0
.end method

.method private startTrackingEventTimer()V
    .locals 11

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->stopTrackingEventTimer()V

    .line 798
    iget-boolean v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsCompleted:Z

    if-eqz v2, :cond_0

    .line 880
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v10

    .line 806
    .local v10, "videoDuration":I
    const/4 v9, 0x0

    .line 808
    .local v9, "eventsTemp":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTTracking;>;"
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mTrackingEventMap:Ljava/util/HashMap;

    sget-object v3, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->progress:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_1
    move-object v8, v9

    .line 814
    .local v8, "events":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTTracking;>;"
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    .line 815
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    new-instance v3, Lcom/fusepowered/vast/activity/VASTActivity$7;

    invoke-direct {v3, p0, v10, v8}, Lcom/fusepowered/vast/activity/VASTActivity$7;-><init>(Lcom/fusepowered/vast/activity/VASTActivity;ILjava/util/List;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 809
    .end local v8    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTTracking;>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private startVideoProgressTimer()V
    .locals 6

    .prologue
    .line 892
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    .line 893
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;

    .line 895
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPlayerControls:Lcom/fusepowered/vast/activity/PlayerControls;

    iget v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoDuration:I

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffset:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fusepowered/vast/activity/PlayerControls;->setTimes(JJ)V

    .line 897
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    new-instance v1, Lcom/fusepowered/vast/activity/VASTActivity$8;

    invoke-direct {v1, p0}, Lcom/fusepowered/vast/activity/VASTActivity$8;-><init>(Lcom/fusepowered/vast/activity/VASTActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 941
    return-void
.end method

.method private stopToolBarTimer()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mToolBarTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mToolBarTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mToolBarTimer:Ljava/util/Timer;

    .line 792
    :cond_0
    return-void
.end method

.method private stopTrackingEventTimer()V
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    .line 887
    :cond_0
    return-void
.end method

.method private stopVideoProgressTimer()V
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 949
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 503
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsCompleted:Z

    if-nez v0, :cond_0

    .line 504
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastSkip()V

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->closeClicked()V

    .line 507
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 509
    :cond_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 694
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsPlayBackError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsCompleted:Z

    if-nez v0, :cond_0

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsCompleted:Z

    .line 696
    sget-object v0, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->complete:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lcom/fusepowered/vast/activity/VASTActivity;->processEvent(Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 698
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    .line 700
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastComplete()V

    .line 701
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsRewarded:Z

    if-eqz v0, :cond_0

    .line 702
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastRewardedVideoComplete()V

    .line 707
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostrollFlag:Z

    if-eqz v0, :cond_1

    .line 708
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->showPostroll()V

    .line 712
    :goto_0
    return-void

    .line 710
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->closeClicked()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "postroll"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mPostrollFlag:Z

    .line 120
    const-string v1, "skipOffset"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffsetServer:J

    .line 121
    const-string v1, "rewarded"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsRewarded:Z

    .line 122
    const-string v1, "com.nexage.android.vast.player.vastModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/vast/model/VASTModel;

    iput-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    .line 124
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    if-nez v1, :cond_0

    .line 125
    sget-object v1, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v2, "vastModel is null. Stopping activity."

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->finishVAST()V

    .line 140
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v1, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    if-nez v1, :cond_1

    .line 128
    sget-object v1, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v2, "currentPlayer is null. Stopping activity."

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->finishVAST()V

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->hideTitleStatusBars()V

    .line 132
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mHandler:Landroid/os/Handler;

    .line 133
    invoke-virtual {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sput-object v1, Lcom/fusepowered/vast/activity/VASTActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 134
    sget-object v1, Lcom/fusepowered/vast/activity/VASTActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mScreenWidth:I

    .line 135
    sget-object v1, Lcom/fusepowered/vast/activity/VASTActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mScreenHeight:I

    .line 136
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/fusepowered/vast/model/VASTModel;->getVastVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVersion:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/fusepowered/vast/model/VASTModel;->getTrackingEvents()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mTrackingEventMap:Ljava/util/HashMap;

    .line 138
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->createUIComponents()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 175
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 176
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    .line 664
    iput-boolean v3, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsPlayBackError:Z

    .line 665
    sget-object v0, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutting down Activity due to Media Player errors: WHAT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": EXTRA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    const/16 v1, 0x195

    invoke-interface {v0, v1}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    .line 669
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->processErrorEvent()V

    .line 670
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->closeClicked()V

    .line 672
    return v3
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->processPauseSteps()V

    .line 168
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    .line 170
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoDuration:I

    .line 570
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoWidth:I

    .line 571
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoHeight:I

    .line 574
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffsetRelative:Z

    if-eqz v0, :cond_0

    .line 575
    iget v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-wide v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffset:J

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mSkipOffset:J

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->calculateAspectRatio()V

    .line 580
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->hideProgressBar()V

    .line 582
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsVideoPaused:Z

    if-eqz v0, :cond_4

    .line 584
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 590
    :goto_0
    iget v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    if-lez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsVideoPaused:Z

    if-nez v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 597
    sget-object v0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastDisplay()V

    .line 598
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->startTrackingEventTimer()V

    .line 599
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->startToolBarTimer()V

    .line 602
    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->processImpressions()V

    .line 606
    :cond_3
    return-void

    .line 586
    :cond_4
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->startVideoProgressTimer()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 161
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 186
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 686
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 146
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 156
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 557
    iput p2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoWidth:I

    .line 558
    iput p3, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoHeight:I

    .line 559
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->calculateAspectRatio()V

    .line 560
    sget-object v0, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 548
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 515
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->createMediaPlayer()V

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->showProgressBar()V

    .line 519
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 521
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mIsVideoPaused:Z

    if-eqz v2, :cond_1

    .line 522
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->processPlaySteps()V

    .line 523
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->hideProgressBar()V

    .line 543
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v2}, Lcom/fusepowered/vast/model/VASTModel;->getPickedMediaFileLocation()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v2}, Lcom/fusepowered/vast/model/VASTModel;->getPickedMediaFileDeliveryType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "streaming"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/fusepowered/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    sget-object v2, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v2, v2, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    const/16 v3, 0x195

    invoke-interface {v2, v3}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    .line 541
    invoke-direct {p0}, Lcom/fusepowered/vast/activity/VASTActivity;->finishVAST()V

    goto :goto_0

    .line 535
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/fusepowered/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 553
    return-void
.end method
