.class public final enum Lcom/chillingo/liboffers/model/Offer$OfferType;
.super Ljava/lang/Enum;
.source "Offer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/model/Offer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/liboffers/model/Offer$OfferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/liboffers/model/Offer$OfferType;

.field public static final enum OFFER_TYPE_AMAZON:Lcom/chillingo/liboffers/model/Offer$OfferType;

.field public static final enum OFFER_TYPE_GOOGLEPLAY:Lcom/chillingo/liboffers/model/Offer$OfferType;

.field public static final enum OFFER_TYPE_HREF:Lcom/chillingo/liboffers/model/Offer$OfferType;

.field public static final enum OFFER_TYPE_INTERSTITIAL:Lcom/chillingo/liboffers/model/Offer$OfferType;

.field public static final enum OFFER_TYPE_SAMSUNG:Lcom/chillingo/liboffers/model/Offer$OfferType;

.field public static final enum OFFER_TYPE_UNKNOWN:Lcom/chillingo/liboffers/model/Offer$OfferType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/chillingo/liboffers/model/Offer$OfferType;

    const-string v1, "OFFER_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/liboffers/model/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_UNKNOWN:Lcom/chillingo/liboffers/model/Offer$OfferType;

    .line 31
    new-instance v0, Lcom/chillingo/liboffers/model/Offer$OfferType;

    const-string v1, "OFFER_TYPE_HREF"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/liboffers/model/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_HREF:Lcom/chillingo/liboffers/model/Offer$OfferType;

    .line 32
    new-instance v0, Lcom/chillingo/liboffers/model/Offer$OfferType;

    const-string v1, "OFFER_TYPE_INTERSTITIAL"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/liboffers/model/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_INTERSTITIAL:Lcom/chillingo/liboffers/model/Offer$OfferType;

    .line 33
    new-instance v0, Lcom/chillingo/liboffers/model/Offer$OfferType;

    const-string v1, "OFFER_TYPE_GOOGLEPLAY"

    invoke-direct {v0, v1, v6}, Lcom/chillingo/liboffers/model/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_GOOGLEPLAY:Lcom/chillingo/liboffers/model/Offer$OfferType;

    .line 34
    new-instance v0, Lcom/chillingo/liboffers/model/Offer$OfferType;

    const-string v1, "OFFER_TYPE_AMAZON"

    invoke-direct {v0, v1, v7}, Lcom/chillingo/liboffers/model/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_AMAZON:Lcom/chillingo/liboffers/model/Offer$OfferType;

    .line 35
    new-instance v0, Lcom/chillingo/liboffers/model/Offer$OfferType;

    const-string v1, "OFFER_TYPE_SAMSUNG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/model/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_SAMSUNG:Lcom/chillingo/liboffers/model/Offer$OfferType;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/chillingo/liboffers/model/Offer$OfferType;

    sget-object v1, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_UNKNOWN:Lcom/chillingo/liboffers/model/Offer$OfferType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_HREF:Lcom/chillingo/liboffers/model/Offer$OfferType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_INTERSTITIAL:Lcom/chillingo/liboffers/model/Offer$OfferType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_GOOGLEPLAY:Lcom/chillingo/liboffers/model/Offer$OfferType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_AMAZON:Lcom/chillingo/liboffers/model/Offer$OfferType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_SAMSUNG:Lcom/chillingo/liboffers/model/Offer$OfferType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->$VALUES:[Lcom/chillingo/liboffers/model/Offer$OfferType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/liboffers/model/Offer$OfferType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/chillingo/liboffers/model/Offer$OfferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/model/Offer$OfferType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/liboffers/model/Offer$OfferType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->$VALUES:[Lcom/chillingo/liboffers/model/Offer$OfferType;

    invoke-virtual {v0}, [Lcom/chillingo/liboffers/model/Offer$OfferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/liboffers/model/Offer$OfferType;

    return-object v0
.end method
