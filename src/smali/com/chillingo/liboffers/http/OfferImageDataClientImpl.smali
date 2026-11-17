.class public Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;
.super Ljava/lang/Object;
.source "OfferImageDataClientImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/http/OfferImageDataClient;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field context:Landroid/content/Context;
    .annotation build Lcom/googlecode/androidannotations/annotations/RootContext;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDownloadImageDataForOffer(Lcom/chillingo/liboffers/model/Offer;)Z
    .locals 11
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v8, Ljava/security/InvalidParameterException;

    const-string v9, "Null offer"

    invoke-direct {v8, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getImage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getImage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 89
    :cond_1
    new-instance v8, Ljava/security/InvalidParameterException;

    const-string v9, "No image name (url) supplied"

    invoke-direct {v8, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 94
    :cond_2
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getImage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v4, "imageUrl":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 101
    .local v7, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    .line 102
    .local v5, "length":I
    new-array v0, v5, [B

    .line 104
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 105
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 108
    .local v6, "success":Z
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    const/4 v6, 0x1

    .line 114
    if-eqz v2, :cond_6

    .line 116
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .line 124
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :cond_3
    :goto_0
    if-eqz v6, :cond_4

    .line 125
    invoke-virtual {p1, v0}, Lcom/chillingo/liboffers/model/Offer;->setBitmapData([B)V

    .line 127
    :cond_4
    return v6

    .line 95
    .end local v0    # "buffer":[B
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "imageUrl":Ljava/net/URL;
    .end local v5    # "length":I
    .end local v6    # "success":Z
    .end local v7    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 97
    new-instance v8, Ljava/security/InvalidParameterException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid URL in offer data "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getImageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 117
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "imageUrl":Ljava/net/URL;
    .restart local v5    # "length":I
    .restart local v6    # "success":Z
    .restart local v7    # "urlConnection":Ljava/net/URLConnection;
    :catch_1
    move-exception v8

    move-object v1, v2

    .line 119
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_0

    .line 111
    :catch_2
    move-exception v3

    .line 112
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v8, "Offers"

    const-string v9, "Error reading stream"

    invoke-static {v8, v9}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    if-eqz v1, :cond_3

    .line 116
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 117
    :catch_3
    move-exception v8

    goto :goto_0

    .line 114
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v1, :cond_5

    .line 116
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 119
    :cond_5
    :goto_3
    throw v8

    .line 117
    :catch_4
    move-exception v9

    goto :goto_3

    .line 114
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .line 111
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :cond_6
    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_0
.end method


# virtual methods
.method public downloadImageDataForOffer(Lcom/chillingo/liboffers/model/Offer;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;)V
    .locals 8
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "resultHandler"    # Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 33
    const/4 v3, 0x0

    .line 37
    .local v3, "success":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;->doDownloadImageDataForOffer(Lcom/chillingo/liboffers/model/Offer;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 44
    :goto_0
    if-nez v3, :cond_0

    .line 46
    :try_start_1
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;->doDownloadImageDataForOffer(Lcom/chillingo/liboffers/model/Offer;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 55
    :cond_0
    :goto_1
    :try_start_2
    const-string v5, "Offers"

    const-string v6, "Informing handler of image download finished"

    invoke-static {v5, v6}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    move v0, v3

    .line 60
    .local v0, "finalSuccess":Z
    new-instance v1, Landroid/os/Handler;

    iget-object v5, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .local v1, "mainHandler":Landroid/os/Handler;
    new-instance v2, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl$1;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl$1;-><init>(Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;ZLcom/chillingo/liboffers/model/Offer;)V

    .line 69
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .end local v0    # "finalSuccess":Z
    .end local v1    # "mainHandler":Landroid/os/Handler;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :goto_2
    return-void

    .line 38
    :catch_0
    move-exception v4

    .line 39
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error downloading image data for offer - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 48
    .restart local v4    # "t":Ljava/lang/Throwable;
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error downloading image data for offer on retry - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v4

    .line 72
    .restart local v4    # "t":Ljava/lang/Throwable;
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occurred whilst calling downloadFinished - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
