.class public Lcom/fusepowered/m2/mobileads/DefaultInterstitialAdListener;
.super Ljava/lang/Object;
.source "DefaultInterstitialAdListener.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .prologue
    .line 9
    return-void
.end method

.method public onInterstitialDismissed(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .prologue
    .line 10
    return-void
.end method

.method public onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;
    .param p2, "errorCode"    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    .prologue
    .line 7
    return-void
.end method

.method public onInterstitialLoaded(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .prologue
    .line 6
    return-void
.end method

.method public onInterstitialShown(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .prologue
    .line 8
    return-void
.end method
