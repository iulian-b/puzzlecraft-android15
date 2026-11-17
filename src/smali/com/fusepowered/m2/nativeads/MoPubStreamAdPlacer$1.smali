.class final Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$1;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 46
    return-void
.end method

.method public onAdRemoved(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 50
    return-void
.end method
