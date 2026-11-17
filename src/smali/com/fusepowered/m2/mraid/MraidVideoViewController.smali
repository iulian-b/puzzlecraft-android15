.class public Lcom/fusepowered/m2/mraid/MraidVideoViewController;
.super Lcom/fusepowered/m2/mobileads/BaseVideoViewController;
.source "MraidVideoViewController.java"


# static fields
.field private static final CLOSE_BUTTON_PADDING:F = 8.0f

.field private static final CLOSE_BUTTON_SIZE:F = 50.0f


# instance fields
.field private mButtonPadding:I

.field private mButtonSize:I

.field private mCloseButton:Landroid/widget/ImageButton;

.field private final mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentExtras"    # Landroid/os/Bundle;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "baseVideoViewControllerListener"    # Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 39
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    .line 40
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/fusepowered/m2/mraid/MraidVideoViewController$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController$1;-><init>(Lcom/fusepowered/m2/mraid/MraidVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 48
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/fusepowered/m2/mraid/MraidVideoViewController$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController$2;-><init>(Lcom/fusepowered/m2/mraid/MraidVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 58
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    const-string v1, "video_url"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/mraid/MraidVideoViewController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mraid/MraidVideoViewController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/mraid/MraidVideoViewController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mraid/MraidVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->videoCompleted(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/fusepowered/m2/mraid/MraidVideoViewController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mraid/MraidVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->videoError(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/fusepowered/m2/mraid/MraidVideoViewController;)Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mraid/MraidVideoViewController;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->getBaseVideoViewControllerListener()Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    return-object v0
.end method

.method private createInterstitialCloseButton()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    .line 90
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 91
    .local v1, "states":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v6, [I

    const v3, -0x10100a7

    aput v3, v2, v5

    sget-object v3, Lcom/fusepowered/m2/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lcom/fusepowered/m2/common/util/Drawables;

    invoke-virtual {p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fusepowered/m2/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 93
    new-array v2, v6, [I

    const v3, 0x10100a7

    aput v3, v2, v5

    sget-object v3, Lcom/fusepowered/m2/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lcom/fusepowered/m2/common/util/Drawables;

    invoke-virtual {p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fusepowered/m2/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v2, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v2, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v2, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/fusepowered/m2/mraid/MraidVideoViewController$3;

    invoke-direct {v3, p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController$3;-><init>(Lcom/fusepowered/m2/mraid/MraidVideoViewController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mButtonSize:I

    iget v3, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mButtonSize:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v0, "buttonLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    iget v2, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mButtonPadding:I

    iget v3, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mButtonPadding:I

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    invoke-virtual {p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected getVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method protected onCreate()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;->onCreate()V

    .line 64
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mButtonSize:I

    .line 65
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mButtonPadding:I

    .line 66
    invoke-direct {p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->createInterstitialCloseButton()V

    .line 67
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    return-void
.end method
