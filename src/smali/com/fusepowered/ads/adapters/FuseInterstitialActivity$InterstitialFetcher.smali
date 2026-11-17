.class public Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;
.super Ljava/lang/Object;
.source "FuseInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterstitialFetcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchInterstitial()Lcom/fusepowered/ads/adapters/FuseInterstitial;
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->getInstance()Lcom/fusepowered/ads/adapters/FuseInterstitial;

    move-result-object v0

    return-object v0
.end method
