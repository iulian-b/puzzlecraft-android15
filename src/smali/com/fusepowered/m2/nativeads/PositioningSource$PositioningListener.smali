.class public interface abstract Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;
.super Ljava/lang/Object;
.source "PositioningSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/nativeads/PositioningSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositioningListener"
.end annotation


# virtual methods
.method public abstract onFailed()V
.end method

.method public abstract onLoad(Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .param p1    # Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
