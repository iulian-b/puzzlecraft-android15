.class public interface abstract Lcom/fusepowered/ads/AdManagerListener;
.super Ljava/lang/Object;
.source "AdManagerListener.java"


# virtual methods
.method public abstract adCouldNotBeDisplayedWithinTimeout(JLjava/lang/String;)V
.end method

.method public abstract adDidClose(ILjava/lang/String;)V
.end method

.method public abstract adDidComplete(ILjava/lang/String;)V
.end method

.method public abstract adDidDisplay(I)V
.end method

.method public abstract adIsReady(IZ)V
.end method

.method public abstract adWasClicked(I)V
.end method

.method public abstract adWillLeaveApp(I)V
.end method

.method public abstract handleAdClickWithUrl(Ljava/lang/String;)V
.end method

.method public abstract noProvidersReadyToLoad()V
.end method

.method public abstract rewardedVideoDidComplete(ILjava/lang/String;Lcom/fusepowered/RewardedObject;)V
.end method

.method public abstract userAcceptedOffer(Lcom/fusepowered/OfferObject;)V
.end method

.method public abstract userAcceptedRewardedAd(I)V
.end method

.method public abstract userDeclinedRewardedAd(I)V
.end method

.method public abstract userRejectedOffer(Lcom/fusepowered/OfferObject;)V
.end method
