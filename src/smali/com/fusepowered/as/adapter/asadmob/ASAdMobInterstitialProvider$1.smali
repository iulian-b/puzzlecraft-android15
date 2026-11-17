.class Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "ASAdMobInterstitialProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;

.field final synthetic val$admobInterstitial:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;

    iput-object p2, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;->val$admobInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_COMPLETED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 50
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFinished()V

    .line 51
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 56
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_CLICKED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 61
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;->val$admobInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 73
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 66
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 67
    return-void
.end method
