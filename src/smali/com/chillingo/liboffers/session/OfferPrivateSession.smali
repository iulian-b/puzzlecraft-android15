.class public Lcom/chillingo/liboffers/session/OfferPrivateSession;
.super Ljava/lang/Object;
.source "OfferPrivateSession.java"

# interfaces
.implements Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
.implements Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;
.implements Lcom/chillingo/liboffers/utils/AnnotationsClosedown;
.implements Lcom/chillingo/liboffers/session/OfferGUIControllerDelegate;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
    scope = .enum Lcom/googlecode/androidannotations/api/Scope;->Singleton:Lcom/googlecode/androidannotations/api/Scope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ENABLE_ACTIVATION_DIALOG:Z = true


# instance fields
.field private activationTimer:Ljava/util/Timer;

.field private activityForOfferGui:Landroid/app/Activity;

.field analyticsPostController:Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
    .end annotation
.end field

.field cache:Lcom/chillingo/liboffers/http/Cache;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private offerActivationData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field offerActivationHandler:Lcom/chillingo/liboffers/session/OfferActivationHandler;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
        value = Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;
    .end annotation
.end field

.field offerDownloadController:Lcom/chillingo/liboffers/http/OfferDownloadController;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
        value = Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;
    .end annotation
.end field

.field private offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

.field private offerSessionListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/OfferSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private offerTheme:Ljava/lang/String;

.field private offerToDisplayAfterActivationDialog:Lcom/chillingo/liboffers/model/Offer;

.field private offersDisplayed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private offersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerSessionListener:Ljava/lang/ref/WeakReference;

    .line 68
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->receiver:Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;

    .line 76
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerToDisplayAfterActivationDialog:Lcom/chillingo/liboffers/model/Offer;

    .line 77
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerActivationData:Ljava/util/HashMap;

    .line 79
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->activityForOfferGui:Landroid/app/Activity;

    .line 80
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->activationTimer:Ljava/util/Timer;

    .line 119
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->context:Landroid/content/Context;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/liboffers/session/OfferPrivateSession;)Lcom/chillingo/liboffers/model/Offer;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/session/OfferPrivateSession;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerToDisplayAfterActivationDialog:Lcom/chillingo/liboffers/model/Offer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chillingo/liboffers/session/OfferPrivateSession;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/session/OfferPrivateSession;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerActivationData:Ljava/util/HashMap;

    return-object v0
.end method

