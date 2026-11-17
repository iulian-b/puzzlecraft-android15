.class public Lcom/fusepowered/as/view/ASVastInterstitialActivity;
.super Lcom/fusepowered/as/view/ASInterstitialActivity;
.source "ASVastInterstitialActivity.java"


# instance fields
.field private ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

.field private isStarting:Z

.field private self:Landroid/app/Activity;

.field private vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;-><init>()V

    .line 44
    iput-object p0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->self:Landroid/app/Activity;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->isStarting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->self:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)Lcom/fusepowered/as/model/ad/VASTProviderAd;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    return-object v0
.end method


# virtual methods
.method protected buildInterstitialPlayer()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 77
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 82
    new-instance v0, Lcom/fusepowered/as/view/component/CloseButton;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/view/component/CloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    .line 83
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setVisibility(I)V

    .line 85
    new-instance v0, Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    iget-object v1, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    new-instance v2, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;

    invoke-direct {v2, p0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;-><init>(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;-><init>(Landroid/content/Context;Lcom/fusepowered/as/model/ad/VASTProviderAd;Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    .line 135
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-virtual {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->getMasterFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VAST Activity started"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 58
    const-string v1, "providerAd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Didn\'t get a correctly configured payload.  Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const-string v1, "providerAd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/VASTProviderAd;

    iput-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    .line 65
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->tryToGoFullScreen()V

    .line 66
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->buildInterstitialPlayer()V

    .line 67
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->registerEvents()V

    .line 68
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->playInterstitial()V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->kill()V

    .line 190
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onPause()V

    .line 166
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->pause()V

    .line 169
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onResume()V

    .line 174
    iget-boolean v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->isStarting:Z

    if-nez v0, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->resume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->isStarting:Z

    .line 184
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->kill()V

    .line 179
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->finish()V

    goto :goto_0
.end method

.method protected playInterstitial()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->play()V

    .line 161
    return-void
.end method

.method protected registerEvents()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    new-instance v1, Lcom/fusepowered/as/view/ASVastInterstitialActivity$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity$2;-><init>(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method
