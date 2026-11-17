.class public interface abstract Lcom/fusepowered/ads/AdManager$AdTrackingReporter;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ads/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdTrackingReporter"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AdTrackingReporter"


# virtual methods
.method public abstract reportAdClicked(IIFII)V
.end method

.method public abstract reportAdClosed(IIF)V
.end method

.method public abstract reportAdCompleted(IIF)V
.end method

.method public abstract reportAdDisplayRequested(II)V
.end method

.method public abstract reportAdProviderAskedToLoad(IIF)V
.end method

.method public abstract reportAdProviderNotReadyToLoad(IIF)V
.end method

.method public abstract reportAdSkipped(IIF)V
.end method

.method public abstract reportAdViewed(IIIII)V
.end method

.method public abstract reportCheckAdFail(IFLcom/fusepowered/util/FuseCheckAdError;)V
.end method

.method public abstract reportCheckAdSuccess(IF)V
.end method

.method public abstract reportOfferAccepted(ILcom/fusepowered/OfferObject;F)V
.end method

.method public abstract reportOfferRejected(ILcom/fusepowered/OfferObject;F)V
.end method

.method public abstract reportOfferViewed(ILcom/fusepowered/OfferObject;)V
.end method

.method public abstract reportProviderLoadFail(IIFLcom/fusepowered/util/FuseProviderError;)V
.end method

.method public abstract reportProviderLoadSuccess(IIF)V
.end method

.method public abstract reportRewardedVideoCompleted(IILcom/fusepowered/RewardedObject;F)V
.end method

.method public abstract reportShowAdFailed(IIFLcom/fusepowered/util/FuseProviderError;)V
.end method

.method public abstract reportUserAcceptedRewardedAd(Lcom/fusepowered/RewardedObject;Lcom/fusepowered/ads/adapters/AdAdapter;F)V
.end method

.method public abstract reportUserDeclinedRewardedAd(Lcom/fusepowered/RewardedObject;Lcom/fusepowered/ads/adapters/AdAdapter;F)V
.end method

.method public abstract reportVastError(II)V
.end method

.method public abstract reportVastProgress(II)V
.end method

.method public abstract reportVastSkip(I)V
.end method
