.class public Lcom/fusepowered/ads/adapters/MRaidVideoActivity;
.super Landroid/app/Activity;
.source "MRaidVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final CLOSE_REGION_HEIGHT_OFFSET:F = 0.01f

.field private static final CLOSE_REGION_SIZE:F = 50.0f

.field private static final CLOSE_REGION_WIDTH_OFFSET:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "MRAIDVideoActivity"


# instance fields
.field private closeButtonDelay:J

.field private closeRegion:Landroid/widget/ImageView;

.field private deviceHeight:F

.field private deviceWidth:F

.field private layout:Landroid/widget/FrameLayout;

.field private shouldReturnToInterstitial:Z

.field private skipParams:Landroid/widget/FrameLayout$LayoutParams;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/ads/adapters/MRaidVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/MRaidVideoActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->shouldReturnToInterstitial:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fusepowered/ads/adapters/MRaidVideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/MRaidVideoActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;

    return-object v0
.end method

.method private addCloseRegion()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, -0x1000000

    const/4 v8, 0x0

    .line 73
    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;

    .line 74
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 75
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;

    new-instance v4, Lcom/fusepowered/ads/adapters/MRaidVideoActivity$1;

    invoke-direct {v4, p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity$1;-><init>(Lcom/fusepowered/ads/adapters/MRaidVideoActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-wide v4, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeButtonDelay:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;

    new-instance v4, Lcom/fusepowered/ads/adapters/MRaidVideoActivity$2;

    invoke-direct {v4, p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity$2;-><init>(Lcom/fusepowered/ads/adapters/MRaidVideoActivity;)V

    iget-wide v6, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeButtonDelay:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :cond_0
    const-string v3, "/assets/drawable/close_button_normal.png"

    const-string v4, "close_button_normal"

    invoke-static {p0, v3, v4, v9}, Lcom/fusepowered/mraid1/MRaidDrawables;->getDrawableForImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .local v0, "closeButtonNormalDrawable":Landroid/graphics/drawable/Drawable;
    const-string v3, "/assets/drawable/close_button_pressed.png"

    const-string v4, "close_button_pressed"

    invoke-static {p0, v3, v4, v9}, Lcom/fusepowered/mraid1/MRaidDrawables;->getDrawableForImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    .local v1, "closeButtonPressedDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 98
    .local v2, "states":Landroid/graphics/drawable/StateListDrawable;
    new-array v3, v10, [I

    const v4, -0x10100a7

    aput v4, v3, v8

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 99
    new-array v3, v10, [I

    const v4, 0x10100a7

    aput v4, v3, v8

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    return-void
.end method

.method private getScreenDimensions()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->deviceHeight:F

    .line 108
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->deviceWidth:F

    .line 109
    return-void
.end method

.method private setCloseRegionPosition()V
    .locals 4

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->getScreenDimensions()V

    .line 113
    iget v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->deviceHeight:F

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 114
    .local v0, "height":I
    iget v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->deviceWidth:F

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 115
    .local v1, "width":I
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->skipParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 116
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->skipParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 117
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->skipParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method private setCloseRegionPositionAndSize()V
    .locals 4

    .prologue
    .line 121
    const/4 v1, 0x1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 122
    .local v0, "size":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->skipParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->setCloseRegionPosition()V

    .line 125
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "rti"

    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->shouldReturnToInterstitial:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->finish()V

    .line 170
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "rti"

    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->shouldReturnToInterstitial:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->finish()V

    .line 146
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->setCloseRegionPosition()V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->layout:Landroid/widget/FrameLayout;

    .line 51
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cb_ms"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->closeButtonDelay:J

    .line 57
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "rti"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->shouldReturnToInterstitial:Z

    .line 59
    new-instance v2, Landroid/widget/VideoView;

    invoke-direct {v2, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->videoView:Landroid/widget/VideoView;

    .line 60
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 61
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 62
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 63
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->layout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->addCloseRegion()V

    .line 68
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->setCloseRegionPositionAndSize()V

    .line 69
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->setContentView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    const/4 v3, 0x0

    .line 150
    const-string v1, "MRAIDVideoActivity"

    const-string v2, "ERROR LOADING VIDEO!"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "rti"

    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->shouldReturnToInterstitial:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v3, v0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->finish()V

    .line 155
    return v3
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 162
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 137
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 138
    return-void
.end method
