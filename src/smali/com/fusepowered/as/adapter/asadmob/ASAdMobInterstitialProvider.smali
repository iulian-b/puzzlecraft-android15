.class public Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;
.super Ljava/lang/Object;
.source "ASAdMobInterstitialProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# instance fields
.field private ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    return-object v0
.end method

.method public static getInstance(Ljava/util/Properties;)Lcom/fusepowered/as/adapter/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string v0, "com.google.android.gms.ads.InterstitialAd"

    invoke-static {v0}, Lcom/fusepowered/as/utils/ReflectionUtils;->canFindClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not find class.  failing over"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    new-instance v0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method


# virtual methods
.method public requestAd()V
    .locals 3

    .prologue
    .line 43
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getAdMobAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$1;-><init>(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;Lcom/google/android/gms/ads/InterstitialAd;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 76
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getIsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-virtual {v2}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getAdMobDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 84
    :goto_0
    new-instance v2, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$2;-><init>(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;Lcom/google/android/gms/ads/InterstitialAd;Lcom/google/android/gms/ads/AdRequest;)V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 95
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    goto :goto_0
.end method
