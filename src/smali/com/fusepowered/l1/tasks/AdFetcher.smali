.class public Lcom/fusepowered/l1/tasks/AdFetcher;
.super Ljava/lang/Object;
.source "AdFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/tasks/AdFetcher$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TIMEOUT:I = 0x2710


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/fusepowered/l1/tasks/AdFetcher$Listener;

.field private mLoopMeError:Lcom/fusepowered/l1/LoopMeError;

.field private mRequestUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/fusepowered/l1/tasks/AdFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/tasks/AdFetcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;Lcom/fusepowered/l1/tasks/AdFetcher$Listener;)V
    .locals 0
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/fusepowered/l1/tasks/AdFetcher$Listener;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mRequestUrl:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mListener:Lcom/fusepowered/l1/tasks/AdFetcher$Listener;

    .line 44
    iput-object p2, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/l1/tasks/AdFetcher;Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/tasks/AdFetcher;
    .param p1, "x1"    # Lcom/fusepowered/l1/AdParams;
    .param p2, "x2"    # Lcom/fusepowered/l1/LoopMeError;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/l1/tasks/AdFetcher;->complete(Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/l1/tasks/AdFetcher;)Lcom/fusepowered/l1/tasks/AdFetcher$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/tasks/AdFetcher;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mListener:Lcom/fusepowered/l1/tasks/AdFetcher$Listener;

    return-object v0
.end method

.method private complete(Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 2
    .param p1, "params"    # Lcom/fusepowered/l1/AdParams;
    .param p2, "error"    # Lcom/fusepowered/l1/LoopMeError;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mListener:Lcom/fusepowered/l1/tasks/AdFetcher$Listener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/l1/tasks/AdFetcher$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/fusepowered/l1/tasks/AdFetcher$2;-><init>(Lcom/fusepowered/l1/tasks/AdFetcher;Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_0
    return-void
.end method

.method private getResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v7, 0x0

    .line 84
    .local v7, "result":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 86
    .local v4, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v10, 0x2710

    invoke-static {v4, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    const/16 v10, 0x2710

    invoke-static {v4, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 89
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 90
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    const-string v11, "http.useragent"

    const-string v12, "http.agent"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 91
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-static {}, Lcom/fusepowered/l1/BaseAdHolder;->get()Lcom/fusepowered/l1/BaseAd;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fusepowered/l1/BaseAd;->getAdFormat()Lcom/fusepowered/l1/AdFormat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fusepowered/l1/AdFormat;->toString()Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "type":Ljava/lang/String;
    sget-object v10, Lcom/fusepowered/l1/tasks/AdFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " loads ad with URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v10, v11, v12}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 96
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 97
    .local v6, "responce":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 99
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 101
    .local v8, "statusCode":I
    sparse-switch v8, :sswitch_data_0

    .line 116
    new-instance v10, Lcom/fusepowered/l1/LoopMeError;

    const-string v11, "Unknown status code from server"

    invoke-direct {v10, v11}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mLoopMeError:Lcom/fusepowered/l1/LoopMeError;

    .line 128
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v6    # "responce":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusCode":I
    .end local v9    # "type":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 103
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v6    # "responce":Lorg/apache/http/HttpResponse;
    .restart local v8    # "statusCode":I
    .restart local v9    # "type":Ljava/lang/String;
    :sswitch_0
    new-instance v10, Lcom/fusepowered/l1/LoopMeError;

    const-string v11, "No ads found"

    invoke-direct {v10, v11}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mLoopMeError:Lcom/fusepowered/l1/LoopMeError;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 120
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v6    # "responce":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusCode":I
    .end local v9    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    new-instance v10, Lcom/fusepowered/l1/LoopMeError;

    const-string v11, "Connection timeout"

    invoke-direct {v10, v11}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mLoopMeError:Lcom/fusepowered/l1/LoopMeError;

    goto :goto_0

    .line 107
    .end local v1    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v6    # "responce":Lorg/apache/http/HttpResponse;
    .restart local v8    # "statusCode":I
    .restart local v9    # "type":Ljava/lang/String;
    :sswitch_1
    :try_start_1
    new-instance v10, Lcom/fusepowered/l1/LoopMeError;

    const-string v11, "Invalid app key"

    invoke-direct {v10, v11}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mLoopMeError:Lcom/fusepowered/l1/LoopMeError;
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 122
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v6    # "responce":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusCode":I
    .end local v9    # "type":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "ex":Ljava/net/SocketTimeoutException;
    new-instance v10, Lcom/fusepowered/l1/LoopMeError;

    const-string v11, "Connection timeout"

    invoke-direct {v10, v11}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mLoopMeError:Lcom/fusepowered/l1/LoopMeError;

    goto :goto_0

    .line 111
    .end local v1    # "ex":Ljava/net/SocketTimeoutException;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v6    # "responce":Lorg/apache/http/HttpResponse;
    .restart local v8    # "statusCode":I
    .restart local v9    # "type":Ljava/lang/String;
    :sswitch_2
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 112
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {v5}, Lcom/fusepowered/l1/Utils;->StringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 113
    goto :goto_0

    .line 124
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "responce":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusCode":I
    .end local v9    # "type":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 125
    .local v1, "ex":Ljava/io/IOException;
    new-instance v10, Lcom/fusepowered/l1/LoopMeError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception while get response with message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mLoopMeError:Lcom/fusepowered/l1/LoopMeError;

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0xcc -> :sswitch_0
        0x194 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    iget-object v3, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mRequestUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/fusepowered/l1/tasks/AdFetcher;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 52
    iget-object v3, p0, Lcom/fusepowered/l1/tasks/AdFetcher;->mLoopMeError:Lcom/fusepowered/l1/LoopMeError;

    invoke-direct {p0, v4, v3}, Lcom/fusepowered/l1/tasks/AdFetcher;->complete(Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v1, Lcom/fusepowered/l1/ResponseParser;

    new-instance v3, Lcom/fusepowered/l1/tasks/AdFetcher$1;

    invoke-direct {v3, p0}, Lcom/fusepowered/l1/tasks/AdFetcher$1;-><init>(Lcom/fusepowered/l1/tasks/AdFetcher;)V

    invoke-direct {v1, v3}, Lcom/fusepowered/l1/ResponseParser;-><init>(Lcom/fusepowered/l1/ResponseParser$Listener;)V

    .line 62
    .local v1, "parser":Lcom/fusepowered/l1/ResponseParser;
    invoke-virtual {v1, v2}, Lcom/fusepowered/l1/ResponseParser;->getAdParams(Ljava/lang/String;)Lcom/fusepowered/l1/AdParams;

    move-result-object v0

    .line 63
    .local v0, "adParams":Lcom/fusepowered/l1/AdParams;
    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0, v0, v4}, Lcom/fusepowered/l1/tasks/AdFetcher;->complete(Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V

    goto :goto_0
.end method
