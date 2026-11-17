.class public final Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;
.super Lcom/fusepowered/as/view/ASInterstitialActivity;
.source "ASWebviewInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/as/view/ASWebviewInterstitialActivity$1;
    }
.end annotation


# instance fields
.field private interstitialStrategy:Lcom/fusepowered/as/strategy/InterstitialStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method protected buildInterstitialPlayer()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->interstitialStrategy:Lcom/fusepowered/as/strategy/InterstitialStrategy;

    invoke-interface {v0}, Lcom/fusepowered/as/strategy/InterstitialStrategy;->buildInterstitialPlayer()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 37
    const-string v0, "providerAd"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/ProviderAd;

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Didn\'t get a correctly configured payload. Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    sget-object v2, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity$1;->$SwitchMap$com$aerserv$sdk$model$ad$AdType:[I

    invoke-interface {v0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/as/model/ad/AdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad found, but no strategy exists for ad type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :pswitch_0
    new-instance v2, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    iget-object v3, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    check-cast v0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;-><init>(Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/model/ad/HTMLProviderAd;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->interstitialStrategy:Lcom/fusepowered/as/strategy/InterstitialStrategy;

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->tryToGoFullScreen()V

    .line 59
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->buildInterstitialPlayer()V

    .line 60
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->registerEvents()V

    .line 61
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->playInterstitial()V

    .line 63
    return-void

    .line 46
    :pswitch_1
    new-instance v2, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;

    iget-object v3, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    check-cast v0, Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;-><init>(Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/model/ad/MraidProviderAd;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->interstitialStrategy:Lcom/fusepowered/as/strategy/InterstitialStrategy;

    goto :goto_0

    .line 49
    :pswitch_2
    new-instance v2, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    iget-object v3, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    check-cast v0, Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;-><init>(Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/model/ad/MraidProviderAd;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->interstitialStrategy:Lcom/fusepowered/as/strategy/InterstitialStrategy;

    goto :goto_0

    .line 52
    :pswitch_3
    new-instance v2, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;

    iget-object v3, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    check-cast v0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;-><init>(Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/model/ad/HTMLProviderAd;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->interstitialStrategy:Lcom/fusepowered/as/strategy/InterstitialStrategy;

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onPause()V

    .line 68
    iget-object v0, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->interstitialStrategy:Lcom/fusepowered/as/strategy/InterstitialStrategy;

    invoke-interface {v0}, Lcom/fusepowered/as/strategy/InterstitialStrategy;->onPause()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->interstitialStrategy:Lcom/fusepowered/as/strategy/InterstitialStrategy;

    invoke-interface {v0}, Lcom/fusepowered/as/strategy/InterstitialStrategy;->onResume()V

    .line 75
    return-void
.end method

.method protected playInterstitial()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->interstitialStrategy:Lcom/fusepowered/as/strategy/InterstitialStrategy;

    invoke-interface {v0}, Lcom/fusepowered/as/strategy/InterstitialStrategy;->playInterstitial()V

    .line 91
    return-void
.end method

.method protected registerEvents()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->interstitialStrategy:Lcom/fusepowered/as/strategy/InterstitialStrategy;

    invoke-interface {v0}, Lcom/fusepowered/as/strategy/InterstitialStrategy;->registerEvents()V

    .line 86
    return-void
.end method
