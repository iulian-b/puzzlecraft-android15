.class public Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;
.super Ljava/lang/Object;
.source "ConversionRestletServiceController.java"

# interfaces
.implements Lcom/chillingo/liboffers/http/REST/ConversionRESTService;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ConversionRestletServiceController"


# instance fields
.field private restletService:Lorg/restlet/resource/ClientResource;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "ConversionRestletServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/ext/jackson/JacksonConverter;

    invoke-direct {v1}, Lorg/restlet/ext/jackson/JacksonConverter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/ext/httpclient/HttpClientHelper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/restlet/ext/httpclient/HttpClientHelper;-><init>(Lorg/restlet/Client;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method


# virtual methods
.method public initialiseWithURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetURL"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lorg/restlet/resource/ClientResource;

    invoke-direct {v0, p1}, Lorg/restlet/resource/ClientResource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    .line 35
    return-void
.end method

.method public startEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/liboffers/model/ConversionResponse;
    .locals 5
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "targetBundleId"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 46
    .local v0, "conversionResponse":Lcom/chillingo/liboffers/model/ConversionResponse;
    :try_start_0
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v3, "conversionTracker"

    invoke-virtual {v2, v3}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 47
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v3, "startEvent"

    invoke-virtual {v2, v3}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 50
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v3, "trackingId"

    invoke-virtual {v2, v3, p1}, Lorg/restlet/resource/ClientResource;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 51
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v3, "targetBundleId"

    invoke-virtual {v2, v3, p2}, Lorg/restlet/resource/ClientResource;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 55
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-class v3, Lcom/chillingo/liboffers/model/ConversionResponse;

    invoke-virtual {v2, v3}, Lorg/restlet/resource/ClientResource;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "conversionResponse":Lcom/chillingo/liboffers/model/ConversionResponse;
    check-cast v0, Lcom/chillingo/liboffers/model/ConversionResponse;
    :try_end_0
    .catch Lorg/restlet/resource/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .restart local v0    # "conversionResponse":Lcom/chillingo/liboffers/model/ConversionResponse;
    return-object v0

    .line 57
    .end local v0    # "conversionResponse":Lcom/chillingo/liboffers/model/ConversionResponse;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Lorg/restlet/resource/ResourceException;
    const-string v2, "ConversionRestletServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    throw v1
.end method

.method public storeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "sourceBundleId"    # Ljava/lang/String;
    .param p3, "targetBundleId"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 76
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v3, "conversionTracker"

    invoke-virtual {v2, v3}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 77
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v3, "storeEvent"

    invoke-virtual {v2, v3}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 81
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v3, "trackingId"

    invoke-virtual {v2, v3, p1}, Lorg/restlet/resource/ClientResource;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 82
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v3, "sourceBundleId"

    invoke-virtual {v2, v3, p2}, Lorg/restlet/resource/ClientResource;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 83
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v3, "targetBundleId"

    invoke-virtual {v2, v3, p3}, Lorg/restlet/resource/ClientResource;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 85
    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/ConversionRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/restlet/resource/ClientResource;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "response":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lorg/restlet/resource/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .restart local v1    # "response":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 96
    const-string v1, ""

    .line 99
    :cond_0
    return-object v1

    .line 87
    .end local v1    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/restlet/resource/ResourceException;
    const-string v2, "ConversionRestletServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to store event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    throw v0
.end method
