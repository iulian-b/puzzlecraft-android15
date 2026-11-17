.class public Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;
.super Ljava/lang/Object;
.source "OrderedListOfferListProvider.java"

# interfaces
.implements Lcom/chillingo/liboffers/session/listprovider/OfferListProvider;


# instance fields
.field offerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;->offerList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;->offerList:Ljava/util/List;

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public initWithOffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "offerList":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/liboffers/model/Offer;>;"
    iput-object p1, p0, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;->offerList:Ljava/util/List;

    .line 20
    return-void
.end method
