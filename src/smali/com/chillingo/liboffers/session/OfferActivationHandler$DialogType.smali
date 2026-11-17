.class public final enum Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
.super Ljava/lang/Enum;
.source "OfferActivationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/session/OfferActivationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

.field public static final enum DIALOG_TYPE_NOT_REQUIRED:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

.field public static final enum DIALOG_TYPE_OPEN_URL:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    const-string v1, "DIALOG_TYPE_NOT_REQUIRED"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->DIALOG_TYPE_NOT_REQUIRED:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    .line 18
    new-instance v0, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    const-string v1, "DIALOG_TYPE_OPEN_URL"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->DIALOG_TYPE_OPEN_URL:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    sget-object v1, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->DIALOG_TYPE_NOT_REQUIRED:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->DIALOG_TYPE_OPEN_URL:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->$VALUES:[Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->$VALUES:[Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    invoke-virtual {v0}, [Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    return-object v0
.end method
