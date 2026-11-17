.class public final enum Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;
.super Ljava/lang/Enum;
.source "OfferSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/OfferSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OffersUpdateMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

.field public static final enum LINKED_TO_DRAW:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

.field public static final enum TIMER:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    const-string v1, "LINKED_TO_DRAW"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->LINKED_TO_DRAW:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .line 116
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->TIMER:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->LINKED_TO_DRAW:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->TIMER:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->$VALUES:[Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

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
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->$VALUES:[Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    invoke-virtual {v0}, [Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    return-object v0
.end method
