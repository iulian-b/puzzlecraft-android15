.class public Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;
.super Ljava/lang/Object;
.source "WeightedRandomOfferListProvider.java"

# interfaces
.implements Lcom/chillingo/liboffers/session/listprovider/OfferListProvider;


# static fields
.field static random:Ljava/util/Random;


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffers()Ljava/util/List;
    .locals 5
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
    .line 28
    iget-object v3, p0, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->offerList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->offerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    :cond_1
    return-object v2

    .line 31
    :cond_2
    iget-object v3, p0, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->offerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 32
    .local v0, "numberOfOffers":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .local v2, "sortedOfferList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/chillingo/liboffers/model/Offer;>;"
    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v0, :cond_4

    .line 36
    iget-object v3, p0, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->offerList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->randomIndexForOffers(Ljava/util/List;)I

    move-result v1

    .line 39
    .local v1, "randomOfferIndex":I
    iget-object v3, p0, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->offerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 42
    iget-object v3, p0, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->offerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v1    # "randomOfferIndex":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->offerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 47
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Should have equal source and destination offer list length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .line 22
    .local p1, "offerList":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/liboffers/model/Offer;>;"
    iput-object p1, p0, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->offerList:Ljava/util/List;

    .line 23
    return-void
.end method

.method randomIndexForOffers(Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/liboffers/model/Offer;>;"
    const-wide v0, 0x40c3880000000000L    # 10000.0

    .line 57
    .local v0, "KWeightMultiplier":D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const/4 v2, 0x0

    .line 102
    :cond_0
    return v2

    .line 60
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [I

    .line 61
    .local v7, "weights":[I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chillingo/liboffers/model/Offer;

    .line 64
    .local v4, "offer":Lcom/chillingo/liboffers/model/Offer;
    invoke-virtual {v4}, Lcom/chillingo/liboffers/model/Offer;->getWeightedPriority()Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 67
    invoke-virtual {v4}, Lcom/chillingo/liboffers/model/Offer;->getWeightedPriority()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 68
    const-wide v8, 0x3fa999999999999aL    # 0.05

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/chillingo/liboffers/model/Offer;->setWeightedPriority(Ljava/lang/Double;)V

    .line 70
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v4}, Lcom/chillingo/liboffers/model/Offer;->getWeightedPriority()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v10, v12

    double-to-int v9, v10

    aput v9, v7, v8

    goto :goto_0

    .line 73
    :cond_3
    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/16 v9, 0x2710

    aput v9, v7, v8

    goto :goto_0

    .line 77
    .end local v4    # "offer":Lcom/chillingo/liboffers/model/Offer;
    :cond_4
    const/4 v6, 0x0

    .line 78
    .local v6, "totalWeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 80
    aget v8, v7, v2

    add-int/2addr v6, v8

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :cond_5
    if-gtz v6, :cond_6

    .line 84
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Total weight should always be > 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 88
    :cond_6
    sget-object v8, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;->random:Ljava/util/Random;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 91
    .local v5, "randNum":I
    const/4 v2, 0x0

    .line 92
    const/4 v2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    if-ltz v5, :cond_7

    .line 94
    aget v8, v7, v2

    sub-int/2addr v5, v8

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 97
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_8

    if-gez v2, :cond_0

    .line 100
    :cond_8
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Returned index must be within the bounds of the array [idx"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "][randNum"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
