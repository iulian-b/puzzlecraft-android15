.class public Lcom/fusepowered/debug/FuseBridgeSDKListener;
.super Ljava/lang/Object;
.source "FuseBridgeSDKListener.java"

# interfaces
.implements Lcom/fusepowered/FuseSDKListenerWithGameData;


# instance fields
.field private logger:Lcom/fusepowered/debug/FuseBridgeHandler;


# direct methods
.method public constructor <init>(Lcom/fusepowered/debug/FuseBridgeHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/fusepowered/debug/FuseBridgeHandler;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    .line 29
    return-void
.end method


# virtual methods
.method public IAPOfferAcceptedWithObject(Lcom/fusepowered/IAPOfferInfo;)V
    .locals 5
    .param p1, "offer"    # Lcom/fusepowered/IAPOfferInfo;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s} }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "IAPOfferAcceptedWithObject"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "offer"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/fusepowered/IAPOfferInfo;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public accountLoginComplete(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%d , \"%s\":%s} }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "accountLoginComplete"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "accountId"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public accountLoginError(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 5
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s , \"%s\":%s} }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "accountLoginError"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "accountId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "error"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/fusepowered/FuseError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public adAvailabilityResponse(ZI)V
    .locals 5
    .param p1, "available"    # Z
    .param p2, "error"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%b , \"%s\":%d} }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "adAvailabilityResponse"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "available"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "error"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public adFailedToDisplay()V
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {} }"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "adFailedToDisplay"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public adWillClose()V
    .locals 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {} }"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "adWillClose"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public didRecieveGCMRegistrationToken(Ljava/lang/String;)V
    .locals 5
    .param p1, "newRegistrationID"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s} }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "didRecieveGCMRegistrationToken"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "newRegistrationID"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public friendAccepted(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 5
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s , \"%s\":%s} }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "friendAccepted"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "fuseId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "error"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/fusepowered/FuseError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public friendAdded(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 5
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s , \"%s\":%s} }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "friendAdded"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "fuseId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "error"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/fusepowered/FuseError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public friendRejected(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 5
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s , \"%s\":%s} }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "friendRejected"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "fuseId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "error"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/fusepowered/FuseError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public friendRemoved(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 5
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s , \"%s\":%s} }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "friendRemoved"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "fuseId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "error"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/fusepowered/FuseError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public friendsListError(Lcom/fusepowered/FuseError;)V
    .locals 5
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s} }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "friendsListError"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "error"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/fusepowered/FuseError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public friendsListUpdated(Ljava/util/ArrayList;)V
    .locals 6
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
    .local p1, "friendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s} }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "friendsListUpdated"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "friendList"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-static {p1, v5}, Lcom/fusepowered/util/StringUtil;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public friendsMigrated(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 5
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "migrateFriendsError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s , \"%s\":%s} }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "friendsMigrated"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "fuseId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "migrateFriendsError"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/fusepowered/FuseError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public gameConfigurationReceived()V
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {} }"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gameConfigurationReceived"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public gameDataError(Lcom/fusepowered/FuseError;I)V
    .locals 5
    .param p1, "error"    # Lcom/fusepowered/FuseError;
    .param p2, "requestId"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%d , \"%s\":%s} }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gameDataError"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "requestId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "error"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/fusepowered/FuseError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V
    .locals 9
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p3, "requestId"    # I

    .prologue
    .line 149
    const-string v3, "{}"

    .line 151
    .local v3, "str":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 152
    .local v2, "map":Lorg/json/JSONStringer;
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 153
    invoke-virtual {p2}, Lcom/fusepowered/util/GameKeyValuePairs;->getMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/util/GameValue;

    invoke-virtual {v4}, Lcom/fusepowered/util/GameValue;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "map":Lorg/json/JSONStringer;
    :catch_0
    move-exception v4

    .line 159
    :goto_1
    iget-object v4, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v5, "{ \"%s\" : {\"%s\":%s , \"%s\":%d , \"%s\":%s} }"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "gameDataReceived"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "fuseId"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "requestId"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "gameKeyValuePairs"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 160
    return-void

    .line 156
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "map":Lorg/json/JSONStringer;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 157
    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method public gameDataSetAcknowledged(I)V
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%d} }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gameDataSetAcknowledged"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "requestId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public notificationAction(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s} }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "notificationAction"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "action"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public notificationWillClose()V
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {} }"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "notificationWillClose"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public purchaseVerification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "verified"    # I
    .param p2, "transaction_id"    # Ljava/lang/String;
    .param p3, "originalTransactionID"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%d , \"%s\":%s , \"%s\":%s} }"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "purchaseVerification"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "verified"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "transaction_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "originalTransactionID"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {p3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public rewardedAdCompleteWithObject(Lcom/fusepowered/RewardedInfo;)V
    .locals 5
    .param p1, "rewardInfo"    # Lcom/fusepowered/RewardedInfo;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s} }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "rewardedAdCompleteWithObject"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "rewardInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/fusepowered/RewardedInfo;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public sessionLoginError(Lcom/fusepowered/FuseError;)V
    .locals 5
    .param p1, "error"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s} }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "sessionLoginError"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "error"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/fusepowered/FuseError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public sessionStartReceived()V
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {} }"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "sessionStartReceived"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public timeUpdated(Ljava/util/Date;)V
    .locals 6
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%d} }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "timeUpdated"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "time"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public virtualGoodsOfferAcceptedWithObject(Lcom/fusepowered/VGOfferInfo;)V
    .locals 5
    .param p1, "offer"    # Lcom/fusepowered/VGOfferInfo;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeSDKListener;->logger:Lcom/fusepowered/debug/FuseBridgeHandler;

    const-string v1, "{ \"%s\" : {\"%s\":%s} }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "virtualGoodsOfferAcceptedWithObject"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "offer"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/fusepowered/VGOfferInfo;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->logCallback(Ljava/lang/String;)V

    .line 135
    return-void
.end method
