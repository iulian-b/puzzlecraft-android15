.class public Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;
.super Landroid/os/AsyncTask;
.source "VastVideoDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;
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


# static fields
.field private static final MAX_VIDEO_SIZE:I = 0x1900000


# instance fields
.field private final mVastVideoDownloadTaskListener:Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;->mVastVideoDownloadTaskListener:Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;

    .line 28
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 32
    if-eqz p1, :cond_0

    aget-object v7, p1, v8

    if-nez v7, :cond_2

    .line 33
    :cond_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 60
    :cond_1
    :goto_0
    return-object v7

    .line 36
    :cond_2
    aget-object v6, p1, v8

    .line 37
    .local v6, "videoUrl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 39
    .local v2, "httpClient":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    invoke-static {}, Lcom/fusepowered/m2/common/HttpClient;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 40
    invoke-static {v6}, Lcom/fusepowered/m2/common/HttpClient;->initializeHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3

    .line 41
    .local v3, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 43
    .local v5, "response":Lorg/apache/http/HttpResponse;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    if-nez v7, :cond_4

    .line 44
    :cond_3
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Obtained null response from video url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v3    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to download video: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 57
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 59
    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 47
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    const-wide/32 v10, 0x1900000

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 48
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Video exceeded max download size"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .end local v3    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_5

    .line 60
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_5
    throw v7

    .line 51
    .restart local v3    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-static {v6, v4}, Lcom/fusepowered/m2/common/CacheService;->putToDiskCache(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    .line 53
    .local v0, "diskPutResult":Z
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 59
    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    .line 68
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;->mVastVideoDownloadTaskListener:Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;->mVastVideoDownloadTaskListener:Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;->onComplete(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
