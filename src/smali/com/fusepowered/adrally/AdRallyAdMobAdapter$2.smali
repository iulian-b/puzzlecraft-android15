.class Lcom/fusepowered/adrally/AdRallyAdMobAdapter$2;
.super Ljava/lang/Object;
.source "AdRallyAdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$2;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$2;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-static {v0}, Lcom/fusepowered/adrally/AdRallyAdMobAdapter;->access$000(Lcom/fusepowered/adrally/AdRallyAdMobAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/adrally/AdRallyAdMobAdapter$2;->this$0:Lcom/fusepowered/adrally/AdRallyAdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 140
    return-void
.end method
