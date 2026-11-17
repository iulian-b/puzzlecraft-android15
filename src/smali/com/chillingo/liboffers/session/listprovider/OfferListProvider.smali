.class public interface abstract Lcom/chillingo/liboffers/session/listprovider/OfferListProvider;
.super Ljava/lang/Object;
.source "OfferListProvider.java"


# virtual methods
.method public abstract getOffers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initWithOffers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;)V"
        }
    .end annotation
.end method
