.class public final Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;
.super Lcom/fusepowered/as/view/ASInterstitialActivity;
.source "ASVpaidInterstitalActivity.java"


# instance fields
.field private ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

.field private webView:Lcom/fusepowered/as/view/component/VpaidWebView;

.field private webViewContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildInterstitialPlayer()V
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, -0x1

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 57
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webViewContainer:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webViewContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 61
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webViewContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 64
    new-instance v0, Lcom/fusepowered/as/view/component/VpaidWebView;

    new-instance v1, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;-><init>(Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;)V

    iget-object v2, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-direct {v0, p0, v1, v2}, Lcom/fusepowered/as/view/component/VpaidWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;Lcom/fusepowered/as/model/ad/VASTProviderAd;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webView:Lcom/fusepowered/as/view/component/VpaidWebView;

    .line 92
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webView:Lcom/fusepowered/as/view/component/VpaidWebView;

    new-instance v1, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$2;-><init>(Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/VpaidWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    new-instance v0, Lcom/fusepowered/as/view/component/CloseButton;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/view/component/CloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    .line 103
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webView:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->setContentView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webView:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->onResize()V

    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 35
    const-string v1, "providerAd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Didn\'t get a correctly configured payload. Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    const-string v1, "providerAd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/VASTProviderAd;

    iput-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    .line 41
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->tryToGoFullScreen()V

    .line 42
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->buildInterstitialPlayer()V

    .line 43
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->registerEvents()V

    .line 44
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->playInterstitial()V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webView:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->stop()V

    .line 164
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webView:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->pause()V

    .line 151
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webView:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->resume()V

    .line 158
    return-void
.end method

.method protected playInterstitial()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->webView:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->load()V

    .line 144
    return-void
.end method

.method protected registerEvents()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    new-instance v1, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$3;-><init>(Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method
