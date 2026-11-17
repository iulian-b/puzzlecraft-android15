.class Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/AdMobAdAdapter;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/AdMobAdAdapter;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 36
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 37
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->access$002(Lcom/fusepowered/ads/adapters/AdMobAdAdapter;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;

    .line 38
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->access$102(Lcom/fusepowered/ads/adapters/AdMobAdAdapter;Z)Z

    .line 39
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 44
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 45
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v1, v0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNDEFINED:Lcom/fusepowered/util/FuseProviderError;

    iput-object v1, v0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 55
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onWillLeaveApp(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 56
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 67
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 68
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 61
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdMobAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 62
    return-void
.end method
