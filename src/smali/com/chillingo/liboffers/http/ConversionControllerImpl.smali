.class public Lcom/chillingo/liboffers/http/ConversionControllerImpl;
.super Ljava/lang/Object;
.source "ConversionControllerImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/http/ConversionController;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field private conversionRESTServiceController:Lcom/chillingo/liboffers/http/REST/ConversionRESTService;

.field private conversionServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "http://redis.chillingo.com:8080/ConversionTracker/"

    iput-object v0, p0, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->conversionServerUrl:Ljava/lang/String;

    return-void
.end method

.method private lazyInit()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;

    invoke-direct {v0}, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->conversionRESTServiceController:Lcom/chillingo/liboffers/http/REST/ConversionRESTService;

    .line 27
    iget-object v0, p0, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->conversionRESTServiceController:Lcom/chillingo/liboffers/http/REST/ConversionRESTService;

    iget-object v1, p0, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->conversionServerUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/http/REST/ConversionRESTService;->initialiseWithURL(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public postStartEvent(Lcom/chillingo/liboffers/model/CallbackContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "trackingId"    # Ljava/lang/String;
    .param p3, "targetBundleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/CallbackContainer",
            "<",
            "Lcom/chillingo/liboffers/model/ConversionResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "callbackContainer":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<Lcom/chillingo/liboffers/model/ConversionResponse;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No callbackContainer"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No trackingId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No target bundle ID"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_4
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->lazyInit()V

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "conversionResponse":Lcom/chillingo/liboffers/model/ConversionResponse;
    const/4 v2, 0x0

    .line 59
    .local v2, "status":I
    :try_start_0
    iget-object v3, p0, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->conversionRESTServiceController:Lcom/chillingo/liboffers/http/REST/ConversionRESTService;

    invoke-interface {v3, p2, p3}, Lcom/chillingo/liboffers/http/REST/ConversionRESTService;->startEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/liboffers/model/ConversionResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    const/16 v3, 0x194

    if-ne v2, v3, :cond_6

    .line 73
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->setSuccess(Ljava/lang/Boolean;)V

    .line 74
    invoke-virtual {p1, v4}, Lcom/chillingo/liboffers/model/CallbackContainer;->setReason(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v4}, Lcom/chillingo/liboffers/model/CallbackContainer;->setResult(Ljava/lang/Object;)V

    .line 85
    :goto_1
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Throwable;
    instance-of v3, v1, Lorg/restlet/resource/ResourceException;

    if-eqz v3, :cond_5

    move-object v3, v1

    .line 64
    check-cast v3, Lorg/restlet/resource/ResourceException;

    invoke-virtual {v3}, Lorg/restlet/resource/ResourceException;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Status;->getCode()I

    move-result v2

    .line 67
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    if-nez v0, :cond_7

    .line 78
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->setSuccess(Ljava/lang/Boolean;)V

    .line 79
    invoke-virtual {p1, v4}, Lcom/chillingo/liboffers/model/CallbackContainer;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 81
    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->setSuccess(Ljava/lang/Boolean;)V

    .line 82
    invoke-virtual {p1, v0}, Lcom/chillingo/liboffers/model/CallbackContainer;->setResult(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1, v4}, Lcom/chillingo/liboffers/model/CallbackContainer;->setReason(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public postStoreEvent(Lcom/chillingo/liboffers/model/CallbackContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "trackingId"    # Ljava/lang/String;
    .param p3, "sourceBundleId"    # Ljava/lang/String;
    .param p4, "targetBundleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/CallbackContainer",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "callbackContainer":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No callbackContainer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No trackingId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No target bundle ID"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 96
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No source bundle ID"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_6
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->lazyInit()V

    .line 99
    const/4 v1, 0x0

    .line 103
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->conversionRESTServiceController:Lcom/chillingo/liboffers/http/REST/ConversionRESTService;

    invoke-interface {v2, p2, p3, p4}, Lcom/chillingo/liboffers/http/REST/ConversionRESTService;->storeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 110
    :goto_0
    if-nez v1, :cond_7

    .line 111
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/chillingo/liboffers/model/CallbackContainer;->setSuccess(Ljava/lang/Boolean;)V

    .line 112
    invoke-virtual {p1, v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->setResult(Ljava/lang/Object;)V

    .line 118
    :goto_1
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/chillingo/liboffers/model/CallbackContainer;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_7
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/chillingo/liboffers/model/CallbackContainer;->setSuccess(Ljava/lang/Boolean;)V

    .line 115
    invoke-virtual {p1, v1}, Lcom/chillingo/liboffers/model/CallbackContainer;->setResult(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p1, v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->setReason(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateConversionServerUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->conversionServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->conversionRESTServiceController:Lcom/chillingo/liboffers/http/REST/ConversionRESTService;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->conversionRESTServiceController:Lcom/chillingo/liboffers/http/REST/ConversionRESTService;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/http/REST/ConversionRESTService;->initialiseWithURL(Ljava/lang/String;)V

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/chillingo/liboffers/http/ConversionControllerImpl;->conversionServerUrl:Ljava/lang/String;

    .line 41
    :cond_1
    return-void
.end method
