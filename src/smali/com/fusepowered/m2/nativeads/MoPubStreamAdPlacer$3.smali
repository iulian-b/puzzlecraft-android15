.class Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$3;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;


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
    .line 261
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$3;->this$0:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 270
    const-string v0, "Unable to show ads because ad positions could not be loaded from the MoPub ad server."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onLoad(Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1
    .param p1, "positioning"    # Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 264
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$3;->this$0:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->handlePositioningLoad(Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 265
    return-void
.end method
