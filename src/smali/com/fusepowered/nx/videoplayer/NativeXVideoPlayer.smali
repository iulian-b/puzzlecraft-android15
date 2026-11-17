.class public final Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
.super Ljava/lang/Object;
.source "NativeXVideoPlayer.java"

# interfaces
.implements Lcom/fusepowered/nx/videoplayer/VideoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;,
        Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;,
        Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;
    }
.end annotation


# static fields
.field private static final LOGGING_TAG:Ljava/lang/String; = "NativeXVideoPlayer"

.field private static sInstance:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoggingEnabled:Z

.field private mIsPlayInProgress:Z

.field private volatile mIsSkipRequestedButNotAvailable:Z

.field private volatile mIsVideoBeingDisplayed:Z

.field private final mLock:Ljava/lang/Object;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mMediaPlayerListener:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;

.field private mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

.field private mPreparationState:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

.field private mVideoDisplayer:Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

.field private mVideoDurationMilliseconds:I

.field private mVideoListener:Lcom/fusepowered/nx/videoplayer/VideoListener;

.field private mVideoUri:Ljava/lang/String;

.field private mVideoWidthHeightProportion:F


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->NONE:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    iput-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mPreparationState:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    .line 27
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsVideoBeingDisplayed:Z

    .line 28
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsPlayInProgress:Z

    .line 30
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsLoggingEnabled:Z

    .line 36
    new-instance v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;-><init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayerListener:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoWidthHeightProportion:F

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDurationMilliseconds:I

    .line 39
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsSkipRequestedButNotAvailable:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mLock:Ljava/lang/Object;

    .line 286
    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoListener:Lcom/fusepowered/nx/videoplayer/VideoListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->resetToIdle()V

    return-void
.end method

.method static synthetic access$1500(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsSkipRequestedButNotAvailable:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsSkipRequestedButNotAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mPreparationState:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
    .param p1, "x1"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mPreparationState:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)F
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoWidthHeightProportion:F

    return v0
.end method

