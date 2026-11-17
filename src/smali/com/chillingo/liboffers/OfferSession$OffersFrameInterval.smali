.class public final enum Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;
.super Ljava/lang/Enum;
.source "OfferSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/OfferSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OffersFrameInterval"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

.field public static final enum OFFERS_FRAME_INTERVAL_HIGH:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

.field public static final enum OFFERS_FRAME_INTERVAL_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

.field public static final enum OFFERS_FRAME_INTERVAL_MEDIUM:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

.field public static final enum OFFERS_FRAME_INTERVAL_VERY_HIGH:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

.field public static final enum OFFERS_FRAME_INTERVAL_VERY_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    const-string v1, "OFFERS_FRAME_INTERVAL_VERY_LOW"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_VERY_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 92
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    const-string v1, "OFFERS_FRAME_INTERVAL_LOW"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 94
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    const-string v1, "OFFERS_FRAME_INTERVAL_MEDIUM"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_MEDIUM:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 96
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    const-string v1, "OFFERS_FRAME_INTERVAL_HIGH"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_HIGH:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 98
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    const-string v1, "OFFERS_FRAME_INTERVAL_VERY_HIGH"

    invoke-direct {v0, v1, v6}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_VERY_HIGH:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_VERY_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_MEDIUM:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_HIGH:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_VERY_HIGH:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    aput-object v1, v0, v6

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->$VALUES:[Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->$VALUES:[Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-virtual {v0}, [Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
