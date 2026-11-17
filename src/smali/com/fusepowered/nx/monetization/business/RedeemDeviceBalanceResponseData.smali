.class public Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;
.super Ljava/lang/Object;
.source "RedeemDeviceBalanceResponseData.java"


# instance fields
.field private log:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Log"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Message;",
            ">;"
        }
    .end annotation
.end field

.field private receipts:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Receipts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/Receipt;",
            ">;"
        }
    .end annotation
.end field

.field private violations:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Violations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Violation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getReceipts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/Receipt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;->receipts:Ljava/util/List;

    return-object v0
.end method
