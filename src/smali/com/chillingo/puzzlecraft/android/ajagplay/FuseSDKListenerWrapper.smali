.class public Lcom/chillingo/puzzlecraft/android/ajagplay/FuseSDKListenerWrapper;
.super Ljava/lang/Object;
.source "FuseSDKListenerWrapper.java"

# interfaces
.implements Lcom/fusepowered/FuseSDKListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IAPOfferAcceptedWithObject(Lcom/fusepowered/IAPOfferInfo;)V
    .locals 0
    .param p1, "iapOfferInfo"    # Lcom/fusepowered/IAPOfferInfo;

    .prologue
    .line 109
    return-void
.end method

.method public accountLoginComplete(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method

.method public accountLoginError(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "fuseError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 34
    return-void
.end method

.method public adAvailabilityResponse(ZI)V
    .locals 0
    .param p1, "b"    # Z
    .param p2, "i"    # I

    .prologue
    .line 89
    return-void
.end method

.method public adFailedToDisplay()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public adWillClose()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public didRecieveGCMRegistrationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 124
    return-void
.end method

.method public friendAccepted(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "fuseError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 59
    return-void
.end method

.method public friendAdded(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "fuseError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 49
    return-void
.end method

.method public friendRejected(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "fuseError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 64
    return-void
.end method

.method public friendRemoved(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "fuseError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 54
    return-void
.end method

.method public friendsListError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "fuseError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 79
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
    .line 74
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    return-void
.end method

.method public friendsMigrated(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "fuseError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 69
    return-void
.end method

.method public gameConfigurationReceived()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public notificationAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public notificationWillClose()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public purchaseVerification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public rewardedAdCompleteWithObject(Lcom/fusepowered/RewardedInfo;)V
    .locals 0
    .param p1, "rewardedInfo"    # Lcom/fusepowered/RewardedInfo;

    .prologue
    .line 104
    return-void
.end method

.method public sessionLoginError(Lcom/fusepowered/FuseError;)V
    .locals 0
    .param p1, "fuseError"    # Lcom/fusepowered/FuseError;

    .prologue
    .line 19
    return-void
.end method

.method public sessionStartReceived()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public timeUpdated(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 119
    return-void
.end method

.method public virtualGoodsOfferAcceptedWithObject(Lcom/fusepowered/VGOfferInfo;)V
    .locals 0
    .param p1, "vgOfferInfo"    # Lcom/fusepowered/VGOfferInfo;

    .prologue
    .line 114
    return-void
.end method
