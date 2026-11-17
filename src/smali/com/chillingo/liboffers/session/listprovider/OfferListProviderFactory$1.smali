.class synthetic Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory$1;
.super Ljava/lang/Object;
.source "OfferListProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$chillingo$liboffers$model$OfferConfig$RotationAlgorithm:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    invoke-static {}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->values()[Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory$1;->$SwitchMap$com$chillingo$liboffers$model$OfferConfig$RotationAlgorithm:[I

    :try_start_0
    sget-object v0, Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory$1;->$SwitchMap$com$chillingo$liboffers$model$OfferConfig$RotationAlgorithm:[I

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->UNKNOWN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory$1;->$SwitchMap$com$chillingo$liboffers$model$OfferConfig$RotationAlgorithm:[I

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ORDERED_LIST:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory$1;->$SwitchMap$com$chillingo$liboffers$model$OfferConfig$RotationAlgorithm:[I

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ROUND_ROBIN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory$1;->$SwitchMap$com$chillingo$liboffers$model$OfferConfig$RotationAlgorithm:[I

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->COMPLETELY_RANDOM:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory$1;->$SwitchMap$com$chillingo$liboffers$model$OfferConfig$RotationAlgorithm:[I

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->WEIGHTED_RANDOM:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
