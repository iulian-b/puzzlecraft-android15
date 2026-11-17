.class public final enum Lcom/chillingo/liboffers/OfferSession$StoreType;
.super Ljava/lang/Enum;
.source "OfferSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/OfferSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/liboffers/OfferSession$StoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/liboffers/OfferSession$StoreType;

.field public static final enum STORE_TYPE_AMAZON:Lcom/chillingo/liboffers/OfferSession$StoreType;

.field public static final enum STORE_TYPE_GOOGLE_PLAY:Lcom/chillingo/liboffers/OfferSession$StoreType;

.field public static final enum STORE_TYPE_SAMSUNG:Lcom/chillingo/liboffers/OfferSession$StoreType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$StoreType;

    const-string v1, "STORE_TYPE_GOOGLE_PLAY"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/OfferSession$StoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$StoreType;->STORE_TYPE_GOOGLE_PLAY:Lcom/chillingo/liboffers/OfferSession$StoreType;

    .line 127
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$StoreType;

    const-string v1, "STORE_TYPE_AMAZON"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/liboffers/OfferSession$StoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$StoreType;->STORE_TYPE_AMAZON:Lcom/chillingo/liboffers/OfferSession$StoreType;

    .line 129
    new-instance v0, Lcom/chillingo/liboffers/OfferSession$StoreType;

    const-string v1, "STORE_TYPE_SAMSUNG"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/liboffers/OfferSession$StoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$StoreType;->STORE_TYPE_SAMSUNG:Lcom/chillingo/liboffers/OfferSession$StoreType;

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chillingo/liboffers/OfferSession$StoreType;

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$StoreType;->STORE_TYPE_GOOGLE_PLAY:Lcom/chillingo/liboffers/OfferSession$StoreType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$StoreType;->STORE_TYPE_AMAZON:Lcom/chillingo/liboffers/OfferSession$StoreType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$StoreType;->STORE_TYPE_SAMSUNG:Lcom/chillingo/liboffers/OfferSession$StoreType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/chillingo/liboffers/OfferSession$StoreType;->$VALUES:[Lcom/chillingo/liboffers/OfferSession$StoreType;

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
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/liboffers/OfferSession$StoreType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    const-class v0, Lcom/chillingo/liboffers/OfferSession$StoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/OfferSession$StoreType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/liboffers/OfferSession$StoreType;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$StoreType;->$VALUES:[Lcom/chillingo/liboffers/OfferSession$StoreType;

    invoke-virtual {v0}, [Lcom/chillingo/liboffers/OfferSession$StoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/liboffers/OfferSession$StoreType;

    return-object v0
.end method
