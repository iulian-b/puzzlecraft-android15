.class public Lcom/fusepowered/m2/common/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static final SOCKET_TIMEOUT:I = 0x2710

.field private static sWebViewUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/m2/common/HttpClient;->DEFAULT_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeUrl(Ljava/lang/String;)Ljava/net/URI;
    .locals 10
    .param p0, "urlString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    .local v9, "url":Ljava/net/URL;
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .local v0, "uri":Ljava/net/URI;
    return-object v0

    .line 134
    .end local v0    # "uri":Ljava/net/URI;
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 135
    .local v8, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encode url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 136
    throw v8
.end method

.method public static getHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 5

    .prologue
    const/16 v4, 0x2710

    .line 32
    sget-object v3, Lcom/fusepowered/m2/common/HttpClient;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-static {v3}, Lcom/fusepowered/m2/common/HttpClient;->getWebViewUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "userAgent":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 36
    .local v0, "httpClient":Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 37
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 38
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 39
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 41
    return-object v0
.end method

.method public static declared-synchronized getWebViewUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    const-class v0, Lcom/fusepowered/m2/common/HttpClient;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/fusepowered/m2/common/HttpClient;->getWebViewUserAgent(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getWebViewUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "defaultUserAgent"    # Ljava/lang/String;

    .prologue
    .line 146
    const-class v1, Lcom/fusepowered/m2/common/HttpClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fusepowered/m2/common/HttpClient;->sWebViewUserAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    .end local p0    # "defaultUserAgent":Ljava/lang/String;
    :goto_0
    monitor-exit v1

    return-object p0

    .restart local p0    # "defaultUserAgent":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object p0, Lcom/fusepowered/m2/common/HttpClient;->sWebViewUserAgent:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initializeHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fusepowered/m2/common/HttpClient;->initializeHttpGet(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method public static initializeHttpGet(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/client/methods/HttpGet;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-static {p0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    :try_start_0
    invoke-static {p0}, Lcom/fusepowered/m2/common/HttpClient;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    .local v1, "getUrl":Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-static {}, Lcom/fusepowered/m2/common/HttpClient;->getWebViewUserAgent()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    .line 63
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/m2/common/HttpClient;->setWebViewUserAgent(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/common/HttpClient;->getWebViewUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "webViewUserAgent":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 69
    sget-object v4, Lcom/fusepowered/m2/common/util/ResponseHeader;->USER_AGENT:Lcom/fusepowered/m2/common/util/ResponseHeader;

    invoke-virtual {v4}, Lcom/fusepowered/m2/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    return-object v2

    .line 55
    .end local v1    # "getUrl":Ljava/lang/String;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "webViewUserAgent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, p0

    .restart local v1    # "getUrl":Ljava/lang/String;
    goto :goto_0
.end method

.method static isUrlImproperlyEncoded(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Url is improperly encoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static isUrlUnencoded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/net/URISyntaxException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized setWebViewUserAgent(Ljava/lang/String;)V
    .locals 2
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 160
    const-class v0, Lcom/fusepowered/m2/common/HttpClient;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/fusepowered/m2/common/HttpClient;->sWebViewUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit v0

    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    invoke-static {p0}, Lcom/fusepowered/m2/common/HttpClient;->isUrlImproperlyEncoded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL is improperly encoded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/m2/common/HttpClient;->isUrlUnencoded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-static {p0}, Lcom/fusepowered/m2/common/HttpClient;->encodeUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 96
    .local v0, "uri":Ljava/net/URI;
    :goto_0
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 93
    .end local v0    # "uri":Ljava/net/URI;
    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .restart local v0    # "uri":Ljava/net/URI;
    goto :goto_0
.end method
