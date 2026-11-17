.class public Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;
.super Ljava/lang/Object;
.source "RedeemCurrencyData.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private messages:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "messages"
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
        value = "receipts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redeemedBalances:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "balances"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/reward/Balance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V
    .locals 6
    .param p1, "d"    # Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->receipts:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;->receipts:Ljava/util/List;

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->messages:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;->messages:Ljava/util/List;

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;->redeemedBalances:Ljava/util/List;

    .line 40
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->getRewards()[Lcom/fusepowered/nx/monetization/business/reward/Reward;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 41
    .local v1, "r":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    new-instance v0, Lcom/fusepowered/nx/monetization/business/reward/Balance;

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/monetization/business/reward/Balance;-><init>(Lcom/fusepowered/nx/monetization/business/reward/Reward;)V

    .line 42
    .local v0, "b":Lcom/fusepowered/nx/monetization/business/reward/Balance;
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;->redeemedBalances:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "b":Lcom/fusepowered/nx/monetization/business/reward/Balance;
    .end local v1    # "r":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    :cond_0
    return-void
.end method


# virtual methods
.method public getBalances()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/reward/Balance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;->redeemedBalances:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getReceipts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;->receipts:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public showAlert(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;->messages:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/DialogManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/DialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;->messages:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/nx/monetization/manager/DialogManager;->showMessagesDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/app/Dialog;

    .line 59
    :cond_0
    return-void
.end method
