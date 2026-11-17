.class public final enum Lcom/chillingo/liboffers/OfferSession$OffersCorner;
.super Ljava/lang/Enum;
.source "OfferSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/OfferSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OffersCorner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/liboffers/OfferSession$OffersCorner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/liboffers/OfferSession$OffersCorner;

.field public static final enum OFFERS_CORNER_BOTTOM_LEFT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

.field public static final enum OFFERS_CORNER_BOTTOM_RIGHT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

.field public static final enum OFFERS_CORNER_TOP_LEFT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

.field public static final enum OFFERS_CORNER_TOP_RIGHT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    const-string v1, "OFFERS_CORNER_BOTTOM_RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_BOTTOM_RIGHT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 78
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    const-string v1, "OFFERS_CORNER_BOTTOM_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_BOTTOM_LEFT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 80
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    const-string v1, "OFFERS_CORNER_TOP_LEFT"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_TOP_LEFT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 82
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    const-string v1, "OFFERS_CORNER_TOP_RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_TOP_RIGHT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_BOTTOM_RIGHT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_BOTTOM_LEFT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_TOP_LEFT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_TOP_RIGHT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->$VALUES:[Lcom/chillingo/liboffers/OfferSession$OffersCorner;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->$VALUES:[Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    invoke-virtual {v0}, [Lcom/chillingo/liboffers/OfferSession$OffersCorner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    return-object v0
.end method
