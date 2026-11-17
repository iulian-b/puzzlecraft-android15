.class public Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;
.super Ljava/lang/Object;
.source "OfferDataRestletServiceController.java"

# interfaces
.implements Lcom/chillingo/liboffers/http/REST/OfferDataRESTService;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OfferDataRestletServiceController"


# instance fields
.field private restletService:Lorg/restlet/resource/ClientResource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadOfferData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/liboffers/model/OfferDataContainer;
    .locals 6
    .param p1, "uname"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "bundleId"    # Ljava/lang/String;
    .param p4, "countryCode"    # Ljava/lang/String;
    .param p5, "screenSize"    # Ljava/lang/String;
    .param p6, "sdk"    # Ljava/lang/String;
    .param p7, "storeType"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 62
    .local v0, "data":Lcom/chillingo/liboffers/model/OfferDataContainer;
    :try_start_0
    iget-object v3, p0, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v4, "offers"

    invoke-virtual {v3, v4}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 63
    iget-object v3, p0, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-string v4, "offersfeed"

    invoke-virtual {v3, v4}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 73
    iget-object v3, p0, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    invoke-virtual {v3}, Lorg/restlet/resource/ClientResource;->getRequestAttributes()Ljava/util/Map;

    move-result-object v3

    const-string v4, "org.restlet.http.headers"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/util/Series;

    .line 75
    .local v2, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-nez v2, :cond_0

    .line 76
    new-instance v2, Lorg/restlet/util/Series;

    .end local v2    # "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const-class v3, Lorg/restlet/engine/header/Header;

    invoke-direct {v2, v3}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    .line 78
    .restart local v2    # "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    iget-object v3, p0, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    invoke-virtual {v3}, Lorg/restlet/resource/ClientResource;->getRequestAttributes()Ljava/util/Map;

    move-result-object v3

    const-string v4, "org.restlet.http.headers"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    const-string v3, "x-crystal-uname"

    invoke-virtual {v2, v3, p1}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    .line 83
    const-string v3, "x-crystal-userid"

    invoke-virtual {v2, v3, p2}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    .line 84
    const-string v3, "x-crystal-bundleid"

    invoke-virtual {v2, v3, p3}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    .line 86
    if-eqz p4, :cond_1

    .line 87
    const-string v3, "x-crystal-countrycode"

    invoke-virtual {v2, v3, p4}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    .line 89
    :cond_1
    const-string v3, "x-crystal-screensize"

    invoke-virtual {v2, v3, p5}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    .line 90
    const-string v3, "x-crystal-sdk"

    invoke-virtual {v2, v3, p6}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    .line 91
    const-string v3, "x-crystal-storetype"

    invoke-virtual {v2, v3, p7}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    .line 93
    const-string v3, "OfferDataRestletServiceController"

    const-string v4, "Requesting offer data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v3, p0, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    const-class v4, Lcom/chillingo/liboffers/model/OfferDataContainer;

    invoke-virtual {v3, v4}, Lorg/restlet/resource/ClientResource;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "data":Lcom/chillingo/liboffers/model/OfferDataContainer;
    check-cast v0, Lcom/chillingo/liboffers/model/OfferDataContainer;
    :try_end_0
    .catch Lorg/restlet/resource/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .restart local v0    # "data":Lcom/chillingo/liboffers/model/OfferDataContainer;
    const-string v3, "OfferDataRestletServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-nez v0, :cond_2

    .line 106
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to convert downloaded offer data to JSON representation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    .end local v0    # "data":Lcom/chillingo/liboffers/model/OfferDataContainer;
    .end local v2    # "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Lorg/restlet/resource/ResourceException;
    const-string v3, "OfferDataRestletServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to download offer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/resource/ResourceException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    throw v1

    .line 109
    .end local v1    # "e":Lorg/restlet/resource/ResourceException;
    .restart local v0    # "data":Lcom/chillingo/liboffers/model/OfferDataContainer;
    .restart local v2    # "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    :cond_2
    return-object v0
.end method

.method public initialiseWithURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "targetURL"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "OfferDataRestletServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialising Restlet with URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v0, "OfferDataRestletServiceController"

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

    .line 32
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/ext/jackson/JacksonConverter;

    invoke-direct {v1}, Lorg/restlet/ext/jackson/JacksonConverter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/ext/httpclient/HttpClientHelper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/restlet/ext/httpclient/HttpClientHelper;-><init>(Lorg/restlet/Client;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;->registerForHTTPS()V

    .line 39
    new-instance v0, Lorg/restlet/resource/ClientResource;

    invoke-direct {v0, p1}, Lorg/restlet/resource/ClientResource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    .line 41
    const-string v0, "OfferDataRestletServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry attempts:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    invoke-virtual {v2}, Lorg/restlet/resource/ClientResource;->getRetryAttempts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v0, "OfferDataRestletServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry delay:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/http/REST/Restlet/OfferDataRestletServiceController;->restletService:Lorg/restlet/resource/ClientResource;

    invoke-virtual {v2}, Lorg/restlet/resource/ClientResource;->getRetryDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public registerForHTTPS()V
    .locals 6

    .prologue
    .line 116
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "clients":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;>;"
    const-string v3, "OfferDataRestletServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connectors - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/ConnectorHelper;

    .line 120
    .local v1, "connectorHelper":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;"
    const-string v3, "OfferDataRestletServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connector = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v3, "OfferDataRestletServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocols = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/engine/ConnectorHelper;->getProtocols()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v1    # "connectorHelper":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;"
    :cond_0
    return-void
.end method
