.class public interface abstract Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
.super Ljava/lang/Object;
.source "OfferGuiSession.java"


# virtual methods
.method public abstract activateOfferWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V
.end method

.method public abstract areOffersWithCountReadyInOrder(Ljava/lang/Integer;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;
.end method

.method public abstract hasOfferBeenDisplayed(Ljava/lang/String;)Z
.end method

.method public abstract nextOfferDataFromListUsingFilter(Ljava/util/ArrayList;)Lcom/chillingo/liboffers/model/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/chillingo/liboffers/model/Offer;"
        }
    .end annotation
.end method

.method public abstract offerDataAvailable()Z
.end method

.method public abstract offerWasReleasedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V
.end method

.method public abstract remainingNewOffersToDisplay()I
.end method
