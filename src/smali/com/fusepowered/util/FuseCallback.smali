.class public abstract Lcom/fusepowered/util/FuseCallback;
.super Ljava/lang/Object;
.source "FuseCallback.java"


# instance fields
.field public ErrorCode:Lcom/fusepowered/FuseError;

.field private adFetched:Z

.field fuseGameDataError:Lcom/fusepowered/FuseError;

.field public fuseId:Ljava/lang/String;

.field gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

.field public isClientRequestAd:Z

.field public requestId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v1, p0, Lcom/fusepowered/util/FuseCallback;->adFetched:Z

    .line 17
    new-instance v0, Lcom/fusepowered/util/GameKeyValuePairs;

    invoke-direct {v0}, Lcom/fusepowered/util/GameKeyValuePairs;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/util/FuseCallback;->gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

    .line 21
    iput-boolean v1, p0, Lcom/fusepowered/util/FuseCallback;->isClientRequestAd:Z

    return-void
.end method


# virtual methods
.method public abstract IAPOfferAcceptedWithObject(Lcom/fusepowered/IAPOfferInfo;)V
.end method

.method public abstract accountLoginComplete(ILjava/lang/String;)V
.end method

.method public abstract accountLoginError(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
.end method

.method public abstract adAvailabilityResponse(II)V
.end method

.method public abstract adClicked()V
.end method

.method public adDidLoad()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public abstract adDisplayed()V
.end method

.method public abstract adFailedToDisplay()V
.end method

.method public abstract adFailedToLoad()V
.end method

.method public abstract adWillClose()V
.end method

.method public abstract adWillLeaveApp()V
.end method

.method public abstract attackRobberyLogError(Lcom/fusepowered/FuseError;)V
.end method

.method public abstract attackRobberyLogReceived(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract callback()V
.end method

.method public abstract chatListError(Lcom/fusepowered/FuseError;)V
.end method

.method public abstract chatListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public didRecieveGCMRegistrationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "newRegistrationID"    # Ljava/lang/String;

    .prologue
    .line 200
    return-void
.end method

.method public displayAd()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/util/FuseCallback;->adFetched:Z

    .line 150
    return-void
.end method

.method public abstract enemiesListError(Lcom/fusepowered/FuseError;)V
.end method

.method public abstract enemiesListResult(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract friendAccepted(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
.end method

.method public abstract friendAdded(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
.end method

.method public abstract friendRejected(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
.end method

.method public abstract friendRemoved(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
.end method

.method public abstract friendsListError(Lcom/fusepowered/FuseError;)V
.end method

.method public abstract friendsListUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract friendsMigrated(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
.end method

.method public abstract gameConfigurationReceived()V
.end method

.method public abstract gameDataError(Lcom/fusepowered/FuseError;)V
.end method

.method public abstract gameDataError(Lcom/fusepowered/FuseError;I)V
.end method

.method public abstract gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)V
.end method

.method public abstract gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V
.end method

.method public abstract gameDataSetAcknowledged(I)V
.end method

.method public handleAdClickWithUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 204
    return-void
.end method

.method public abstract incentiveActionCompletedStatus(Ljava/lang/String;)V
.end method

.method public isAdFetched()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/fusepowered/util/FuseCallback;->adFetched:Z

    return v0
.end method

.method public abstract mailAcknowledged(ILjava/lang/String;I)V
.end method

.method public abstract mailError(Lcom/fusepowered/FuseError;I)V
.end method

.method public abstract mailListError(Lcom/fusepowered/FuseError;)V
.end method

.method public abstract mailListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract notificationAction(Ljava/lang/String;)V
.end method

.method public parseResponse(Lcom/fusepowered/util/Response;Lcom/fusepowered/util/ActionType;Ljava/lang/String;)Z
    .locals 2
    .param p1, "response"    # Lcom/fusepowered/util/Response;
    .param p2, "actionType"    # Lcom/fusepowered/util/ActionType;
    .param p3, "gameDataRequestId"    # Ljava/lang/String;

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/fusepowered/util/Response;->getXml()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "responseXml":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    if-eqz p2, :cond_0

    .line 29
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-static {p2, p3, v0, v1, p0}, Lcom/fusepowered/util/XMLParser;->parseResponse(Lcom/fusepowered/util/ActionType;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;Lcom/fusepowered/util/FuseCallback;)Z

    move-result v1

    .line 33
    .end local v0    # "responseXml":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract purchaseVerification(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract rewardRedeemed(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract rewardedAdCompleteWithObject(Lcom/fusepowered/RewardedInfo;)V
.end method

.method public abstract rewardedVideoCompleted(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sessionLoginError(Lcom/fusepowered/FuseError;)V
.end method

.method public abstract sessionStartReceived()V
.end method

.method public setAdFetched(Z)V
    .locals 0
    .param p1, "adFetched"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/fusepowered/util/FuseCallback;->adFetched:Z

    .line 157
    return-void
.end method

.method public setFuseGameDataError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fusepowered/util/FuseCallback;->fuseGameDataError:Lcom/fusepowered/FuseError;

    .line 136
    invoke-virtual {p0, p1}, Lcom/fusepowered/util/FuseCallback;->gameDataError(Lcom/fusepowered/FuseError;)V

    .line 137
    return-void
.end method

.method public setFuseGameDataError(Lcom/fusepowered/FuseError;I)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;
    .param p2, "requestId"    # I

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fusepowered/util/FuseCallback;->fuseGameDataError:Lcom/fusepowered/FuseError;

    .line 130
    iput p2, p0, Lcom/fusepowered/util/FuseCallback;->requestId:I

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/util/FuseCallback;->gameDataError(Lcom/fusepowered/FuseError;I)V

    .line 132
    return-void
.end method

.method public setGameData(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)V
    .locals 6
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;

    .prologue
    .line 108
    iput-object p2, p0, Lcom/fusepowered/util/FuseCallback;->gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

    .line 109
    iput-object p1, p0, Lcom/fusepowered/util/FuseCallback;->fuseId:Ljava/lang/String;

    .line 110
    invoke-virtual {p2}, Lcom/fusepowered/util/GameKeyValuePairs;->getRequestIdToObjectMapKeyMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 111
    .local v3, "requestIdEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 113
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "requestId":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, "rowKey":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/fusepowered/util/GameKeyValuePairs;->setReqId(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2, v4}, Lcom/fusepowered/util/GameKeyValuePairs;->setRowKey(Ljava/lang/String;)V

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, p1, p2, v5}, Lcom/fusepowered/util/FuseCallback;->gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V

    goto :goto_0

    .line 124
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "requestId":Ljava/lang/String;
    .end local v4    # "rowKey":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/fusepowered/util/GameKeyValuePairs;->getReqId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, p1, p2, v5}, Lcom/fusepowered/util/FuseCallback;->gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V

    .line 126
    :cond_1
    return-void
.end method

.method public abstract timeUpdated(Ljava/util/Date;)V
.end method

.method public abstract virtualGoodsOfferAcceptedWithObject(Lcom/fusepowered/VGOfferInfo;)V
.end method
