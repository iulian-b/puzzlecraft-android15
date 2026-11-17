.class public final enum Lcom/fusepowered/OfferType;
.super Ljava/lang/Enum;
.source "OfferType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/OfferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/OfferType;

.field public static final enum Bonus:Lcom/fusepowered/OfferType;

.field public static final enum Discount:Lcom/fusepowered/OfferType;

.field public static final enum Standard:Lcom/fusepowered/OfferType;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7
    new-instance v0, Lcom/fusepowered/OfferType;

    const-string v1, "Discount"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/OfferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/OfferType;->Discount:Lcom/fusepowered/OfferType;

    .line 8
    new-instance v0, Lcom/fusepowered/OfferType;

    const-string v1, "Standard"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/OfferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/OfferType;->Standard:Lcom/fusepowered/OfferType;

    .line 9
    new-instance v0, Lcom/fusepowered/OfferType;

    const-string v1, "Bonus"

    invoke-direct {v0, v1, v3, v5}, Lcom/fusepowered/OfferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/OfferType;->Bonus:Lcom/fusepowered/OfferType;

    .line 6
    new-array v0, v5, [Lcom/fusepowered/OfferType;

    sget-object v1, Lcom/fusepowered/OfferType;->Discount:Lcom/fusepowered/OfferType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/OfferType;->Standard:Lcom/fusepowered/OfferType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/OfferType;->Bonus:Lcom/fusepowered/OfferType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/OfferType;->$VALUES:[Lcom/fusepowered/OfferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/fusepowered/OfferType;->value:I

    .line 16
    return-void
.end method

.method public static getType(I)Lcom/fusepowered/OfferType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 27
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    sget-object v0, Lcom/fusepowered/OfferType;->Discount:Lcom/fusepowered/OfferType;

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lcom/fusepowered/OfferType;->Standard:Lcom/fusepowered/OfferType;

    goto :goto_0

    .line 25
    :pswitch_2
    sget-object v0, Lcom/fusepowered/OfferType;->Bonus:Lcom/fusepowered/OfferType;

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/OfferType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/fusepowered/OfferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/OfferType;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/OfferType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/fusepowered/OfferType;->$VALUES:[Lcom/fusepowered/OfferType;

    invoke-virtual {v0}, [Lcom/fusepowered/OfferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/OfferType;

    return-object v0
.end method
