.class Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$2;
.super Ljava/lang/Object;
.source "ASAdMobInterstitialProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$adRequest:Lcom/google/android/gms/ads/AdRequest;

.field final synthetic val$admobInterstitial:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;Lcom/google/android/gms/ads/InterstitialAd;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider;

    iput-object p2, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$2;->val$admobInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iput-object p3, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$2;->val$adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$2;->val$admobInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobInterstitialProvider$2;->val$adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 88
    return-void
.end method
