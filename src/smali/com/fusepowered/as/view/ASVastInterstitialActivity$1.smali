.class Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;
.super Ljava/lang/Object;
.source "ASVastInterstitialActivity.java"

# interfaces
.implements Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/ASVastInterstitialActivity;->buildInterstitialPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 120
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->finish()V

    .line 121
    return-void
.end method

.method public onPrepared()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->access$000(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 96
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->controllerId:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 97
    return-void
.end method

.method public onShowClose()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->access$000(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1$1;-><init>(Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->controllerId:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_COMPLETED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 103
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->access$100(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)Lcom/fusepowered/as/model/ad/VASTProviderAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->isVirtualCurrencyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->controllerId:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->VC_REWARDED:Lcom/fusepowered/as/AerServEvent;

    iget-object v2, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-static {v2}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->access$100(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)Lcom/fusepowered/as/model/ad/VASTProviderAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVirtualCurrency()Lcom/fusepowered/as/AerServVirtualCurrency;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;Ljava/lang/Object;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFinished()V

    .line 109
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->finish()V

    .line 110
    return-void
.end method

.method public onTouch()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->controllerId:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_CLICKED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 115
    return-void
.end method

.method public onVideoViewCreated(Landroid/widget/VideoView;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onVideoViewCreated(Landroid/widget/VideoView;)V

    .line 89
    return-void
.end method
