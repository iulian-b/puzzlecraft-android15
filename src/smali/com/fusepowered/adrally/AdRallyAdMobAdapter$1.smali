.class Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;
.super Lcom/fusepowered/util/FuseCallbackImpl;
.source "AdRallyAdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/adrally/AdRallyAdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FuseAdCallback"


# instance fields
.field final synthetic this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-direct {p0}, Lcom/fusepowered/util/FuseCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public IAPOfferAcceptedWithObject(Lcom/fusepowered/IAPOfferInfo;)V
    .locals 0
    .param p1, "offer"    # Lcom/fusepowered/IAPOfferInfo;

    .prologue
    .line 70
    return-void
.end method

.method public adClicked()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "FuseAdCallback"

    const-string v1, "Ad Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 91
    :cond_0
    return-void
.end method

.method public adDidLoad()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "FuseAdCallback"

    const-string v1, "Ad Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 107
    :cond_0
    return-void
.end method

.method public adDisplayed()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "FuseAdCallback"

    const-string v1, "Ad Displayed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 83
    :cond_0
    return-void
.end method

.method public adFailedToLoad()V
    .locals 3

    .prologue
    .line 48
    const-string v0, "FuseAdCallback"

    const-string v1, "Ad Failed to load"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    .line 52
    :cond_0
    return-void
.end method

.method public adWillClose()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "FuseAdCallback"

    const-string v1, "Ad Closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 99
    :cond_0
    return-void
.end method

.method public adWillLeaveApp()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "FuseAdCallback"

    const-string v1, "Ad will leave app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$1;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 60
    :cond_0
    return-void
.end method

.method public rewardedAdCompleteWithObject(Lcom/fusepowered/RewardedInfo;)V
    .locals 0
    .param p1, "rewardInfo"    # Lcom/fusepowered/RewardedInfo;

    .prologue
    .line 65
    return-void
.end method

.method public rewardedVideoCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public sessionStartReceived()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/fusepowered/util/FuseCallbackImpl;->sessionStartReceived()V

    .line 43
    const-string v0, "googleAdMob"

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->preloadAdForZone(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public virtualGoodsOfferAcceptedWithObject(Lcom/fusepowered/VGOfferInfo;)V
    .locals 0
    .param p1, "offer"    # Lcom/fusepowered/VGOfferInfo;

    .prologue
    .line 75
    return-void
.end method
