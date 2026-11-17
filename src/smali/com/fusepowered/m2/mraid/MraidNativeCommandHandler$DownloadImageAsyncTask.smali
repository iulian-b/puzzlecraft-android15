.class Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "MraidNativeCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 454
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mContext:Landroid/content/Context;

    .line 456
    iput-object p2, p0, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    .line 457
    return-void
.end method

.method private getFileNameForUriAndHttpResponse(Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 513
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 515
    .local v8, "path":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 516
    const/4 v4, 0x0

    .line 536
    :cond_0
    :goto_0
    return-object v4

    .line 519
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, "filename":Ljava/lang/String;
    const-string v9, "Content-Type"

    invoke-interface {p2, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 522
    .local v5, "header":Lorg/apache/http/Header;
    if-eqz v5, :cond_0

    .line 523
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "fields":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v2, v0, v6

    .line 526
    .local v2, "field":Ljava/lang/String;
    const-string v9, "image/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 527
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 529
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 524
    .end local v1    # "extension":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private getPictureStoragePath()Ljava/io/File;
    .locals 3

    .prologue
    .line 540
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadPictureIntoGalleryApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 544
    new-instance v1, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;

    invoke-direct {v1, p1, v2, v2}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$1;)V

    .line 546
    .local v1, "mediaScannerConnectionClient":Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 548
    .local v0, "mediaScannerConnection":Landroid/media/MediaScannerConnection;
    invoke-static {v1, v0}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->access$100(Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;Landroid/media/MediaScannerConnection;)V

    .line 549
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 550
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 16
    .param p1, "params"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 461
    move-object/from16 v0, p1

    array-length v15, v0

    if-lez v15, :cond_1

    const/4 v15, 0x1

    :goto_0
    invoke-static {v15}, Lcom/fusepowered/m2/common/Preconditions;->checkState(Z)V

    .line 462
    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-static {v15}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 464
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->getPictureStoragePath()Ljava/io/File;

    move-result-object v11

    .line 467
    .local v11, "pictureStoragePath":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 469
    const/4 v15, 0x0

    aget-object v14, p1, v15

    .line 470
    .local v14, "uriString":Ljava/lang/String;
    invoke-static {v14}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v13

    .line 472
    .local v13, "uri":Ljava/net/URI;
    invoke-static {}, Lcom/fusepowered/m2/mobileads/factories/HttpClientFactory;->create()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 473
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v13}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/fusepowered/m2/common/HttpClient;->initializeHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3

    .line 475
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const/4 v8, 0x0

    .line 476
    .local v8, "pictureInputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 478
    .local v9, "pictureOutputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 479
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 481
    sget-object v15, Lcom/fusepowered/m2/common/util/ResponseHeader;->LOCATION:Lcom/fusepowered/m2/common/util/ResponseHeader;

    invoke-static {v4, v15}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v12

    .line 482
    .local v12, "redirectLocation":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 483
    invoke-static {v12}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v13

    .line 486
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->getFileNameForUriAndHttpResponse(Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v7

    .line 487
    .local v7, "pictureFileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    .local v5, "pictureFile":Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    .end local v9    # "pictureOutputStream":Ljava/io/OutputStream;
    .local v10, "pictureOutputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v8, v10}, Lcom/fusepowered/m2/common/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 491
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, "pictureFileFullPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->loadPictureIntoGalleryApp(Ljava/lang/String;)V

    .line 494
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v15

    .line 498
    invoke-static {v8}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 499
    invoke-static {v10}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    move-object v9, v10

    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "pictureFile":Ljava/io/File;
    .end local v6    # "pictureFileFullPath":Ljava/lang/String;
    .end local v7    # "pictureFileName":Ljava/lang/String;
    .end local v10    # "pictureOutputStream":Ljava/io/OutputStream;
    .end local v12    # "redirectLocation":Ljava/lang/String;
    .restart local v9    # "pictureOutputStream":Ljava/io/OutputStream;
    :goto_1
    return-object v15

    .line 461
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v8    # "pictureInputStream":Ljava/io/InputStream;
    .end local v9    # "pictureOutputStream":Ljava/io/OutputStream;
    .end local v11    # "pictureStoragePath":Ljava/io/File;
    .end local v13    # "uri":Ljava/net/URI;
    .end local v14    # "uriString":Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 495
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "pictureInputStream":Ljava/io/InputStream;
    .restart local v9    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v11    # "pictureStoragePath":Ljava/io/File;
    .restart local v13    # "uri":Ljava/net/URI;
    .restart local v14    # "uriString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    const/4 v15, 0x0

    :try_start_2
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    .line 498
    invoke-static {v8}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 499
    invoke-static {v9}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 498
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_3
    invoke-static {v8}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 499
    invoke-static {v9}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v15

    .line 498
    .end local v9    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v5    # "pictureFile":Ljava/io/File;
    .restart local v7    # "pictureFileName":Ljava/lang/String;
    .restart local v10    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v12    # "redirectLocation":Ljava/lang/String;
    :catchall_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v9    # "pictureOutputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 495
    .end local v9    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v10    # "pictureOutputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v9    # "pictureOutputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 442
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 505
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;->onSuccess()V

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;->onFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 442
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
