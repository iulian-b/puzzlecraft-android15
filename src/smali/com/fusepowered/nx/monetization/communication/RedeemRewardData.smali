.class public Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;
.super Ljava/lang/Object;
.source "RedeemRewardData.java"


# instance fields
.field messages:Ljava/util/List;
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

.field receipts:Ljava/util/List;
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

.field redeemedBalances:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "balances"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/reward/Reward;",
            ">;"
        }
    .end annotation
.end field

.field unRedeemedBalances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/nx/monetization/business/reward/Reward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceipts()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->receipts:Ljava/util/List;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->receipts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRewards()[Lcom/fusepowered/nx/monetization/business/reward/Reward;
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "rewards":[Lcom/fusepowered/nx/monetization/business/reward/Reward;
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->redeemedBalances:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->redeemedBalances:Ljava/util/List;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->redeemedBalances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/fusepowered/nx/monetization/business/reward/Reward;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "rewards":[Lcom/fusepowered/nx/monetization/business/reward/Reward;
    check-cast v0, [Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .line 64
    .restart local v0    # "rewards":[Lcom/fusepowered/nx/monetization/business/reward/Reward;
    :cond_0
    return-object v0
.end method

.method getUnredeemedPayoutIds()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "payoutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .line 42
    .local v0, "balance":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getPayoutId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getPayoutId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    .end local v0    # "balance":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public showAlert(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->messages:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/DialogManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/DialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->messages:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/nx/monetization/manager/DialogManager;->showMessagesDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/app/Dialog;

    .line 56
    :cond_0
    return-void
.end method
