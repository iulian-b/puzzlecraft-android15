.class public Lcom/chillingo/liboffers/session/OfferGUIController;
.super Ljava/lang/Object;
.source "OfferGUIController.java"

# interfaces
.implements Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
.implements Lcom/chillingo/liboffers/partnerapi/OfferGuiDeactivateListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OfferGUIController"


# instance fields
.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/session/OfferGUIControllerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

.field private offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

.field private offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

.field private sessionHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;",
            ">;"
        }
    .end annotation
.end field

.field private updateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;)V
    .locals 2
    .param p1, "sessionHandler"    # Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->delegate:Ljava/lang/ref/WeakReference;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    .line 51
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 54
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->TIMER:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->updateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .line 55
    return-void
.end method


# virtual methods
.method public activateOfferWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->activateOfferWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V

    .line 357
    :cond_0
    return-void
.end method

.method public activateUIOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/model/OfferConfig;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/session/OfferGUIControllerDelegate;Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/chillingo/liboffers/model/OfferConfig;
    .param p3, "themeName"    # Ljava/lang/String;
    .param p4, "corner"    # Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    .param p5, "delegate"    # Lcom/chillingo/liboffers/session/OfferGUIControllerDelegate;
    .param p6, "telemetryHandler"    # Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    .prologue
    const/4 v3, 0x0

    .line 69
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->delegate:Ljava/lang/ref/WeakReference;

    .line 70
    iput-object p2, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    .line 72
    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    if-nez v1, :cond_0

    .line 76
    :try_start_0
    new-instance v1, Lcom/chillingo/liboffers/gui/OfferGuiImpl;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    .line 77
    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    invoke-interface {v1, p2, p3, p0, p6}, Lcom/chillingo/liboffers/partnerapi/OfferGui;->initialise(Lcom/chillingo/liboffers/model/OfferConfig;Ljava/lang/String;Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;)V

    .line 82
    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-interface {v1, p1, p4, v2}, Lcom/chillingo/liboffers/partnerapi/OfferGui;->startDrawingOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "OfferGUIController"

    const-string v2, "Failed to create Offers GUI"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    iput-object v3, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    .line 92
    iput-object v3, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    goto :goto_0
.end method

.method public areOffersWithCountReadyInOrder(Ljava/lang/Integer;Ljava/util/ArrayList;)Z
    .locals 1
    .param p1, "numberOfOffersToTest"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p2, "displayedOffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->areOffersWithCountReadyInOrder(Ljava/lang/Integer;Ljava/util/ArrayList;)Z

    move-result v0

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deactivateUI(Z)V
    .locals 1
    .param p1, "immediately"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    invoke-interface {v0, p0, p1}, Lcom/chillingo/liboffers/partnerapi/OfferGui;->deactivateUiWithListener(Lcom/chillingo/liboffers/partnerapi/OfferGuiDeactivateListener;Z)V

    .line 105
    return-void
.end method

.method public deactivateUIComplete()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "OfferGUIController"

    const-string v1, "GUI deactivation transition complete"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    .line 113
    return-void
.end method

.method public frameInterval()Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    return-object v0
.end method

.method public getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    invoke-interface {v0}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOfferBeenDisplayed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->hasOfferBeenDisplayed(Ljava/lang/String;)Z

    move-result v0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUIActive()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextOfferDataFromListUsingFilter(Ljava/util/ArrayList;)Lcom/chillingo/liboffers/model/Offer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/chillingo/liboffers/model/Offer;"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "displayedOffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->nextOfferDataFromListUsingFilter(Ljava/util/ArrayList;)Lcom/chillingo/liboffers/model/Offer;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offerDataAvailable()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    invoke-interface {v0}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->offerDataAvailable()Z

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offerDataUpdatedWithConfig(Lcom/chillingo/liboffers/model/OfferConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/chillingo/liboffers/model/OfferConfig;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/partnerapi/OfferGui;->offerDataUpdatedWithConfig(Lcom/chillingo/liboffers/model/OfferConfig;)V

    .line 177
    :cond_0
    return-void
.end method

.method public offerWasReleasedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->offerWasReleasedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V

    .line 364
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 253
    const-string v0, "Offers"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/partnerapi/OfferGui;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 257
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    invoke-interface {v0}, Lcom/chillingo/liboffers/partnerapi/OfferGui;->onPause()V

    .line 294
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 276
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    invoke-interface {v0}, Lcom/chillingo/liboffers/partnerapi/OfferGui;->onResume()V

    .line 300
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    const-string v0, "Offers"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "offerUIWasActive"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/partnerapi/OfferGui;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 287
    :cond_0
    return-void
.end method

.method public remainingNewOffersToDisplay()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->sessionHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    invoke-interface {v0}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->remainingNewOffersToDisplay()I

    move-result v0

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFrameInterval(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .locals 1
    .param p1, "interval"    # Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/partnerapi/OfferGui;->setFrameInterval(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 139
    return-void
.end method

.method public setUpdateMethod(Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;)V
    .locals 1
    .param p1, "method"    # Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->offerGUI:Lcom/chillingo/liboffers/partnerapi/OfferGui;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/partnerapi/OfferGui;->setUpdateMethod(Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;)V

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->updateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .line 154
    return-void
.end method

.method public updateMethod()Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferGUIController;->updateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    return-object v0
.end method
