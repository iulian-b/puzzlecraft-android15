.class public Lcom/fusepowered/nx/monetization/business/Receipt;
.super Ljava/lang/Object;
.source "Receipt.java"


# instance fields
.field private amount:D
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Amount"
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "DisplayName"
    .end annotation
.end field

.field private externalCurrencyId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ExternalCurrencyId"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private payoutId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "PayoutId"
    .end annotation
.end field

.field private receiptId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ReceiptId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/Receipt;->payoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/Receipt;->receiptId:Ljava/lang/String;

    return-object v0
.end method
