.class public final enum Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;
.super Ljava/lang/Enum;
.source "OfferConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/model/OfferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RotationAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

.field public static final enum COMPLETELY_RANDOM:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

.field public static final enum ORDERED_LIST:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

.field public static final enum ROUND_ROBIN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

.field public static final enum UNKNOWN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

.field public static final enum WEIGHTED_RANDOM:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->UNKNOWN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    .line 40
    new-instance v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    const-string v1, "ORDERED_LIST"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ORDERED_LIST:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    .line 41
    new-instance v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    const-string v1, "ROUND_ROBIN"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ROUND_ROBIN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    .line 42
    new-instance v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    const-string v1, "COMPLETELY_RANDOM"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->COMPLETELY_RANDOM:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    .line 43
    new-instance v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    const-string v1, "WEIGHTED_RANDOM"

    invoke-direct {v0, v1, v6}, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->WEIGHTED_RANDOM:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->UNKNOWN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ORDERED_LIST:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ROUND_ROBIN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->COMPLETELY_RANDOM:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->WEIGHTED_RANDOM:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    aput-object v1, v0, v6

    sput-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->$VALUES:[Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->$VALUES:[Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    invoke-virtual {v0}, [Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    return-object v0
.end method
