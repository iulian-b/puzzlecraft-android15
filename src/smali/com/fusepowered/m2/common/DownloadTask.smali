.class public Lcom/fusepowered/m2/common/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/common/DownloadTask$DownloadTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        "Ljava/lang/Void;",
        "Lcom/fusepowered/m2/common/DownloadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDownloadTaskListener:Lcom/fusepowered/m2/common/DownloadTask$DownloadTaskListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/common/DownloadTask$DownloadTaskListener;)V
    .locals 2
    .param p1, "downloadTaskListener"    # Lcom/fusepowered/m2/common/DownloadTask$DownloadTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DownloadTaskListener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/m2/common/DownloadTask;->mDownloadTaskListener:Lcom/fusepowered/m2/common/DownloadTask$DownloadTaskListener;

    .line 25
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/fusepowered/m2/common/DownloadResponse;
    .locals 7
    .param p1, "httpUriRequests"    # [Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 29
    if-eqz p1, :cond_0

    array-length v4, p1

    if-eqz v4, :cond_0

    aget-object v4, p1, v6

    if-nez v4, :cond_2

    .line 30
    :cond_0
    const-string v4, "Download task tried to execute null or empty url"

    invoke-static {v4}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move-object v4, v5

    .line 47
    :cond_1
    :goto_0
    return-object v4

    .line 34
    :cond_2
    aget-object v3, p1, v6

    .line 35
    .local v3, "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fusepowered/m2/common/DownloadTask;->mUrl:Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, "httpClient":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    invoke-static {}, Lcom/fusepowered/m2/common/HttpClient;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 41
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    new-instance v4, Lcom/fusepowered/m2/common/DownloadResponse;

    invoke-direct {v4, v2}, Lcom/fusepowered/m2/common/DownloadResponse;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 42
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Download task threw an internal exception"

    invoke-static {v4, v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_3
    move-object v4, v5

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    .line 47
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_4
    throw v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, [Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/common/DownloadTask;->doInBackground([Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/fusepowered/m2/common/DownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "DownloadTask was cancelled."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected onPostExecute(Lcom/fusepowered/m2/common/DownloadResponse;)V
    .locals 2
    .param p1, "downloadResponse"    # Lcom/fusepowered/m2/common/DownloadResponse;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/fusepowered/m2/common/DownloadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/fusepowered/m2/common/DownloadTask;->onCancelled()V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/common/DownloadTask;->mDownloadTaskListener:Lcom/fusepowered/m2/common/DownloadTask$DownloadTaskListener;

    iget-object v1, p0, Lcom/fusepowered/m2/common/DownloadTask;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/fusepowered/m2/common/DownloadTask$DownloadTaskListener;->onComplete(Ljava/lang/String;Lcom/fusepowered/m2/common/DownloadResponse;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, Lcom/fusepowered/m2/common/DownloadResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/common/DownloadTask;->onPostExecute(Lcom/fusepowered/m2/common/DownloadResponse;)V

    return-void
.end method
