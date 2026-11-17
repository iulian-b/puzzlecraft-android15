.class public final Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;
.super Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;
.source "OfferDownloadControllerImpl_.java"


# instance fields
.field private context_:Landroid/content/Context;

.field private handler_:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->handler_:Landroid/os/Handler;

    .line 26
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->init_()V

    .line 28
    return-void
.end method

.method static synthetic access$001(Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;Lcom/chillingo/liboffers/model/OfferData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;
    .param p1, "x1"    # Lcom/chillingo/liboffers/model/OfferData;
    .param p2, "x2"    # Z

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerDataDownloaded(Lcom/chillingo/liboffers/model/OfferData;Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerDataDownloadFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/chillingo/liboffers/OfferSession$StoreType;

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->doDownloadOfferData(Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;

    invoke-direct {v0, p0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private init_()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->offerImageDataClient:Lcom/chillingo/liboffers/http/OfferImageDataClient;

    .line 56
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/http/Cache_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/http/Cache_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->cache:Lcom/chillingo/liboffers/http/Cache;

    .line 57
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/http/OfferDataControllerImpl_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/http/OfferDataControllerImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->offerDataController:Lcom/chillingo/liboffers/http/OfferDataController;

    .line 58
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/utils/UuidUtils_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/utils/UuidUtils_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    .line 59
    return-void
.end method


# virtual methods
.method public afterSetContentView_()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->offerImageDataClient:Lcom/chillingo/liboffers/http/OfferImageDataClient;

    check-cast v0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->afterSetContentView_()V

    .line 35
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->cache:Lcom/chillingo/liboffers/http/Cache;

    check-cast v0, Lcom/chillingo/liboffers/http/Cache_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/http/Cache_;->afterSetContentView_()V

    .line 36
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->offerDataController:Lcom/chillingo/liboffers/http/OfferDataController;

    check-cast v0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/http/OfferDataControllerImpl_;->afterSetContentView_()V

    .line 37
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    check-cast v0, Lcom/chillingo/liboffers/utils/UuidUtils_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/utils/UuidUtils_;->afterSetContentView_()V

    goto :goto_0
.end method

.method public doDownloadOfferData(Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "storeType"    # Lcom/chillingo/liboffers/OfferSession$StoreType;

    .prologue
    .line 108
    new-instance v0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$3;-><init>(Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 46
    .local v0, "activity_":Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public offerDataDownloadFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$2;

    invoke-direct {v1, p0, p1}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$2;-><init>(Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public offerDataDownloaded(Lcom/chillingo/liboffers/model/OfferData;Z)V
    .locals 2
    .param p1, "offerData"    # Lcom/chillingo/liboffers/model/OfferData;
    .param p2, "updateCache"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$1;-><init>(Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;Lcom/chillingo/liboffers/model/OfferData;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public rebind(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->context_:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->init_()V

    .line 68
    return-void
.end method
