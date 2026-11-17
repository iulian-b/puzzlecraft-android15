.class public Lcom/fusepowered/ads/adapters/MopubAdAdapter$InterstitialFactory;
.super Ljava/lang/Object;
.source "MopubAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ads/adapters/MopubAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterstitialFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterstitial(Ljava/lang/String;Landroid/app/Activity;)Lcom/fusepowered/m2/mobileads/MoPubInterstitial;
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 262
    new-instance v0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-direct {v0, p2, p1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method
