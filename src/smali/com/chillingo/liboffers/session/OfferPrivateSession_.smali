.class public final Lcom/chillingo/liboffers/session/OfferPrivateSession_;
.super Lcom/chillingo/liboffers/session/OfferPrivateSession;
.source "OfferPrivateSession_.java"


# static fields
.field private static instance_:Lcom/chillingo/liboffers/session/OfferPrivateSession_;


# instance fields
.field private context_:Landroid/content/Context;

.field private handler_:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->handler_:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->context_:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->init_()V

    .line 33
    return-void
.end method

.method static synthetic access$001(Lcom/chillingo/liboffers/session/OfferPrivateSession_;Landroid/app/Activity;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/session/OfferPrivateSession_;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    .param p3, "x3"    # Lcom/chillingo/liboffers/model/Offer;
    .param p4, "x4"    # Ljava/util/HashMap;

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->doDisplayActivationDialog(Landroid/app/Activity;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$101(Lcom/chillingo/liboffers/session/OfferPrivateSession_;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/session/OfferPrivateSession_;
    .param p1, "x1"    # Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    .param p2, "x2"    # Lcom/chillingo/liboffers/model/Offer;
    .param p3, "x3"    # Ljava/util/HashMap;

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->displayActivationDialog(Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/session/OfferPrivateSession_;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->instance_:Lcom/chillingo/liboffers/session/OfferPrivateSession_;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chillingo/liboffers/session/OfferPrivateSession_;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->instance_:Lcom/chillingo/liboffers/session/OfferPrivateSession_;

    .line 69
    :cond_0
    sget-object v0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->instance_:Lcom/chillingo/liboffers/session/OfferPrivateSession_;

    return-object v0
.end method

.method private init_()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->offerDownloadController:Lcom/chillingo/liboffers/http/OfferDownloadController;

    .line 60
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/http/Cache_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/http/Cache_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->cache:Lcom/chillingo/liboffers/http/Cache;

    .line 61
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->analyticsPostController:Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;

    .line 62
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->offerActivationHandler:Lcom/chillingo/liboffers/session/OfferActivationHandler;

    .line 63
    return-void
.end method


# virtual methods
.method public afterSetContentView_()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->offerDownloadController:Lcom/chillingo/liboffers/http/OfferDownloadController;

    check-cast v0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->afterSetContentView_()V

    .line 40
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->cache:Lcom/chillingo/liboffers/http/Cache;

    check-cast v0, Lcom/chillingo/liboffers/http/Cache_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/http/Cache_;->afterSetContentView_()V

    .line 41
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->analyticsPostController:Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;

    check-cast v0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->afterSetContentView_()V

    .line 42
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->offerActivationHandler:Lcom/chillingo/liboffers/session/OfferActivationHandler;

    check-cast v0, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl_;->afterSetContentView_()V

    goto :goto_0
.end method

.method public displayActivationDialog(Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "dialogType"    # Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    .param p2, "offer"    # Lcom/chillingo/liboffers/model/Offer;
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
    .line 95
    .local p3, "activationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;-><init>(Lcom/chillingo/liboffers/session/OfferPrivateSession_;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public doDisplayActivationDialog(Landroid/app/Activity;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "activityForDialog"    # Landroid/app/Activity;
    .param p2, "dialogType"    # Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    .param p3, "offer"    # Lcom/chillingo/liboffers/model/Offer;
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
    .line 77
    .local p4, "activationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->handler_:Landroid/os/Handler;

    new-instance v0, Lcom/chillingo/liboffers/session/OfferPrivateSession_$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/chillingo/liboffers/session/OfferPrivateSession_$1;-><init>(Lcom/chillingo/liboffers/session/OfferPrivateSession_;Landroid/app/Activity;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 51
    .local v0, "activity_":Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public rebind(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    return-void
.end method
