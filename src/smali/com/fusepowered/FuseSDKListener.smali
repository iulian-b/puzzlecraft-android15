.class public interface abstract Lcom/fusepowered/FuseSDKListener;
.super Ljava/lang/Object;
.source "FuseSDKListener.java"


# virtual methods
.method public abstract IAPOfferAcceptedWithObject(Lcom/fusepowered/IAPOfferInfo;)V
.end method

.method public abstract accountLoginComplete(ILjava/lang/String;)V
.end method

.method public abstract accountLoginError(Ljava/lang/String;Lcom/fusepowered/FuseError;)V
.end method

.method public abstract adAvailabilityResponse(ZI)V
.end method

.method public abstract adFailedToDisplay()V
.end method

.method public abstract adWillClose()V
.end method

.method public abstract didRecieveGCMRegistrationToken(Ljava/lang/String;)V
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

.method public abstract notificationAction(Ljava/lang/String;)V
.end method

.method public abstract notificationWillClose()V
.end method

.method public abstract purchaseVerification(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract rewardedAdCompleteWithObject(Lcom/fusepowered/RewardedInfo;)V
.end method

.method public abstract sessionLoginError(Lcom/fusepowered/FuseError;)V
.end method

.method public abstract sessionStartReceived()V
.end method

.method public abstract timeUpdated(Ljava/util/Date;)V
.end method

.method public abstract virtualGoodsOfferAcceptedWithObject(Lcom/fusepowered/VGOfferInfo;)V
.end method
