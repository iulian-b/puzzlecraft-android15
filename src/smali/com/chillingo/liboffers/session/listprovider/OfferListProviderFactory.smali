.class public Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory;
.super Ljava/lang/Object;
.source "OfferListProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static providerForRotationAlgorithm(Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;)Lcom/chillingo/liboffers/session/listprovider/OfferListProvider;
    .locals 2
    .param p0, "rotationAlgorithm"    # Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    .prologue
    .line 12
    sget-object v0, Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory$1;->$SwitchMap$com$chillingo$liboffers$model$OfferConfig$RotationAlgorithm:[I

    invoke-virtual {p0}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;

    invoke-direct {v0}, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;-><init>()V

    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;

    invoke-direct {v0}, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;-><init>()V

    goto :goto_0

    .line 19
    :pswitch_1
    new-instance v0, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;

    invoke-direct {v0}, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;-><init>()V

    goto :goto_0

    .line 23
    :pswitch_2
    new-instance v0, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;

    invoke-direct {v0}, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;-><init>()V

    goto :goto_0

    .line 27
    :pswitch_3
    new-instance v0, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;

    invoke-direct {v0}, Lcom/chillingo/liboffers/session/listprovider/OrderedListOfferListProvider;-><init>()V

    goto :goto_0

    .line 30
    :pswitch_4
    new-instance v0, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;

    invoke-direct {v0}, Lcom/chillingo/liboffers/session/listprovider/WeightedRandomOfferListProvider;-><init>()V

    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
