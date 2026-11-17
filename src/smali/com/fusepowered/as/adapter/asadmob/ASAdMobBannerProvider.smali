.class public Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;
.super Ljava/lang/Object;
.source "ASAdMobBannerProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# instance fields
.field private ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "viewGroup"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain viewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    const-string v0, "viewGroup"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->viewGroup:Landroid/view/ViewGroup;

    .line 31
    new-instance v0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;)Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

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
    .line 37
    const-string v0, "com.google.android.gms.ads.AdView"

    invoke-static {v0}, Lcom/fusepowered/as/utils/ReflectionUtils;->canFindClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not find class.  failing over"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method


# virtual methods
.method public requestAd()V
    .locals 3

    .prologue
    .line 49
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 50
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 51
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getAdMobAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    new-instance v0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider$1;-><init>(Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 85
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getIsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-virtual {v2}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getAdMobDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 97
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 98
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobBannerProvider;->ASAdMobConfig:Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 99
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    goto :goto_0
.end method
