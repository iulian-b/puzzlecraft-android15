.class public Lcom/fusepowered/l1/PlayerActivity;
.super Landroid/app/Activity;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/fusepowered/l1/UserIteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/PlayerActivity$3;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sHandler:Landroid/os/Handler;

.field private static sKeepAlive:Z

.field private static sPlayerActivity:Lcom/fusepowered/l1/PlayerActivity;

.field private static sRunnable:Ljava/lang/Runnable;


# instance fields
.field private mAccel:F

.field private mAccelCurrent:F

.field private mAccelLast:F

.field private mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

.field private mLayout:Landroid/widget/FrameLayout;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPlayerWebView:Lcom/fusepowered/l1/AdView;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStretchParam:Lcom/fusepowered/l1/VideoStretchOption;

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/fusepowered/l1/PlayerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/PlayerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/fusepowered/l1/PlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/l1/PlayerActivity$1;-><init>(Lcom/fusepowered/l1/PlayerActivity;)V

    iput-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/l1/PlayerActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/PlayerActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mAccelLast:F

    return v0
.end method

.method static synthetic access$002(Lcom/fusepowered/l1/PlayerActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/PlayerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/fusepowered/l1/PlayerActivity;->mAccelLast:F

    return p1
.end method

.method static synthetic access$100(Lcom/fusepowered/l1/PlayerActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/PlayerActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mAccelCurrent:F

    return v0
.end method

.method static synthetic access$102(Lcom/fusepowered/l1/PlayerActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/PlayerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/fusepowered/l1/PlayerActivity;->mAccelCurrent:F

    return p1
.end method

.method static synthetic access$200(Lcom/fusepowered/l1/PlayerActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/PlayerActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mAccel:F

    return v0
.end method

.method static synthetic access$202(Lcom/fusepowered/l1/PlayerActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/PlayerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/fusepowered/l1/PlayerActivity;->mAccel:F

    return p1
.end method

.method static synthetic access$300(Lcom/fusepowered/l1/PlayerActivity;)Lcom/fusepowered/l1/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/PlayerActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/l1/PlayerActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/PlayerActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->sRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private applyOrientationFromResponse()V
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->getAdParams()Lcom/fusepowered/l1/AdParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/l1/AdParams;->getAdOrientation()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "or":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/fusepowered/l1/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 138
    :cond_2
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/fusepowered/l1/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method static finishActivity()V
    .locals 3

    .prologue
    .line 311
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->sPlayerActivity:Lcom/fusepowered/l1/PlayerActivity;

    if-eqz v0, :cond_1

    .line 312
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "finish activity"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 313
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/fusepowered/l1/PlayerActivity;->sRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    :cond_0
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->sPlayerActivity:Lcom/fusepowered/l1/PlayerActivity;

    invoke-virtual {v0}, Lcom/fusepowered/l1/PlayerActivity;->finish()V

    .line 317
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/l1/PlayerActivity;->sPlayerActivity:Lcom/fusepowered/l1/PlayerActivity;

    .line 319
    :cond_1
    return-void
.end method

.method private initRunnable()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/fusepowered/l1/PlayerActivity;->sHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/fusepowered/l1/PlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/l1/PlayerActivity$2;-><init>(Lcom/fusepowered/l1/PlayerActivity;)V

    sput-object v0, Lcom/fusepowered/l1/PlayerActivity;->sRunnable:Ljava/lang/Runnable;

    .line 208
    return-void
.end method

.method private resizeVideo()V
    .locals 10

    .prologue
    .line 228
    iget-object v7, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v6

    .line 229
    .local v6, "videoWidth":I
    iget-object v7, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v5

    .line 231
    .local v5, "videoHeight":I
    invoke-virtual {p0}, Lcom/fusepowered/l1/PlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 232
    .local v4, "screenWidth":I
    invoke-virtual {p0}, Lcom/fusepowered/l1/PlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 234
    .local v3, "screenHeight":I
    iget-object v7, p0, Lcom/fusepowered/l1/PlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 235
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "blackLines":I
    const/4 v2, 0x0

    .line 240
    .local v2, "percent":F
    if-le v6, v5, :cond_1

    .line 241
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 242
    int-to-float v7, v5

    int-to-float v8, v6

    div-float/2addr v7, v8

    int-to-float v8, v4

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 244
    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v0, v3, v7

    .line 245
    mul-int/lit8 v7, v0, 0x64

    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/2addr v7, v8

    int-to-float v2, v7

    .line 253
    :goto_0
    sget-object v7, Lcom/fusepowered/l1/PlayerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "percent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v7, v8, v9}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 255
    sget-object v7, Lcom/fusepowered/l1/PlayerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stretch param  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/fusepowered/l1/PlayerActivity;->mStretchParam:Lcom/fusepowered/l1/VideoStretchOption;

    invoke-virtual {v9}, Lcom/fusepowered/l1/VideoStretchOption;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v7, v8, v9}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 256
    sget-object v7, Lcom/fusepowered/l1/PlayerActivity$3;->$SwitchMap$com$loopme$VideoStretchOption:[I

    iget-object v8, p0, Lcom/fusepowered/l1/PlayerActivity;->mStretchParam:Lcom/fusepowered/l1/VideoStretchOption;

    invoke-virtual {v8}, Lcom/fusepowered/l1/VideoStretchOption;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 273
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/fusepowered/l1/PlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    return-void

    .line 247
    :cond_1
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 248
    int-to-float v7, v6

    int-to-float v8, v5

    div-float/2addr v7, v8

    int-to-float v8, v3

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 250
    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v0, v4, v7

    .line 251
    mul-int/lit8 v7, v0, 0x64

    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/2addr v7, v8

    int-to-float v2, v7

    goto :goto_0

    .line 258
    :pswitch_0
    const/high16 v7, 0x41300000    # 11.0f

    cmpg-float v7, v2, v7

    if-gez v7, :cond_0

    .line 259
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 260
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    .line 265
    :pswitch_1
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 266
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setKeepAlive(Z)V
    .locals 0
    .param p0, "alive"    # Z

    .prologue
    .line 162
    sput-boolean p0, Lcom/fusepowered/l1/PlayerActivity;->sKeepAlive:Z

    .line 163
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onClosePressed()V
    .locals 0

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/fusepowered/l1/PlayerActivity;->finish()V

    .line 300
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 278
    iget-object v1, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v1}, Lcom/fusepowered/l1/AdView;->getCurrentVideoState()Lcom/fusepowered/l1/VideoState;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/VideoState;->COMPLETE:Lcom/fusepowered/l1/VideoState;

    if-eq v1, v2, :cond_0

    .line 279
    sget-object v1, Lcom/fusepowered/l1/PlayerActivity;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/fusepowered/l1/PlayerActivity;->sRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 281
    .local v0, "duration":I
    iget-object v1, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v1, v0}, Lcom/fusepowered/l1/AdView;->setVideoCurrentTime(I)V

    .line 282
    iget-object v1, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    sget-object v2, Lcom/fusepowered/l1/VideoState;->COMPLETE:Lcom/fusepowered/l1/VideoState;

    invoke-virtual {v1, v2}, Lcom/fusepowered/l1/AdView;->setVideoState(Lcom/fusepowered/l1/VideoState;)V

    .line 283
    iget-object v1, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v2, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v1, v2}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialVideoDidReachEnd(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 285
    .end local v0    # "duration":I
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v8, 0x0

    const v7, 0x411ce80a

    const/4 v6, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0, v6}, Lcom/fusepowered/l1/PlayerActivity;->requestWindowFeature(I)Z

    .line 78
    invoke-virtual {p0}, Lcom/fusepowered/l1/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 81
    sget-object v3, Lcom/fusepowered/l1/PlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCreate"

    sget-object v5, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v3, v4, v5}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 83
    invoke-static {}, Lcom/fusepowered/l1/BaseAdHolder;->get()Lcom/fusepowered/l1/BaseAd;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/l1/LoopMeInterstitial;

    iput-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    .line 84
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    if-nez v3, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/fusepowered/l1/PlayerActivity;->finish()V

    .line 128
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/l1/PlayerActivity;->applyOrientationFromResponse()V

    .line 88
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v3}, Lcom/fusepowered/l1/LoopMeInterstitial;->getVideoController()Lcom/fusepowered/l1/VideoController;

    move-result-object v0

    .line 90
    .local v0, "controller":Lcom/fusepowered/l1/VideoController;
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v3, p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->addUserIteractionListener(Lcom/fusepowered/l1/UserIteractionListener;)V

    .line 92
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v3}, Lcom/fusepowered/l1/LoopMeInterstitial;->getWebView()Lcom/fusepowered/l1/AdView;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    .line 93
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v3, v8}, Lcom/fusepowered/l1/AdView;->setBackgroundColor(I)V

    .line 94
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/fusepowered/l1/AdView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 96
    invoke-virtual {v0}, Lcom/fusepowered/l1/VideoController;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 98
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 100
    new-instance v3, Landroid/view/SurfaceView;

    invoke-direct {v3, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 101
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 102
    .local v2, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 104
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 105
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mLayout:Landroid/widget/FrameLayout;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 106
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/fusepowered/l1/PlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 107
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v3, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 109
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/fusepowered/l1/PlayerActivity;->setContentView(Landroid/view/View;)V

    .line 111
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 112
    .local v1, "duration":I
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v3, v1}, Lcom/fusepowered/l1/AdView;->setVideoDuration(I)V

    .line 114
    invoke-direct {p0}, Lcom/fusepowered/l1/PlayerActivity;->initRunnable()V

    .line 116
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v4, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v3, v4}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialShow(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 118
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/fusepowered/l1/PlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 119
    iget-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 120
    const/4 v3, 0x0

    iput v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mAccel:F

    .line 121
    iput v7, p0, Lcom/fusepowered/l1/PlayerActivity;->mAccelCurrent:F

    .line 122
    iput v7, p0, Lcom/fusepowered/l1/PlayerActivity;->mAccelLast:F

    .line 124
    invoke-virtual {v0}, Lcom/fusepowered/l1/VideoController;->getStreachVideoParameter()Lcom/fusepowered/l1/VideoStretchOption;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/l1/PlayerActivity;->mStretchParam:Lcom/fusepowered/l1/VideoStretchOption;

    .line 126
    sput-object p0, Lcom/fusepowered/l1/PlayerActivity;->sPlayerActivity:Lcom/fusepowered/l1/PlayerActivity;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 180
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/fusepowered/l1/PlayerActivity;->sRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    sput-object v3, Lcom/fusepowered/l1/PlayerActivity;->sHandler:Landroid/os/Handler;

    .line 184
    :cond_0
    sput-object v3, Lcom/fusepowered/l1/PlayerActivity;->sRunnable:Ljava/lang/Runnable;

    .line 185
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, p0, Lcom/fusepowered/l1/PlayerActivity;->mInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialHide(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 191
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 192
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 167
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 168
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 171
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 172
    sget-boolean v0, Lcom/fusepowered/l1/PlayerActivity;->sKeepAlive:Z

    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/fusepowered/l1/PlayerActivity;->finish()V

    .line 175
    :cond_1
    return-void
.end method

.method public onPausePressed(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 305
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    sget-object v1, Lcom/fusepowered/l1/VideoState;->PAUSED:Lcom/fusepowered/l1/VideoState;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/AdView;->setVideoState(Lcom/fusepowered/l1/VideoState;)V

    .line 306
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/fusepowered/l1/PlayerActivity;->sRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

.method public onPlayPressed(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 289
    if-lez p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 293
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    sget-object v1, Lcom/fusepowered/l1/VideoState;->PLAYING:Lcom/fusepowered/l1/VideoState;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/AdView;->setVideoState(Lcom/fusepowered/l1/VideoState;)V

    .line 294
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/fusepowered/l1/PlayerActivity;->sRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 145
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/l1/PlayerActivity;->sKeepAlive:Z

    .line 148
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdView;->onAppear()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/fusepowered/l1/PlayerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 155
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 221
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 212
    sget-object v0, Lcom/fusepowered/l1/PlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "surfaceCreated"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 213
    iget-object v0, p0, Lcom/fusepowered/l1/PlayerActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 214
    invoke-direct {p0}, Lcom/fusepowered/l1/PlayerActivity;->resizeVideo()V

    .line 215
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 225
    return-void
.end method
