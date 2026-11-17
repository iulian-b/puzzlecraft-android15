.class public Lcom/chillingo/liboffers/http/REST/Raw/OfferDataRESTServiceController;
.super Ljava/lang/Object;
.source "OfferDataRESTServiceController.java"

# interfaces
.implements Lcom/chillingo/liboffers/http/REST/OfferDataRESTService;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OfferDataRESTServiceController"


# instance fields
.field private baseURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x3e8

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 100
    .local v1, "r":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public downloadOfferData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/liboffers/model/OfferDataContainer;
    .locals 12
    .param p1, "uname"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "bundleId"    # Ljava/lang/String;
    .param p4, "countryCode"    # Ljava/lang/String;
    .param p5, "screenSize"    # Ljava/lang/String;
    .param p6, "sdk"    # Ljava/lang/String;
    .param p7, "storeType"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v4, 0x0

    .line 32
    .local v4, "jsonDataString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/chillingo/liboffers/http/REST/Raw/OfferDataRESTServiceController;->baseURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/offers/offersfeed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "targetURL":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_1
    const-string v9, "x-crystal-uname"

    invoke-virtual {v8, v9, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v9, "x-crystal-userid"

    invoke-virtual {v8, v9, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v9, "x-crystal-bundleid"

    invoke-virtual {v8, v9, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz p4, :cond_0

    .line 48
    const-string v9, "x-crystal-countrycode"

    move-object/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    const-string v9, "x-crystal-screensize"

    move-object/from16 v0, p5

    invoke-virtual {v8, v9, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v9, "x-crystal-sdk"

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v9, "x-crystal-storetype"

    move-object/from16 v0, p7

    invoke-virtual {v8, v9, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v9, "OfferDataRESTServiceController"

    const-string v10, "Requesting offer data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    .local v3, "in":Ljava/io/InputStream;
    invoke-direct {p0, v3}, Lcom/chillingo/liboffers/http/REST/Raw/OfferDataRESTServiceController;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 60
    const-string v9, "OfferDataRESTServiceController"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    .end local v3    # "in":Ljava/io/InputStream;
    :goto_0
    const/4 v1, 0x0

    .line 78
    .local v1, "data":Lcom/chillingo/liboffers/model/OfferDataContainer;
    if-eqz v4, :cond_1

    .line 82
    :try_start_3
    new-instance v5, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v5}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 84
    .local v5, "jsonMapper":Lorg/codehaus/jackson/map/ObjectMapper;
    const-class v9, Lcom/chillingo/liboffers/model/OfferDataContainer;

    invoke-virtual {v5, v4, v9}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":Lcom/chillingo/liboffers/model/OfferDataContainer;
    check-cast v1, Lcom/chillingo/liboffers/model/OfferDataContainer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 93
    .end local v5    # "jsonMapper":Lorg/codehaus/jackson/map/ObjectMapper;
    .restart local v1    # "data":Lcom/chillingo/liboffers/model/OfferDataContainer;
    :cond_1
    return-object v1

    .line 62
    .end local v1    # "data":Lcom/chillingo/liboffers/model/OfferDataContainer;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v9, "OfferDataRESTServiceController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error with accessing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    :try_start_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 69
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v2

    .line 70
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v9, "OfferDataRESTServiceController"

    const-string v10, "Failed to download offer data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Failed to download offer data"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 67
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v9

    :try_start_6
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v9
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 86
    :catch_2
    move-exception v2

    .line 87
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v9, "OfferDataRESTServiceController"

    const-string v10, "Failed to convert response JSON data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Failed to convert response JSON data"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public initialiseWithURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetURL"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/chillingo/liboffers/http/REST/Raw/OfferDataRESTServiceController;->baseURL:Ljava/lang/String;

    .line 25
    return-void
.end method
