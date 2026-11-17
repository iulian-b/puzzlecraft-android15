.class public Lcom/fusepowered/adrally/AdRallyAdMobAdapter;
.super Ljava/lang/Object;
.source "AdRallyAdMobAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# static fields
.field private static final AD_ZONE:Ljava/lang/String; = "googleAdMob"

.field private static final PARAM_APIKEY:Ljava/lang/String; = "apiKey"

.field private static final TAG:Ljava/lang/String; = "AdRallyAdMobAdapter"

.field private static isStarted:Z


# instance fields
.field fuseCallback:Lcom/fusepowered/util/FuseCallback;

.field private handler:Landroid/os/Handler;

.field private interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->isStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;-><init>(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)V

    iput-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->handler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "AdRallyAdMobAdapter"

    const-string v1, "OnDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "AdRallyAdMobAdapter"

    const-string v1, "OnPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "AdRallyAdMobAdapter"

    const-string v1, "OnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 167
    :cond_0
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .param p3, "serverParameters"    # Landroid/os/Bundle;
    .param p4, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p5, "mediationExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 121
    const-string v1, "AdRallyAdMobAdapter"

    const-string v2, "Request Ad"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object p2, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 123
    sget-boolean v1, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->isStarted:Z

    if-nez v1, :cond_2

    .line 124
    const-string v1, "apiKey"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const-string v1, "apiKey"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "apiKey":Ljava/lang/String;
    const-string v1, "android-admob"

    invoke-static {v1}, Lcom/fusepowered/fuseapi/FuseAPI;->setPlatform(Ljava/lang/String;)V

    move-object v1, p1

    .line 127
    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v0, v1, p1, v2}, Lcom/fusepowered/fuseapi/FuseAPI;->startSession(Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Lcom/fusepowered/util/FuseCallback;)V

    .line 128
    sput-boolean v3, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->isStarted:Z

    .line 135
    .end local v0    # "apiKey":Ljava/lang/String;
    :goto_0
    const-string v1, "googleAdMob"

    invoke-static {v1}, Lcom/fusepowered/fuseapi/FuseAPI;->isAdAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$2;

    invoke-direct {v2, p0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$2;-><init>(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_0
    return-void

    .line 130
    :cond_1
    invoke-interface {p2, p0, v3}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 133
    :cond_2
    const-string v1, "googleAdMob"

    invoke-static {v1}, Lcom/fusepowered/fuseapi/FuseAPI;->preloadAdForZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 147
    const-string v0, "AdRallyAdMobAdapter"

    const-string v1, "Show Interstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "googleAdMob"

    iget-object v1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAd(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;Ljava/util/HashMap;)V

    .line 149
    return-void
.end method
