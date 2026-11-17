.class Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;
.super Ljava/lang/Object;
.source "ServerResponseHandler.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fireRedeemBalanceListener(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V
    .locals 4
    .param p1, "data"    # Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;

    .prologue
    .line 131
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->isUsingRewardListener()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getRewardListener()Lcom/fusepowered/nx/monetization/listeners/RewardListener;

    move-result-object v2

    .line 133
    .local v2, "listener":Lcom/fusepowered/nx/monetization/listeners/RewardListener;
    if-nez v2, :cond_1

    .line 153
    .end local v2    # "listener":Lcom/fusepowered/nx/monetization/listeners/RewardListener;
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local v2    # "listener":Lcom/fusepowered/nx/monetization/listeners/RewardListener;
    :cond_1
    invoke-interface {v2, p1}, Lcom/fusepowered/nx/monetization/listeners/RewardListener;->onRedeem(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V

    goto :goto_0

    .line 140
    .end local v2    # "listener":Lcom/fusepowered/nx/monetization/listeners/RewardListener;
    :cond_2
    new-instance v0, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;

    invoke-direct {v0, p1}, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;-><init>(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V

    .line 142
    .local v0, "currencyData":Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getCurrencyListener()Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;

    move-result-object v1

    .line 143
    .local v1, "currencyListener":Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;
    if-eqz v1, :cond_0

    .line 147
    instance-of v3, v1, Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerV1;

    if-eqz v3, :cond_3

    .line 148
    check-cast v1, Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerV1;

    .end local v1    # "currencyListener":Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;->getBalances()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerV1;->onRedeem(Ljava/util/List;)V

    goto :goto_0

    .line 149
    .restart local v1    # "currencyListener":Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;
    :cond_3
    instance-of v3, v1, Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerV2;

    if-eqz v3, :cond_0

    .line 150
    check-cast v1, Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerV2;

    .end local v1    # "currencyListener":Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;
    invoke-interface {v1, v0}, Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerV2;->onRedeem(Lcom/fusepowered/nx/monetization/communication/RedeemCurrencyData;)V

    goto :goto_0
.end method

.method private getRedeemedBalances(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;Ljava/util/List;)V
    .locals 1
    .param p1, "data"    # Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/Receipt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "receipts":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/Receipt;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->isUsingRewardListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;->getRedeemedRewardBalances(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;Ljava/util/List;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;->getRedeemedCurrencyBalances_OLD(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;Ljava/util/List;)V

    goto :goto_0
.end method

.method private getRedeemedCurrencyBalances_OLD(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;Ljava/util/List;)V
    .locals 12
    .param p1, "data"    # Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/Receipt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p2, "receipts":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/Receipt;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->receipts:Ljava/util/List;

    .line 216
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->redeemedBalances:Ljava/util/List;

    .line 219
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v2, "balances":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fusepowered/nx/monetization/business/reward/Reward;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/nx/monetization/business/Receipt;

    .line 226
    .local v4, "receipt":Lcom/fusepowered/nx/monetization/business/Receipt;
    iget-object v7, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/Receipt;->getPayoutId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .line 227
    .local v1, "balance":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->receipts:Ljava/util/List;

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 229
    iget-object v7, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->receipts:Ljava/util/List;

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getRewardId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .line 234
    .local v5, "storedBalance":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    if-nez v5, :cond_2

    .line 236
    new-instance v5, Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .end local v5    # "storedBalance":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    invoke-direct {v5, v1}, Lcom/fusepowered/nx/monetization/business/reward/Reward;-><init>(Lcom/fusepowered/nx/monetization/business/reward/Reward;)V

    .line 238
    .restart local v5    # "storedBalance":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->setAmount(D)V

    .line 239
    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getRewardId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_2
    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getAmount()D

    move-result-wide v8

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getAmount()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->setAmount(D)V

    .line 244
    iget-object v7, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getPayoutId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 248
    .end local v1    # "balance":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    .end local v4    # "receipt":Lcom/fusepowered/nx/monetization/business/Receipt;
    .end local v5    # "storedBalance":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .line 249
    .local v0, "b":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    iget-object v7, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->redeemedBalances:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    .end local v0    # "b":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    :cond_4
    iget-object v6, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .line 254
    .local v3, "r":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unredeemed balance still exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getPayoutId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/nx/common/Log;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 256
    .end local v3    # "r":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    :cond_5
    return-void
.end method

.method private getRedeemedRewardBalances(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;Ljava/util/List;)V
    .locals 6
    .param p1, "rewardData"    # Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/Receipt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "receipts":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/Receipt;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->receipts:Ljava/util/List;

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->redeemedBalances:Ljava/util/List;

    .line 181
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/nx/monetization/business/Receipt;

    .line 186
    .local v2, "receipt":Lcom/fusepowered/nx/monetization/business/Receipt;
    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/business/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->receipts:Ljava/util/List;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/business/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    iget-object v4, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->receipts:Ljava/util/List;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/business/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    iget-object v4, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/business/Receipt;->getPayoutId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .line 191
    .local v0, "newReward":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    if-nez v0, :cond_1

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unredeemed reward not found with payout ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/business/Receipt;->getPayoutId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v4, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->redeemedBalances:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v4, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getPayoutId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    .end local v0    # "newReward":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    .end local v2    # "receipt":Lcom/fusepowered/nx/monetization/business/Receipt;
    :cond_2
    iget-object v3, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .line 204
    .local v1, "r":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unredeemed balance still exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getPayoutId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/nx/common/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    .end local v1    # "r":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    :cond_3
    return-void
.end method

.method private handleCreateSessionResponseData(Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;)V
    .locals 4
    .param p1, "sessionResponse"    # Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    .prologue
    .line 72
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->setSessionResponse(Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;)V

    .line 75
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "previousDeviceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->storeDeviceId(Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->storeBalances(Ljava/util/Map;)V

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->isCurrencyEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setCurrencySupport(Z)V

    .line 82
    invoke-static {}, Lcom/fusepowered/nx/common/DeviceManager;->updateDeviceId()V

    .line 83
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->getFreeSpaceMinMegabytes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->getFreeSpaceMinMegabytes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateCacheUtilFreeSpaceMin(J)V

    .line 86
    :cond_2
    return-void
.end method

.method private handleNewBalances(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;Ljava/util/List;)V
    .locals 4
    .param p1, "data"    # Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/reward/Reward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "newBalances":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/reward/Reward;>;"
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->getBalances()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    .line 108
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .line 110
    .local v0, "balance":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    iget-object v2, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getPayoutId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    .end local v0    # "balance":Lcom/fusepowered/nx/monetization/business/reward/Reward;
    :cond_0
    iget-object v1, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-static {v1}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->storeBalances(Ljava/util/Map;)V

    .line 114
    return-void
.end method


# virtual methods
.method public handleCreateSession(Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;)V
    .locals 2
    .param p1, "sessionResponse"    # Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->getSession()Lcom/fusepowered/nx/monetization/business/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;->handleCreateSessionResponseData(Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;)V

    .line 61
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->storeSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServerResponseHandler: Unexpected exception caught while handling CreateSession request."

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public handleGetDeviceBalance(Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;)Z
    .locals 3
    .param p1, "getDeviceBalance"    # Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    new-instance v0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;-><init>()V

    .line 93
    .local v0, "data":Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;->getBalances()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;->handleNewBalances(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;Ljava/util/List;)V

    .line 94
    iget-object v2, v0, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 95
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->redeemCurrency(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v2, 0x1

    .line 103
    .end local v0    # "data":Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;
    :goto_0
    return v2

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ServerResponseHandler: Unexpected exception caught while handling GetDeviceBalance request."

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public handleRedeemCurrency(Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V
    .locals 2
    .param p1, "redeemDeviceBalanceResponse"    # Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;
    .param p2, "balanceData"    # Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;->getMessages()Ljava/util/List;

    move-result-object v1

    iput-object v1, p2, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->messages:Ljava/util/List;

    .line 120
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;->getReceipts()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;->getRedeemedBalances(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;Ljava/util/List;)V

    .line 121
    invoke-direct {p0, p2}, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;->fireRedeemBalanceListener(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V

    .line 122
    iget-object v1, p2, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    invoke-static {v1}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->storeBalances(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServerResponseHandler: Unexpected exception caught while handling RedeemCurrency request."

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