.method static synthetic access$502(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
    .param p1, "x1"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoWidthHeightProportion:F

    return p1
.end method

.method static synthetic access$600(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDurationMilliseconds:I

    return v0
.end method

.method static synthetic access$602(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDurationMilliseconds:I

    return p1
.end method

.method static synthetic access$700(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsVideoBeingDisplayed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDisplayer:Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsPlayInProgress:Z

    return v0
.end method

.method private cleanUpOptions(Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;)V
    .locals 5
    .param p1, "options"    # Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 326
    iget v0, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlIconMaxDimensionInDensityIndependentPixels:I

    if-ge v0, v2, :cond_0

    .line 327
    iput v2, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlIconMaxDimensionInDensityIndependentPixels:I

    .line 330
    :cond_0
    iget v0, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsDistanceFromScreenEdgeInDensityIndependentPixels:I

    if-gez v0, :cond_1

    .line 331
    iput v1, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsDistanceFromScreenEdgeInDensityIndependentPixels:I

    .line 334
    :cond_1
    iget v0, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsAlpha:I

    if-gez v0, :cond_5

    .line 335
    iput v1, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsAlpha:I

    .line 340
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownMessageFormat:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownMessageFormat:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->isValidFormatStringForOneInteger(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 341
    iput-object v4, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownMessageFormat:Ljava/lang/String;

    .line 344
    :cond_3
    iget-object v0, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->specialSkipCountdownMessageFormat:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->specialSkipCountdownMessageFormat:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->isValidFormatStringForOneInteger(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 345
    iput-object v4, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->specialSkipCountdownMessageFormat:Ljava/lang/String;

    .line 347
    :cond_4
    return-void

    .line 336
    :cond_5
    iget v0, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsAlpha:I

    if-le v0, v3, :cond_2

    .line 337
    iput v3, p1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsAlpha:I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->sInstance:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-direct {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->sInstance:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .line 54
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->sInstance:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isValidFormatStringForOneInteger(Ljava/lang/String;)Z
    .locals 7
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 351
    const/4 v1, 0x1

    .line 355
    .local v1, "testInt":I
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return v2

    .line 357
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/util/IllegalFormatException;
    move v2, v3

    .line 358
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "NativeXVideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    return-void
.end method

.method public static declared-synchronized release()V
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->sInstance:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->sInstance:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit v1

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resetToIdle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 289
    const-string v0, "resetToIdle called.."

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 292
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 293
    iput-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDisplayer:Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDisplayer:Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    invoke-interface {v0}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->close()V

    .line 298
    iput-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDisplayer:Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    .line 301
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->NONE:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    iput-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mPreparationState:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    .line 302
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsVideoBeingDisplayed:Z

    .line 303
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsPlayInProgress:Z

    .line 304
    iput-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    .line 305
    iput-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    .line 306
    iput-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mContext:Landroid/content/Context;

    .line 307
    iput-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoListener:Lcom/fusepowered/nx/videoplayer/VideoListener;

    .line 308
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoWidthHeightProportion:F

    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDurationMilliseconds:I

    .line 310
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsSkipRequestedButNotAvailable:Z

    .line 311
    return-void
.end method


# virtual methods
.method activityFinishing(Lcom/fusepowered/nx/videoplayer/VideoDisplayer;)V
    .locals 2
    .param p1, "videoDisplayer"    # Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    .prologue
    .line 241
    const-string v0, "activityFinishing called"

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDisplayer:Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDisplayer:Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    if-ne v0, p1, :cond_0

    .line 245
    const-string v0, "activity finishing, closing video early"

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoListener:Lcom/fusepowered/nx/videoplayer/VideoListener;

    invoke-interface {v0}, Lcom/fusepowered/nx/videoplayer/VideoListener;->onClosedEarly()V

    .line 247
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->resetToIdle()V

    .line 249
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const-string v0, "activityFinishing completed"

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 252
    return-void

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "cancel called, resetting to idle"

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->resetToIdle()V

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    const-string v0, "cancel call finished"

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getOptions()Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    return-object v0
.end method

.method log(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "NativeXVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :cond_0
    return-void
.end method

.method mute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "muting media player..."

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 259
    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;Landroid/content/Context;Lcom/fusepowered/nx/videoplayer/VideoListener;Z)Z
    .locals 7
    .param p1, "videoUri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "videoListener"    # Lcom/fusepowered/nx/videoplayer/VideoListener;
    .param p5, "isLoggingEnabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    iput-boolean p5, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsLoggingEnabled:Z

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playing video: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 150
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    :try_start_0
    iget-object v5, p2, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->skipButtonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->resetToIdle()V

    .line 152
    const-string v2, "video, options, context, videoListener or skip button icon are null; exiting!"

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 153
    monitor-exit v4

    move v2, v3

    .line 189
    :goto_0
    return v2

    .line 156
    :cond_1
    invoke-direct {p0, p2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->cleanUpOptions(Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;)V

    .line 159
    iget-object v5, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mPreparationState:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    sget-object v6, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->NONE:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 160
    :cond_2
    invoke-virtual {p0, p1, p5}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->prepare(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 161
    const-string v2, "prepare failed (in play), exiting!"

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 162
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 166
    :cond_3
    iput-object p2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    .line 167
    iput-object p3, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mContext:Landroid/content/Context;

    .line 168
    iput-object p4, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoListener:Lcom/fusepowered/nx/videoplayer/VideoListener;

    .line 171
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mContext:Landroid/content/Context;

    const-class v6, Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :try_start_1
    const-string v5, "Starting video activity.."

    invoke-direct {p0, v5}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 177
    iget-object v5, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsPlayInProgress:Z

    .line 188
    const-string v3, "play finished successfully; play in progress.."

    invoke-direct {p0, v3}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    :try_start_3
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->resetToIdle()V

    .line 181
    const-string v2, "Activity not found exception caught, exiting..."

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 182
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 184
    .end local v0    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public prepare(Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "videoUri"    # Ljava/lang/String;
    .param p2, "isLoggingEnabled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare called with uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 71
    iput-boolean p2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsLoggingEnabled:Z

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null videoUri"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_0
    const/4 v1, 0x0

    .line 79
    .local v1, "exception":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 82
    :try_start_0
    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    const-string v6, "duplicate video uri found, exiting.."

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 84
    monitor-exit v5

    .line 139
    :cond_1
    :goto_0
    return v4

    .line 88
    :cond_2
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->resetToIdle()V

    .line 89
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    .line 90
    const-string v6, "creating new video player"

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 91
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 92
    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 93
    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayerListener:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 94
    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayerListener:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayerListener:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const/4 v2, 0x0

    .line 99
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "creating new file stream from file source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 101
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v3

    .line 114
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v6, "finally block for input stream..."

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    if-eqz v2, :cond_3

    .line 117
    :try_start_4
    const-string v6, "closing fileInputStream"

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    :cond_3
    :goto_2
    if-nez v1, :cond_8

    .line 127
    :try_start_5
    const-string v6, "setting state to preparing"

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 128
    sget-object v6, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->PREPARING:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    iput-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mPreparationState:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    .line 129
    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 135
    :goto_3
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    const-string v5, "prepare finished"

    invoke-direct {p0, v5}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 139
    if-eqz v1, :cond_1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 104
    :cond_4
    :try_start_6
    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 105
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting data source for media player: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 106
    iget-object v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    move-object v1, v0

    .line 114
    :try_start_7
    const-string v6, "finally block for input stream..."

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 115
    if-eqz v2, :cond_3

    .line 117
    :try_start_8
    const-string v6, "closing fileInputStream"

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 119
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    :try_start_9
    const-string v6, "Error in closing file input stream."

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v4

    .line 109
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_6
    :try_start_a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid video URI supplied."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 111
    :catch_2
    move-exception v0

    goto :goto_4

    .line 119
    :catch_3
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_b
    const-string v6, "Error in closing file input stream."

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_5
    const-string v6, "finally block for input stream..."

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 115
    if-eqz v2, :cond_7

    .line 117
    :try_start_c
    const-string v6, "closing fileInputStream"

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 122
    :cond_7
    :goto_6
    :try_start_d
    throw v4

    .line 119
    :catch_4
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "Error in closing file input stream."

    invoke-direct {p0, v6}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/Exception;)V

    .line 133
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->resetToIdle()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    .line 114
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 111
    :catch_5
    move-exception v0

    goto :goto_4

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_4

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method setVideoDisplayer(Lcom/fusepowered/nx/videoplayer/VideoDisplayer;)V
    .locals 0
    .param p1, "videoDisplayer"    # Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDisplayer:Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    .line 212
    return-void
.end method

.method skipRequestedButNotAvailable()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsSkipRequestedButNotAvailable:Z

    .line 270
    return-void
.end method

.method surfaceCreated(Landroid/view/SurfaceHolder;Lcom/fusepowered/nx/videoplayer/VideoDisplayer;)V
    .locals 4
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "videoDisplayer"    # Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    .prologue
    .line 216
    const-string v0, "surfaceCreated called"

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDisplayer:Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mPreparationState:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    sget-object v2, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->NONE:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    if-ne v0, v2, :cond_1

    .line 220
    :cond_0
    const-string v0, "videoDisplayer came from a previous activity, or video is not prepared! exiting.."

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 221
    monitor-exit v1

    .line 237
    :goto_0
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mIsVideoBeingDisplayed:Z

    .line 225
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 227
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mPreparationState:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    sget-object v2, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->PREPARED:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    if-ne v0, v2, :cond_2

    .line 228
    const-string v0, "video prepared, initializing and starting video..."

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoDisplayer:Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    iget v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mVideoWidthHeightProportion:F

    invoke-interface {v0, v2}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->initializeVideo(F)V

    .line 230
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 233
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;

    iget-object v3, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {v2, p0, v3}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;-><init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Landroid/media/MediaPlayer;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    const-string v0, "surfaceCreated finished successfully"

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method unMute()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 262
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "un-muting video player..."

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 266
    :cond_0
    return-void
.end method
