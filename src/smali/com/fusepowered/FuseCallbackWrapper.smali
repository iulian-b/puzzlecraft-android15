.class public Lcom/fusepowered/FuseCallbackWrapper;
.super Lcom/fusepowered/util/FuseCallback;
.source "FuseCallbackWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FuseSDK"


# instance fields
.field private listener:Lcom/fusepowered/FuseSDKListener;


# direct methods
.method public constructor <init>(Lcom/fusepowered/FuseSDKListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/FuseSDKListener;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fusepowered/util/FuseCallback;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    .line 24
    return-void
.end method


# virtual methods
.method public IAPOfferAcceptedWithObject(Lcom/fusepowered/IAPOfferInfo;)V
    .locals 1
    .param p1, "offer"    # Lcom/fusepowered/IAPOfferInfo;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListener;->IAPOfferAcceptedWithObject(Lcom/fusepowered/IAPOfferInfo;)V

    .line 282
    :cond_0
    return-void
.end method

.method public accountLoginComplete(ILjava/lang/String;)V
    .locals 1
    .param p1, "accountType"    # I
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/FuseSDKListener;->accountLoginComplete(ILjava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public accountLoginError(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 1
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/FuseSDKListener;->accountLoginError(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    .line 69
    :cond_0
    return-void
.end method

.method public adAvailabilityResponse(II)V
    .locals 2
    .param p1, "available"    # I
    .param p2, "error"    # I

    .prologue
    const/4 v0, 0x1

    .line 164
    iget-object v1, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/fusepowered/FuseSDKListener;->adAvailabilityResponse(ZI)V

    .line 166
    :cond_0
    return-void

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adClicked()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public adDisplayed()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public adFailedToDisplay()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0}, Lcom/fusepowered/FuseSDKListener;->adFailedToDisplay()V

    .line 255
    :cond_0
    return-void
.end method

.method public adFailedToLoad()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public adWillClose()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0}, Lcom/fusepowered/FuseSDKListener;->adWillClose()V

    .line 248
    :cond_0
    return-void
.end method

.method public adWillLeaveApp()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public attackRobberyLogError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 232
    return-void
.end method

.method public attackRobberyLogReceived(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "attackRoberyLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/UserTransactionLog;>;"
    return-void
.end method

.method public callback()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public chatListError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 140
    return-void
.end method

.method public chatListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p2, "fuse_id"    # Ljava/lang/String;
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

    .prologue
    .line 135
    .local p1, "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    return-void
.end method

.method public didRecieveGCMRegistrationToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "newRegistrationID"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListener;->didRecieveGCMRegistrationToken(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method public enemiesListError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 222
    return-void
.end method

.method public enemiesListResult(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "enemiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    return-void
.end method

.method public friendAccepted(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 2
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    iget-object v1, p0, Lcom/fusepowered/FuseCallbackWrapper;->fuseId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/fusepowered/FuseSDKListener;->friendAccepted(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    .line 103
    :cond_0
    return-void
.end method

.method public friendAdded(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 1
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/FuseSDKListener;->friendAdded(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    .line 91
    :cond_0
    return-void
.end method

.method public friendRejected(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 2
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    iget-object v1, p0, Lcom/fusepowered/FuseCallbackWrapper;->fuseId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/fusepowered/FuseSDKListener;->friendRejected(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    .line 110
    :cond_0
    return-void
.end method

.method public friendRemoved(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 1
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/FuseSDKListener;->friendRemoved(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    .line 97
    :cond_0
    return-void
.end method

.method public friendsListError(Lcom/fusepowered/FuseError;)V
    .locals 1
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListener;->friendsListError(Lcom/fusepowered/FuseError;)V

    .line 130
    :cond_0
    return-void
.end method

.method public friendsListUpdated(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListener;->friendsListUpdated(Ljava/util/ArrayList;)V

    .line 124
    :cond_0
    return-void
.end method

.method public friendsMigrated(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 1
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "migrateFriendsError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/FuseSDKListener;->friendsMigrated(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    .line 117
    :cond_0
    return-void
.end method

.method public gameConfigurationReceived()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0}, Lcom/fusepowered/FuseSDKListener;->gameConfigurationReceived()V

    .line 51
    :cond_0
    return-void
.end method

.method public gameDataError(Lcom/fusepowered/FuseError;)V
    .locals 2
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    instance-of v1, v1, Lcom/fusepowered/FuseSDKListenerWithGameData;

    if-eqz v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    check-cast v0, Lcom/fusepowered/FuseSDKListenerWithGameData;

    .line 194
    .local v0, "l":Lcom/fusepowered/FuseSDKListenerWithGameData;
    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/fusepowered/FuseSDKListenerWithGameData;->gameDataError(Lcom/fusepowered/FuseError;I)V

    .line 196
    .end local v0    # "l":Lcom/fusepowered/FuseSDKListenerWithGameData;
    :cond_0
    return-void
.end method

.method public gameDataError(Lcom/fusepowered/FuseError;I)V
    .locals 2
    .param p1, "error"    # Lcom/fusepowered/FuseError;
    .param p2, "requestId"    # I

    .prologue
    .line 200
    iget-object v1, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    instance-of v1, v1, Lcom/fusepowered/FuseSDKListenerWithGameData;

    if-eqz v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    check-cast v0, Lcom/fusepowered/FuseSDKListenerWithGameData;

    .line 202
    .local v0, "l":Lcom/fusepowered/FuseSDKListenerWithGameData;
    invoke-interface {v0, p1, p2}, Lcom/fusepowered/FuseSDKListenerWithGameData;->gameDataError(Lcom/fusepowered/FuseError;I)V

    .line 204
    .end local v0    # "l":Lcom/fusepowered/FuseSDKListenerWithGameData;
    :cond_0
    return-void
.end method

.method public gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)V
    .locals 2
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    instance-of v1, v1, Lcom/fusepowered/FuseSDKListenerWithGameData;

    if-eqz v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    check-cast v0, Lcom/fusepowered/FuseSDKListenerWithGameData;

    .line 178
    .local v0, "l":Lcom/fusepowered/FuseSDKListenerWithGameData;
    const/4 v1, -0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/fusepowered/FuseSDKListenerWithGameData;->gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V

    .line 180
    .end local v0    # "l":Lcom/fusepowered/FuseSDKListenerWithGameData;
    :cond_0
    return-void
.end method

.method public gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V
    .locals 2
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p3, "requestId"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    instance-of v1, v1, Lcom/fusepowered/FuseSDKListenerWithGameData;

    if-eqz v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    check-cast v0, Lcom/fusepowered/FuseSDKListenerWithGameData;

    .line 186
    .local v0, "l":Lcom/fusepowered/FuseSDKListenerWithGameData;
    invoke-interface {v0, p1, p2, p3}, Lcom/fusepowered/FuseSDKListenerWithGameData;->gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V

    .line 188
    .end local v0    # "l":Lcom/fusepowered/FuseSDKListenerWithGameData;
    :cond_0
    return-void
.end method

.method public gameDataSetAcknowledged(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    instance-of v1, v1, Lcom/fusepowered/FuseSDKListenerWithGameData;

    if-eqz v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    check-cast v0, Lcom/fusepowered/FuseSDKListenerWithGameData;

    .line 210
    .local v0, "l":Lcom/fusepowered/FuseSDKListenerWithGameData;
    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListenerWithGameData;->gameDataSetAcknowledged(I)V

    .line 212
    .end local v0    # "l":Lcom/fusepowered/FuseSDKListenerWithGameData;
    :cond_0
    return-void
.end method

.method public handleAdClickWithUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    instance-of v1, v1, Lcom/fusepowered/FuseSDKListenerWithAdClick;

    if-eqz v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    check-cast v0, Lcom/fusepowered/FuseSDKListenerWithAdClick;

    .line 301
    .local v0, "l":Lcom/fusepowered/FuseSDKListenerWithAdClick;
    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListenerWithAdClick;->handleAdClickWithUrl(Ljava/lang/String;)V

    .line 305
    .end local v0    # "l":Lcom/fusepowered/FuseSDKListenerWithAdClick;
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string v1, "FuseSDK"

    const-string v2, "App should be manually handling ad click urls, but the listener does not implement FuseSDKListenerWithAdClick"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public incentiveActionCompletedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method public mailAcknowledged(ILjava/lang/String;I)V
    .locals 0
    .param p1, "messageId"    # I
    .param p2, "fuse_id"    # Ljava/lang/String;
    .param p3, "requestID"    # I

    .prologue
    .line 155
    return-void
.end method

.method public mailError(Lcom/fusepowered/FuseError;I)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;
    .param p2, "requestID"    # I

    .prologue
    .line 160
    return-void
.end method

.method public mailListError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 150
    return-void
.end method

.method public mailListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p2, "fuse_id"    # Ljava/lang/String;
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

    .prologue
    .line 145
    .local p1, "mailMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    return-void
.end method

.method public notificationAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListener;->notificationAction(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public purchaseVerification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "verified"    # I
    .param p2, "transaction_id"    # Ljava/lang/String;
    .param p3, "originalTransactionID"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/fusepowered/FuseSDKListener;->purchaseVerification(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method

.method public rewardRedeemed(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "incentiveId"    # I
    .param p2, "amount"    # I
    .param p3, "rewardItemId"    # Ljava/lang/String;
    .param p4, "rewardItemName"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public rewardedAdCompleteWithObject(Lcom/fusepowered/RewardedInfo;)V
    .locals 1
    .param p1, "rewardInfo"    # Lcom/fusepowered/RewardedInfo;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListener;->rewardedAdCompleteWithObject(Lcom/fusepowered/RewardedInfo;)V

    .line 276
    :cond_0
    return-void
.end method

.method public rewardedVideoCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "adZone"    # Ljava/lang/String;

    .prologue
    .line 260
    return-void
.end method

.method public sessionLoginError(Lcom/fusepowered/FuseError;)V
    .locals 1
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListener;->sessionLoginError(Lcom/fusepowered/FuseError;)V

    .line 45
    :cond_0
    return-void
.end method

.method public sessionStartReceived()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0}, Lcom/fusepowered/FuseSDKListener;->sessionStartReceived()V

    .line 39
    :cond_0
    return-void
.end method

.method public setListener(Lcom/fusepowered/FuseSDKListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/FuseSDKListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    .line 28
    return-void
.end method

.method public timeUpdated(Ljava/util/Date;)V
    .locals 1
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListener;->timeUpdated(Ljava/util/Date;)V

    .line 57
    :cond_0
    return-void
.end method

.method public virtualGoodsOfferAcceptedWithObject(Lcom/fusepowered/VGOfferInfo;)V
    .locals 1
    .param p1, "offer"    # Lcom/fusepowered/VGOfferInfo;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/fusepowered/FuseCallbackWrapper;->listener:Lcom/fusepowered/FuseSDKListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/FuseSDKListener;->virtualGoodsOfferAcceptedWithObject(Lcom/fusepowered/VGOfferInfo;)V

    .line 288
    :cond_0
    return-void
.end method
