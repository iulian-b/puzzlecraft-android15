.class Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$4;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/NativeAdSource$AdSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/RequestParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsAvailable()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->handleAdsAvailable()V

    .line 279
    return-void
.end method
