.class public Lcom/chillingo/liboffers/http/OfferDataControllerImpl;
.super Ljava/lang/Object;
.source "OfferDataControllerImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/http/OfferDataController;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field private downloadFailedReason:Ljava/lang/String;

.field private listener:Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;

.field private offerData:Lcom/chillingo/liboffers/model/OfferData;

.field private offerDataRESTServiceController:Lcom/chillingo/liboffers/http/REST/OfferDataRESTService;

.field private params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->offerDataRESTServiceController:Lcom/chillingo/liboffers/http/REST/OfferDataRESTService;

    return-void
.end method


# virtual methods
.method public getCurrentOfferData()Lcom/chillingo/liboffers/model/OfferData;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    return-object v0
.end method

.method public initWithConfig(Lcom/chillingo/liboffers/http/OfferDataDownloadParams;Landroid/app/Activity;)V
    .locals 3
    .param p1, "offerDataDownloadParams"    # Lcom/chillingo/liboffers/http/OfferDataDownloadParams;
    .param p2, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    .line 34
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->uname:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->uname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem with uname param"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->userId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem with userId param"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_3
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->bundleId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->bundleId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem with bundleId param"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_5
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->screenSize:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->screenSize:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem with screenSize param"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_7
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->sdk:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->sdk:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 43
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem with sdk param"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_9
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->storeType:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->storeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 45
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem with store type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_b
    :try_start_0
    new-instance v1, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;

    invoke-direct {v1}, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;-><init>()V

    iput-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->offerDataRESTServiceController:Lcom/chillingo/liboffers/http/REST/OfferDataRESTService;

    .line 54
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->offerDataRESTServiceController:Lcom/chillingo/liboffers/http/REST/OfferDataRESTService;

    iget-object v2, p1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->baseUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/chillingo/liboffers/http/REST/OfferDataRESTService;->initialiseWithURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Offers"

    const-string v2, "Failed to create REST service controller"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startDownload(Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->listener:Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->offerDataRESTServiceController:Lcom/chillingo/liboffers/http/REST/OfferDataRESTService;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->offerDataRESTServiceController:Lcom/chillingo/liboffers/http/REST/OfferDataRESTService;

    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->uname:Ljava/lang/String;

    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v2, v2, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v3, v3, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->bundleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v4, v4, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->countryCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v5, v5, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->screenSize:Ljava/lang/String;

    iget-object v6, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v6, v6, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->sdk:Ljava/lang/String;

    iget-object v7, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->params:Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    iget-object v7, v7, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->storeType:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/chillingo/liboffers/http/REST/OfferDataRESTService;->downloadOfferData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/liboffers/model/OfferDataContainer;

    move-result-object v8

    .line 82
    .local v8, "container":Lcom/chillingo/liboffers/model/OfferDataContainer;
    if-eqz v8, :cond_2

    .line 83
    invoke-virtual {v8}, Lcom/chillingo/liboffers/model/OfferDataContainer;->getData()Lcom/chillingo/liboffers/model/OfferData;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v8    # "container":Lcom/chillingo/liboffers/model/OfferDataContainer;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->listener:Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;

    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;->offerDataDownloaded(Lcom/chillingo/liboffers/model/OfferData;Z)V

    .line 101
    :goto_1
    return-void

    .line 85
    .restart local v8    # "container":Lcom/chillingo/liboffers/model/OfferDataContainer;
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    .end local v8    # "container":Lcom/chillingo/liboffers/model/OfferDataContainer;
    :catch_0
    move-exception v9

    .line 89
    .local v9, "e":Ljava/lang/Throwable;
    const-string v0, "Offers"

    const-string v1, "Failed to create download offer data"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v9}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->downloadFailedReason:Ljava/lang/String;

    goto :goto_0

    .line 99
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->listener:Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;

    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDataControllerImpl;->downloadFailedReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;->offerDataDownloadFailed(Ljava/lang/String;)V

    goto :goto_1
.end method
