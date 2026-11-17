.class public interface abstract Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
.super Ljava/lang/Object;
.source "AnalyticsPoster.java"


# virtual methods
.method public abstract flushEvents()V
.end method

.method public abstract isActivatedByOfferConfig(Lcom/chillingo/liboffers/model/OfferConfig;)Z
.end method

.method public abstract logActivateEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
.end method

.method public abstract logAdvertisingIdAvailabilityEvent()V
.end method

.method public abstract logAppstoreOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
.end method

.method public abstract logCloseEventForGUI()V
.end method

.method public abstract logCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
.end method

.method public abstract logDiplayEventForGUI()V
.end method

.method public abstract logDisplayEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
.end method

.method public abstract logEmbedActivateForFacebook()V
.end method

.method public abstract logEmbedActivateForGameId(Ljava/lang/String;)V
.end method

.method public abstract logEmbedActivateForTwitter()V
.end method

.method public abstract logEmbedActivateForUrl(Ljava/lang/String;)V
.end method

.method public abstract logEmbedCloseForUrl(Ljava/lang/String;)V
.end method

.method public abstract logEmbedOpenForUrl(Ljava/lang/String;)V
.end method

.method public abstract logInterstitialClickThruEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
.end method

.method public abstract logInterstitialCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
.end method

.method public abstract logInterstitialOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
.end method

.method public abstract logPurchaseConversionEventWithSourceId(Ljava/lang/String;)V
.end method

.method public abstract logReleaseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
.end method

.method public abstract logSessionStartEventWithData(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logWebpageOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
.end method
