.class public interface abstract Lcom/chillingo/liboffers/partnerapi/OfferGui;
.super Ljava/lang/Object;
.source "OfferGui.java"


# virtual methods
.method public abstract deactivateUiWithListener(Lcom/chillingo/liboffers/partnerapi/OfferGuiDeactivateListener;Z)V
.end method

.method public abstract frameInterval()Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;
.end method

.method public abstract initialise(Lcom/chillingo/liboffers/model/OfferConfig;Ljava/lang/String;Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;)V
.end method

.method public abstract isUIActive()Z
.end method

.method public abstract offerDataUpdatedWithConfig(Lcom/chillingo/liboffers/model/OfferConfig;)V
.end method

.method public abstract onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract pauseDrawing()V
.end method

.method public abstract removeView()V
.end method

.method public abstract resumeDrawing()V
.end method

.method public abstract setFrameInterval(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
.end method

.method public abstract setUpdateMethod(Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;)V
.end method

.method public abstract startDrawingOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
.end method

.method public abstract updateMethod()Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;
.end method