.method private attemptUIActivationWithDictionary(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->timeSinceFirstActivationExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->createActivationTimerWithDictionary(Ljava/util/HashMap;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->showUIWithDictionary(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private createActivationTimerWithDictionary(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method private remainingTimeSinceFirstActivation(Ljava/util/Date;)D
    .locals 2
    .param p1, "firstActivationTimestamp"    # Ljava/util/Date;

    .prologue
    .line 319
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private showUIOnTimerCompletion(Ljava/util/Timer;)V
    .locals 0
    .param p1, "theTimer"    # Ljava/util/Timer;

    .prologue
    .line 352
    return-void
.end method

.method private showUIWithDictionary(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 357
    .local v1, "activity":Landroid/app/Activity;
    const-string v0, "corner"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 358
    .local v4, "corner":Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    const-string v0, "frameinterval"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 360
    .local v7, "frameInterval":Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerDownloadController:Lcom/chillingo/liboffers/http/OfferDownloadController;

    invoke-interface {v0}, Lcom/chillingo/liboffers/http/OfferDownloadController;->getCurrentOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;

    move-result-object v2

    .line 362
    .local v2, "offerConfig":Lcom/chillingo/liboffers/model/OfferConfig;
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->analyticsPostController:Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->getOfferGuiTelemetryHandler()Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    move-result-object v6

    .line 372
    .local v6, "telemetryHandler":Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    invoke-virtual {v0, v7}, Lcom/chillingo/liboffers/session/OfferGUIController;->setFrameInterval(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V

    .line 375
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    iget-object v3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerTheme:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/chillingo/liboffers/session/OfferGUIController;->activateUIOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/model/OfferConfig;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/session/OfferGUIControllerDelegate;Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;)V

    .line 381
    return-void
.end method

.method private stopActivationTimer()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method private timeSinceFirstActivationExpired()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public OfferDataUpdatedWithConfig(Lcom/chillingo/liboffers/model/OfferConfig;)V
    .locals 7
    .param p1, "config"    # Lcom/chillingo/liboffers/model/OfferConfig;

    .prologue
    .line 651
    if-eqz p1, :cond_1

    .line 653
    :try_start_0
    iget-object v4, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->analyticsPostController:Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;

    if-eqz v4, :cond_1

    .line 654
    iget-object v4, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->analyticsPostController:Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;

    invoke-virtual {v4, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->offerConfigUpdated(Lcom/chillingo/liboffers/model/OfferConfig;)V

    .line 656
    const/4 v1, 0x0

    .line 658
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getConversionServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "conversionServerUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 661
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 662
    .restart local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "conversionServerUrl"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_0
    iget-object v4, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->analyticsPostController:Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;

    invoke-virtual {v4}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->getAnalyticsPoster()Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logSessionStartEventWithData(Ljava/util/HashMap;)V

    .line 667
    iget-object v4, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerActivationHandler:Lcom/chillingo/liboffers/session/OfferActivationHandler;

    iget-object v5, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->analyticsPostController:Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;

    invoke-virtual {v5}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->getAnalyticsPoster()Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/chillingo/liboffers/session/OfferActivationHandler;->setAnalyticsPoster(Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;)V

    .line 672
    .end local v0    # "conversionServerUrl":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    invoke-virtual {v4, p1}, Lcom/chillingo/liboffers/session/OfferGUIController;->offerDataUpdatedWithConfig(Lcom/chillingo/liboffers/model/OfferConfig;)V
    :try_end_0
    .catch Lcom/chillingo/liboffers/utils/ChillingoDependencyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 681
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v2

    .line 676
    .local v2, "e":Lcom/chillingo/liboffers/utils/ChillingoDependencyException;
    throw v2

    .line 678
    .end local v2    # "e":Lcom/chillingo/liboffers/utils/ChillingoDependencyException;
    :catch_1
    move-exception v3

    .line 679
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string v4, "Offers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred in OfferDataUpdatedWithConfig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OfferDownloadControllerFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 645
    return-void
.end method

.method public OfferDownloaded(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 1
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_0
    return-void
.end method

.method public activateOfferWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 762
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 763
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid index specified for offer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 766
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 767
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "index"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offer activated with [type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerActivationHandler:Lcom/chillingo/liboffers/session/OfferActivationHandler;

    invoke-interface {v2, p1}, Lcom/chillingo/liboffers/session/OfferActivationHandler;->isDialogRequiredForOffer(Lcom/chillingo/liboffers/model/Offer;)Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    move-result-object v1

    .line 773
    .local v1, "dialogType":Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    sget-object v2, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->DIALOG_TYPE_NOT_REQUIRED:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    if-eq v1, v2, :cond_2

    .line 774
    invoke-virtual {p0, v1, p1, v0}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->displayActivationDialog(Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    .line 779
    :goto_0
    return-void

    .line 776
    :cond_2
    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerActivationHandler:Lcom/chillingo/liboffers/session/OfferActivationHandler;

    invoke-interface {v2, p1, v0}, Lcom/chillingo/liboffers/session/OfferActivationHandler;->activateOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public activateUIOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "corner"    # Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    .param p3, "frameInterval"    # Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid activity specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->activityForOfferGui:Landroid/app/Activity;

    .line 225
    invoke-virtual {p0}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->isUIActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const-string v1, "Offers"

    const-string v2, "UI already active"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->activationTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 231
    const-string v1, "Offers"

    const-string v2, "UI activation timer already active"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 237
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "activity"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "corner"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "frameinterval"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->attemptUIActivationWithDictionary(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public addOfferToDisplayedList(Ljava/lang/String;)V
    .locals 2
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    .line 516
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid offer Id specified when adding offer to the displayed list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersDisplayed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    return-void
.end method

.method public annotationsClosedown()V
    .locals 1

    .prologue
    .line 789
    const-class v0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;

    invoke-static {p0, v0}, Lcom/chillingo/liboffers/utils/AnnotationUtils;->releaseStaticPropertiesForAnnotatedObject(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 790
    return-void
.end method

.method public areOffersWithCountReadyInOrder(Ljava/lang/Integer;Ljava/util/ArrayList;)Z
    .locals 10
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
    .local p2, "displayedOffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 581
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_1

    move v6, v8

    .line 626
    :cond_0
    :goto_0
    return v6

    .line 584
    :cond_1
    if-nez p2, :cond_2

    .line 585
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Null displayedOffers"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 587
    :cond_2
    const/4 v6, 0x0

    .line 589
    .local v6, "offersReadyInOrder":Z
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 591
    .local v5, "offersReadyCount":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chillingo/liboffers/model/Offer;

    .line 593
    .local v3, "offer":Lcom/chillingo/liboffers/model/Offer;
    const/4 v4, 0x0

    .line 595
    .local v4, "offerAlreadyDisplayed":Z
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 596
    .local v7, "releasedOfferId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/Offer;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    .line 597
    const/4 v4, 0x1

    .line 603
    .end local v7    # "releasedOfferId":Ljava/lang/String;
    :cond_5
    if-nez v4, :cond_7

    .line 604
    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/Offer;->readyToDisplay()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 605
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 609
    iget-object v8, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    iget-object v9, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chillingo/liboffers/model/Offer;

    .line 610
    .local v2, "lastObject":Lcom/chillingo/liboffers/model/Offer;
    invoke-virtual {v5, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    if-ne v2, v3, :cond_3

    .line 611
    :cond_6
    const/4 v6, 0x1

    .line 612
    goto :goto_0

    .line 620
    .end local v2    # "lastObject":Lcom/chillingo/liboffers/model/Offer;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0
.end method

.method public closeSession()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->deactivateUI(Z)V

    .line 192
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    .line 195
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersDisplayed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersDisplayed:Ljava/util/List;

    .line 199
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerTheme:Ljava/lang/String;

    .line 202
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerSessionListener:Ljava/lang/ref/WeakReference;

    .line 203
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    .line 205
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->receiver:Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;->shutdown()V

    .line 206
    iput-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->receiver:Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;

    .line 207
    return-void
.end method

.method public deactivateUI(Z)V
    .locals 2
    .param p1, "immediately"    # Z

    .prologue
    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->activityForOfferGui:Landroid/app/Activity;

    .line 391
    invoke-direct {p0}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->stopActivationTimer()V

    .line 398
    invoke-virtual {p0}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->isUIActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    const-string v0, "Offers"

    const-string v1, "UI already inactive"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    invoke-virtual {v0, p1}, Lcom/chillingo/liboffers/session/OfferGUIController;->deactivateUI(Z)V

    goto :goto_0
.end method

.method displayActivationDialog(Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "dialogType"    # Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    .param p2, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;",
            "Lcom/chillingo/liboffers/model/Offer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p3, "activationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->activityForOfferGui:Landroid/app/Activity;

    .line 699
    .local v0, "activityForDialog":Landroid/app/Activity;
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->doDisplayActivationDialog(Landroid/app/Activity;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    .line 700
    return-void
.end method

.method doDisplayActivationDialog(Landroid/app/Activity;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "activityForDialog"    # Landroid/app/Activity;
    .param p2, "dialogType"    # Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    .param p3, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;",
            "Lcom/chillingo/liboffers/model/Offer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p4, "activationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_0

    .line 705
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No offer to display after dialog"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 706
    :cond_0
    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->activityForOfferGui:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 707
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No activity saved for dialog"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 708
    :cond_1
    sget-object v2, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->DIALOG_TYPE_OPEN_URL:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    if-eq p2, v2, :cond_2

    .line 709
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only URL dialog type supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 711
    :cond_2
    iput-object p3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerToDisplayAfterActivationDialog:Lcom/chillingo/liboffers/model/Offer;

    .line 712
    iput-object p4, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerActivationData:Ljava/util/HashMap;

    .line 719
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v2, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->DIALOG_TYPE_OPEN_URL:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    if-ne p2, v2, :cond_3

    .line 725
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Open Web Page"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "You are about to leave the game to view an offer in the web browser. Would you like to proceed?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/chillingo/liboffers/session/OfferPrivateSession$3;

    invoke-direct {v4, p0}, Lcom/chillingo/liboffers/session/OfferPrivateSession$3;-><init>(Lcom/chillingo/liboffers/session/OfferPrivateSession;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/chillingo/liboffers/session/OfferPrivateSession$2;

    invoke-direct {v4, p0}, Lcom/chillingo/liboffers/session/OfferPrivateSession$2;-><init>(Lcom/chillingo/liboffers/session/OfferPrivateSession;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/chillingo/liboffers/session/OfferPrivateSession$1;

    invoke-direct {v3, p0}, Lcom/chillingo/liboffers/session/OfferPrivateSession$1;-><init>(Lcom/chillingo/liboffers/session/OfferPrivateSession;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 753
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 755
    .local v1, "dialog":Landroid/app/AlertDialog;
    const-string v2, "Offers"

    const-string v3, "Showing activation dialog"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 757
    return-void
.end method

.method public getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerDownloadController:Lcom/chillingo/liboffers/http/OfferDownloadController;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerDownloadController:Lcom/chillingo/liboffers/http/OfferDownloadController;

    invoke-interface {v0}, Lcom/chillingo/liboffers/http/OfferDownloadController;->getCurrentOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;

    move-result-object v0

    .line 634
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public guiControllerWillResignScreen()V
    .locals 2

    .prologue
    .line 805
    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerSessionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/OfferSessionListener;

    .line 807
    .local v0, "listener":Lcom/chillingo/liboffers/OfferSessionListener;
    if-eqz v0, :cond_0

    .line 808
    invoke-interface {v0}, Lcom/chillingo/liboffers/OfferSessionListener;->restartDrawing()V

    .line 809
    :cond_0
    return-void
.end method

.method public guiControllerWillTakeOverScreen()V
    .locals 2

    .prologue
    .line 795
    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerSessionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/OfferSessionListener;

    .line 797
    .local v0, "listener":Lcom/chillingo/liboffers/OfferSessionListener;
    if-eqz v0, :cond_0

    .line 798
    invoke-interface {v0}, Lcom/chillingo/liboffers/OfferSessionListener;->pauseDrawing()V

    .line 800
    :cond_0
    return-void
.end method

.method public hasOfferBeenDisplayed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    .line 529
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid offerId supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersDisplayed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public init(Lcom/chillingo/liboffers/OfferSessionListener;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V
    .locals 6
    .param p1, "listener"    # Lcom/chillingo/liboffers/OfferSessionListener;
    .param p2, "theme"    # Ljava/lang/String;
    .param p3, "storeType"    # Lcom/chillingo/liboffers/OfferSession$StoreType;

    .prologue
    const/16 v4, 0xa

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersDisplayed:Ljava/util/List;

    .line 151
    iput-object p2, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerTheme:Ljava/lang/String;

    .line 152
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerSessionListener:Ljava/lang/ref/WeakReference;

    .line 154
    new-instance v3, Lcom/chillingo/liboffers/session/OfferGUIController;

    invoke-direct {v3, p0}, Lcom/chillingo/liboffers/session/OfferGUIController;-><init>(Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;)V

    iput-object v3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    .line 155
    new-instance v3, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;

    iget-object v4, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->context:Landroid/content/Context;

    invoke-direct {v3, p0, p0, v4}, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;-><init>(Lcom/chillingo/liboffers/session/OfferPrivateSession;Lcom/chillingo/liboffers/session/OfferPrivateSession;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->receiver:Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;

    .line 158
    iget-object v3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->cache:Lcom/chillingo/liboffers/http/Cache;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Lcom/chillingo/liboffers/http/Cache;->clearCacheOfAllItemsExpiringBefore(Ljava/util/Date;)V

    .line 160
    const/4 v2, 0x0

    .line 163
    .local v2, "offersServerUrl":Ljava/lang/String;
    :try_start_0
    const-string v3, "http%3A%2F%2Fchillingo-offers.appspot.com"

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 169
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 170
    :cond_0
    const-string v2, "http://chillingo-offers.appspot.com"

    .line 173
    :cond_1
    iget-object v3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerDownloadController:Lcom/chillingo/liboffers/http/OfferDownloadController;

    invoke-interface {v3, v2, p3, p0}, Lcom/chillingo/liboffers/http/OfferDownloadController;->startDownload(Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;)V

    .line 176
    const-string v0, "release"

    .line 181
    .local v0, "config":Ljava/lang/String;
    const-string v3, "Offers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** [Offers] v2.8 build 470 ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ***"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 164
    .end local v0    # "config":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isUIActive()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->activationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/session/OfferGUIController;->isUIActive()Z

    move-result v0

    goto :goto_0
.end method

.method public nextOfferDataFromListUsingFilter(Ljava/util/ArrayList;)Lcom/chillingo/liboffers/model/Offer;
    .locals 7
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
    .line 543
    .local p1, "displayedOffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 544
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null displayedOffers"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 546
    :cond_0
    iget-object v5, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 549
    iget-object v5, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chillingo/liboffers/model/Offer;

    .line 550
    .local v2, "offer":Lcom/chillingo/liboffers/model/Offer;
    const/4 v3, 0x0

    .line 552
    .local v3, "offerAlreadyDisplayed":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 553
    .local v4, "releasedOfferId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/chillingo/liboffers/model/Offer;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 554
    const/4 v3, 0x1

    .line 560
    .end local v4    # "releasedOfferId":Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_1

    .line 561
    invoke-virtual {v2}, Lcom/chillingo/liboffers/model/Offer;->readyToDisplay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 567
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "offer":Lcom/chillingo/liboffers/model/Offer;
    .end local v3    # "offerAlreadyDisplayed":Z
    :goto_0
    return-object v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public offerBackgroundChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    const-string v2, "active"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 129
    .local v0, "activated":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerSessionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/OfferSessionListener;

    .line 133
    .local v1, "listener":Lcom/chillingo/liboffers/OfferSessionListener;
    if-eqz v1, :cond_0

    .line 134
    invoke-interface {v1}, Lcom/chillingo/liboffers/OfferSessionListener;->offersReleased()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    .end local v1    # "listener":Lcom/chillingo/liboffers/OfferSessionListener;
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerSessionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/OfferSessionListener;

    .line 140
    .restart local v1    # "listener":Lcom/chillingo/liboffers/OfferSessionListener;
    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1}, Lcom/chillingo/liboffers/OfferSessionListener;->offersClosed()V

    goto :goto_0
.end method

.method public offerDataAvailable()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offerWasReleasedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 783
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->addOfferToDisplayedList(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 447
    const-string v0, "Offers"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/liboffers/session/OfferGUIController;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 450
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/session/OfferGUIController;->onPause()V

    .line 456
    return-void
.end method

.method public onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 430
    const-string v0, "Offers"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v0, "offerUIWasActive"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 437
    :cond_0
    const-string v0, "Offers"

    const-string v1, "UI was active.  Restoring...."

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/liboffers/session/OfferGUIController;->onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/session/OfferGUIController;->onResume()V

    .line 462
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 423
    const-string v0, "Offers"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerGUIController:Lcom/chillingo/liboffers/session/OfferGUIController;

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/liboffers/session/OfferGUIController;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 426
    return-void
.end method

.method public remainingNewOffersToDisplay()I
    .locals 7

    .prologue
    .line 480
    const/4 v5, 0x0

    .line 482
    .local v5, "result":I
    iget-object v6, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 485
    iget-object v6, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chillingo/liboffers/model/Offer;

    .line 487
    .local v2, "offer":Lcom/chillingo/liboffers/model/Offer;
    const/4 v3, 0x0

    .line 489
    .local v3, "offerAlreadyDisplayed":Z
    iget-object v6, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offersDisplayed:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 491
    .local v4, "releasedOfferId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/chillingo/liboffers/model/Offer;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 493
    const/4 v3, 0x1

    .line 499
    .end local v4    # "releasedOfferId":Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_0

    .line 500
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "offer":Lcom/chillingo/liboffers/model/Offer;
    .end local v3    # "offerAlreadyDisplayed":Z
    :cond_3
    return v5
.end method
