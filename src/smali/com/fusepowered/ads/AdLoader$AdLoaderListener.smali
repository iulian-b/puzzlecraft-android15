.class public interface abstract Lcom/fusepowered/ads/AdLoader$AdLoaderListener;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ads/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdLoaderListener"
.end annotation


# virtual methods
.method public abstract onAdLoaderFinished(I)V
.end method

.method public abstract onAdProviderDidntLoadInTime(Lcom/fusepowered/ads/adapters/AdAdapter;)V
.end method

.method public abstract onAdProviderLoadRequested(Lcom/fusepowered/ads/adapters/AdAdapter;)V
.end method

.method public abstract onAdProviderNotReadyToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V
.end method

.method public abstract onNoProvidersCanLoad()V
.end method
