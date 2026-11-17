.class public Lcom/fusepowered/util/FuseCallbackImpl;
.super Lcom/fusepowered/util/FuseCallback;
.source "FuseCallbackImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fusepowered/util/FuseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public IAPOfferAcceptedWithObject(Lcom/fusepowered/IAPOfferInfo;)V
    .locals 0
    .param p1, "offer"    # Lcom/fusepowered/IAPOfferInfo;

    .prologue
    .line 228
    return-void
.end method

.method public accountLoginComplete(ILjava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # I
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method public accountLoginError(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 48
    return-void
.end method

.method public adAvailabilityResponse(II)V
    .locals 0
    .param p1, "available"    # I
    .param p2, "error"    # I

    .prologue
    .line 133
    return-void
.end method

.method public adClicked()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public adDisplayed()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public adFailedToDisplay()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public adFailedToLoad()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public adWillClose()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public adWillLeaveApp()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public attackRobberyLogError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 183
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
    .line 178
    .local p1, "attackRoberyLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/UserTransactionLog;>;"
    return-void
.end method

.method public callback()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public chatListError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 108
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
    .line 103
    .local p1, "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    return-void
.end method

.method public enemiesListError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 173
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
    .line 168
    .local p1, "enemiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    return-void
.end method

.method public friendAccepted(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 78
    return-void
.end method

.method public friendAdded(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 68
    return-void
.end method

.method public friendRejected(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 83
    return-void
.end method

.method public friendRemoved(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 73
    return-void
.end method

.method public friendsListError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 98
    return-void
.end method

.method public friendsListUpdated(Ljava/util/ArrayList;)V
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
    .line 93
    .local p1, "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    return-void
.end method

.method public friendsMigrated(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "migrateFriendsError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 88
    return-void
.end method

.method public gameConfigurationReceived()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public gameDataError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 153
    return-void
.end method

.method public gameDataError(Lcom/fusepowered/FuseError;I)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;
    .param p2, "requestId"    # I

    .prologue
    .line 158
    return-void
.end method

.method public gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;

    .prologue
    .line 143
    return-void
.end method

.method public gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p3, "requestId"    # I

    .prologue
    .line 148
    return-void
.end method

.method public gameDataSetAcknowledged(I)V
    .locals 0
    .param p1, "requestId"    # I

    .prologue
    .line 163
    return-void
.end method

.method public incentiveActionCompletedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 58
    return-void
.end method

.method public mailAcknowledged(ILjava/lang/String;I)V
    .locals 0
    .param p1, "messageId"    # I
    .param p2, "fuse_id"    # Ljava/lang/String;
    .param p3, "requestID"    # I

    .prologue
    .line 123
    return-void
.end method

.method public mailError(Lcom/fusepowered/FuseError;I)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;
    .param p2, "requestID"    # I

    .prologue
    .line 128
    return-void
.end method

.method public mailListError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 118
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
    .line 113
    .local p1, "mailMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    return-void
.end method

.method public notificationAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public purchaseVerification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "verified"    # I
    .param p2, "transaction_id"    # Ljava/lang/String;
    .param p3, "originalTransactionID"    # Ljava/lang/String;

    .prologue
    .line 138
    return-void
.end method

.method public rewardRedeemed(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "incentiveId"    # I
    .param p2, "amount"    # I
    .param p3, "rewardItemId"    # Ljava/lang/String;
    .param p4, "rewardItemName"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method

.method public rewardedAdCompleteWithObject(Lcom/fusepowered/RewardedInfo;)V
    .locals 0
    .param p1, "rewardInfo"    # Lcom/fusepowered/RewardedInfo;

    .prologue
    .line 223
    return-void
.end method

.method public rewardedVideoCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "adZone"    # Ljava/lang/String;

    .prologue
    .line 208
    return-void
.end method

.method public sessionLoginError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 33
    return-void
.end method

.method public sessionStartReceived()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public timeUpdated(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 38
    return-void
.end method

.method public virtualGoodsOfferAcceptedWithObject(Lcom/fusepowered/VGOfferInfo;)V
    .locals 0
    .param p1, "offer"    # Lcom/fusepowered/VGOfferInfo;

    .prologue
    .line 233
    return-void
.end method
