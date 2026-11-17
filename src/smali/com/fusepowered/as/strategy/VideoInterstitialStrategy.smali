.class public final Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;
.super Ljava/lang/Object;
.source "VideoInterstitialStrategy.java"

# interfaces
.implements Lcom/fusepowered/as/strategy/InterstitialStrategy;


# instance fields
.field private activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

.field private ad:Lcom/fusepowered/as/model/ad/HTMLProviderAd;

.field private closeButton:Lcom/fusepowered/as/view/component/CloseButton;

.field private position:I

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private videoUrl:Ljava/lang/String;

.field private videoView:Landroid/widget/VideoView;

.field private videoViewContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/model/ad/HTMLProviderAd;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->position:I

    .line 56
    iput-object p1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    .line 57
    iput-object p2, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 58
    iput-object p3, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->ad:Lcom/fusepowered/as/model/ad/HTMLProviderAd;

    .line 59
    const-string v0, "mraidPlayVideoUrl"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoUrl:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->close()V

    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->finish()V

    .line 148
    return-void
.end method


# virtual methods
.method public buildInterstitialPlayer()V
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, -0x1

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 66
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 71
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoViewContainer:Landroid/widget/RelativeLayout;

    .line 72
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoViewContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 76
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoViewContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 79
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    .line 80
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 83
    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 84
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 88
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy$1;-><init>(Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v0, Lcom/fusepowered/as/view/component/CloseButton;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    .line 102
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->position:I

    .line 136
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->position:I

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 142
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 144
    :cond_0
    return-void
.end method

.method public playInterstitial()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 128
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 129
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 130
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 131
    return-void
.end method

.method public registerEvents()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    new-instance v1, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy$2;-><init>(Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method
