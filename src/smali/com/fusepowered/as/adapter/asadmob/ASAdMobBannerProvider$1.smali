.class Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "ASAdMobBannerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_DISMISSED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 59
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFinished()V

    .line 60
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 65
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_CLICKED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 70
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 80
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 81
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
