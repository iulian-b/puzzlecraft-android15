.class public Lcom/fusepowered/ads/adapters/AdMobAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "AdMobAdAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdMobAdAdapter"

.field public static final name:Ljava/lang/String; = "AdMob"


# instance fields
.field private adMobListener:Lcom/google/android/gms/ads/AdListener;

.field private appId:Ljava/lang/String;

.field private initialized:Z

.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field private lastActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->initialized:Z

    .line 32
    new-instance v0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/ads/adapters/AdMobAdAdapter$1;-><init>(Lcom/fusepowered/ads/adapters/AdMobAdAdapter;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->adMobListener:Lcom/google/android/gms/ads/AdListener;

    .line 70
    return-void
.end method

.method static synthetic access$002(Lcom/fusepowered/ads/adapters/AdMobAdAdapter;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/AdMobAdAdapter;
    .param p1, "x1"    # Lcom/google/android/gms/ads/InterstitialAd;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$102(Lcom/fusepowered/ads/adapters/AdMobAdAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/AdMobAdAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->initialized:Z

    return p1
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public displayAd()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 135
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 141
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "AdMob"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public loadAd()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->appId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->lastActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 96
    :cond_0
    const/4 v1, 0x0

    .line 113
    :goto_0
    return v1

    .line 99
    :cond_1
    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->initialized:Z

    if-nez v2, :cond_2

    .line 100
    new-instance v2, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->lastActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 101
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->adMobListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 103
    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->initialized:Z

    .line 107
    :cond_2
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 108
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 111
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 75
    const-string v1, "ad_unit"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "appId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 77
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->appId:Ljava/lang/String;

    .line 81
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 82
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AdMobAdAdapter;->lastActivity:Landroid/app/Activity;

    .line 84
    :cond_1
    return-void
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x4
        0x5
        0x2
    .end array-data
.end method
