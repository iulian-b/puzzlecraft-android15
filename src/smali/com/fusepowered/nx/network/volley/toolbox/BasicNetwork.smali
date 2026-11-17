.class public Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field protected final mHttpStack:Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;

.field protected final mPool:Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/fusepowered/nx/network/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->DEBUG:Z

    .line 58
    const/16 v0, 0xbb8

    sput v0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    .line 60
    const/16 v0, 0x1000

    sput v0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;)V
    .locals 2
    .param p1, "httpStack"    # Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;

    .prologue
    .line 72
    new-instance v0, Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;

    sget v1, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;-><init>(Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;)V
    .locals 0
    .param p1, "httpStack"    # Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;
    .param p2, "pool"    # Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;

    .line 81
    iput-object p2, p0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->mPool:Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;

    .line 82
    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lcom/fusepowered/nx/network/volley/Cache$Entry;)V
    .locals 6
    .param p2, "entry"    # Lcom/fusepowered/nx/network/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/nx/network/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v1, p2, Lcom/fusepowered/nx/network/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 217
    const-string v1, "If-None-Match"

    iget-object v2, p2, Lcom/fusepowered/nx/network/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_2
    iget-wide v2, p2, Lcom/fusepowered/nx/network/volley/Cache$Entry;->serverDate:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 221
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/fusepowered/nx/network/volley/Cache$Entry;->serverDate:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 222
    .local v0, "refTime":Ljava/util/Date;
    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .locals 7
    .param p0, "logPrefix"    # Ljava/lang/String;
    .param p2, "exception"    # Lcom/fusepowered/nx/network/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fusepowered/nx/network/volley/Request",
            "<*>;",
            "Lcom/fusepowered/nx/network/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/network/volley/VolleyError;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/fusepowered/nx/network/volley/Request;, "Lcom/fusepowered/nx/network/volley/Request<*>;"
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-virtual {p1}, Lcom/fusepowered/nx/network/volley/Request;->getRetryPolicy()Lcom/fusepowered/nx/network/volley/RetryPolicy;

    move-result-object v2

    .line 198
    .local v2, "retryPolicy":Lcom/fusepowered/nx/network/volley/RetryPolicy;
    invoke-virtual {p1}, Lcom/fusepowered/nx/network/volley/Request;->getTimeoutMs()I

    move-result v1

    .line 201
    .local v1, "oldTimeout":I
    :try_start_0
    invoke-interface {v2, p2}, Lcom/fusepowered/nx/network/volley/RetryPolicy;->retry(Lcom/fusepowered/nx/network/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/fusepowered/nx/network/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const-string v3, "%s-retry [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 208
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lcom/fusepowered/nx/network/volley/VolleyError;
    const-string v3, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {p1, v3}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 205
    throw v0
.end method

.method private static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .param p0, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 267
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-object v1
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;)[B
    .locals 9
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fusepowered/nx/network/volley/ServerError;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 233
    new-instance v1, Lcom/fusepowered/nx/network/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v5, p0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->mPool:Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;

    .line 234
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v1, v5, v6}, Lcom/fusepowered/nx/network/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;I)V

    .line 235
    .local v1, "bytes":Lcom/fusepowered/nx/network/volley/toolbox/PoolingByteArrayOutputStream;
    const/4 v0, 0x0

    .line 237
    .local v0, "buffer":[B
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 238
    .local v4, "in":Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 239
    new-instance v5, Lcom/fusepowered/nx/network/volley/ServerError;

    invoke-direct {v5}, Lcom/fusepowered/nx/network/volley/ServerError;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v4    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    .line 250
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    :goto_0
    iget-object v6, p0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->mPool:Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;

    invoke-virtual {v6, v0}, Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 257
    invoke-virtual {v1}, Lcom/fusepowered/nx/network/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v5

    .line 241
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->mPool:Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 243
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 244
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Lcom/fusepowered/nx/network/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 246
    :cond_1
    invoke-virtual {v1}, Lcom/fusepowered/nx/network/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 250
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 256
    :goto_2
    iget-object v6, p0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->mPool:Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;

    invoke-virtual {v6, v0}, Lcom/fusepowered/nx/network/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 257
    invoke-virtual {v1}, Lcom/fusepowered/nx/network/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v5

    .line 251
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "Error occured when calling consumingContent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/fusepowered/nx/network/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 251
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 254
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "Error occured when calling consumingContent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/fusepowered/nx/network/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private logSlowRequests(JLcom/fusepowered/nx/network/volley/Request;[BLorg/apache/http/StatusLine;)V
    .locals 5
    .param p1, "requestLifetime"    # J
    .param p4, "responseContents"    # [B
    .param p5, "statusLine"    # Lorg/apache/http/StatusLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/fusepowered/nx/network/volley/Request",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    .local p3, "request":Lcom/fusepowered/nx/network/volley/Request;, "Lcom/fusepowered/nx/network/volley/Request<*>;"
    sget-boolean v0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_0

    sget v0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 183
    :cond_0
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    .line 184
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    array-length v0, p4

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 186
    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/fusepowered/nx/network/volley/Request;->getRetryPolicy()Lcom/fusepowered/nx/network/volley/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/fusepowered/nx/network/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 183
    invoke-static {v1, v2}, Lcom/fusepowered/nx/network/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_1
    return-void

    .line 185
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "start"    # J

    .prologue
    .line 227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 228
    .local v0, "now":J
    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    sub-long v6, v0, p3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/fusepowered/nx/network/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public performRequest(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/NetworkResponse;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/Request",
            "<*>;)",
            "Lcom/fusepowered/nx/network/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/network/volley/VolleyError;
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "request":Lcom/fusepowered/nx/network/volley/Request;, "Lcom/fusepowered/nx/network/volley/Request<*>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 88
    .local v14, "requestStart":J
    const/4 v10, 0x0

    .line 89
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 90
    .local v7, "responseContents":[B
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v13, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v9, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->getCacheEntry()Lcom/fusepowered/nx/network/volley/Cache$Entry;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lcom/fusepowered/nx/network/volley/Cache$Entry;)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->getRequestName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->getRequestName()Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "requestName":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " request URL -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->getBody()[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " request body -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->getBody()[B

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->preExecuteJustBefore()V

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v9}, Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;->performRequest(Lcom/fusepowered/nx/network/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->postExecuteImmediatelyAfter()V

    .line 108
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 109
    .local v8, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 111
    .local v16, "statusCode":I
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v13

    .line 113
    const/16 v3, 0x130

    move/from16 v0, v16

    if-ne v0, v3, :cond_3

    .line 114
    new-instance v3, Lcom/fusepowered/nx/network/volley/NetworkResponse;

    const/16 v6, 0x130

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->getCacheEntry()Lcom/fusepowered/nx/network/volley/Cache$Entry;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/fusepowered/nx/network/volley/Cache$Entry;->data:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v6, v0, v13, v1}, Lcom/fusepowered/nx/network/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 140
    :goto_2
    return-object v3

    .line 95
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v12    # "requestName":Ljava/lang/String;
    .end local v16    # "statusCode":I
    :cond_1
    const-string v12, ""

    goto/16 :goto_0

    .line 101
    .restart local v12    # "requestName":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " request body -> null "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 141
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "requestName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/net/SocketTimeoutException;
    new-instance v3, Lcom/fusepowered/nx/network/volley/TimeoutError;

    invoke-direct {v3}, Lcom/fusepowered/nx/network/volley/TimeoutError;-><init>()V

    throw v3

    .line 119
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    .restart local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "requestName":Ljava/lang/String;
    .restart local v16    # "statusCode":I
    :cond_3
    :try_start_1
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 120
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;)[B

    move-result-object v7

    .line 128
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " request response -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 133
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v4, v18, v14

    .local v4, "requestLifetime":J
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    .line 134
    invoke-direct/range {v3 .. v8}, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/fusepowered/nx/network/volley/Request;[BLorg/apache/http/StatusLine;)V

    .line 136
    const/16 v3, 0xc8

    move/from16 v0, v16

    if-lt v0, v3, :cond_5

    const/16 v3, 0x12b

    move/from16 v0, v16

    if-le v0, v3, :cond_7

    .line 137
    :cond_5
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 144
    .end local v4    # "requestLifetime":J
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "requestName":Ljava/lang/String;
    .end local v16    # "statusCode":I
    :catch_1
    move-exception v2

    .line 146
    .local v2, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    new-instance v3, Lcom/fusepowered/nx/network/volley/TimeoutError;

    invoke-direct {v3}, Lcom/fusepowered/nx/network/volley/TimeoutError;-><init>()V

    throw v3

    .line 124
    .end local v2    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "requestName":Ljava/lang/String;
    .restart local v16    # "statusCode":I
    :cond_6
    const/4 v3, 0x0

    :try_start_2
    new-array v7, v3, [B

    goto :goto_3

    .line 140
    .restart local v4    # "requestLifetime":J
    :cond_7
    new-instance v3, Lcom/fusepowered/nx/network/volley/NetworkResponse;

    const/4 v6, 0x0

    move/from16 v0, v16

    invoke-direct {v3, v0, v7, v13, v6}, Lcom/fusepowered/nx/network/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 147
    .end local v4    # "requestLifetime":J
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "requestName":Ljava/lang/String;
    .end local v16    # "statusCode":I
    :catch_2
    move-exception v2

    .line 148
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Bad URL "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 149
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v2

    .line 150
    .local v2, "e":Ljava/io/IOException;
    const/16 v16, 0x0

    .line 151
    .restart local v16    # "statusCode":I
    const/4 v11, 0x0

    .line 152
    .local v11, "networkResponse":Lcom/fusepowered/nx/network/volley/NetworkResponse;
    if-eqz v10, :cond_9

    .line 153
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 157
    const-string v3, "Unexpected response code %d for %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v17

    const/16 v17, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/network/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v17

    invoke-static {v3, v6}, Lcom/fusepowered/nx/network/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    if-eqz v7, :cond_b

    .line 159
    new-instance v11, Lcom/fusepowered/nx/network/volley/NetworkResponse;

    .end local v11    # "networkResponse":Lcom/fusepowered/nx/network/volley/NetworkResponse;
    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-direct {v11, v0, v7, v13, v3}, Lcom/fusepowered/nx/network/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 161
    .restart local v11    # "networkResponse":Lcom/fusepowered/nx/network/volley/NetworkResponse;
    const/16 v3, 0x191

    move/from16 v0, v16

    if-eq v0, v3, :cond_8

    const/16 v3, 0x193

    move/from16 v0, v16

    if-ne v0, v3, :cond_a

    .line 163
    :cond_8
    new-instance v3, Lcom/fusepowered/nx/network/volley/AuthFailureError;

    invoke-direct {v3, v11}, Lcom/fusepowered/nx/network/volley/AuthFailureError;-><init>(Lcom/fusepowered/nx/network/volley/NetworkResponse;)V

    throw v3

    .line 155
    :cond_9
    new-instance v3, Lcom/fusepowered/nx/network/volley/NoConnectionError;

    invoke-direct {v3, v2}, Lcom/fusepowered/nx/network/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 168
    :cond_a
    new-instance v3, Lcom/fusepowered/nx/network/volley/ServerError;

    invoke-direct {v3, v11}, Lcom/fusepowered/nx/network/volley/ServerError;-><init>(Lcom/fusepowered/nx/network/volley/NetworkResponse;)V

    throw v3

    .line 171
    :cond_b
    new-instance v3, Lcom/fusepowered/nx/network/volley/NetworkError;

    invoke-direct {v3, v11}, Lcom/fusepowered/nx/network/volley/NetworkError;-><init>(Lcom/fusepowered/nx/network/volley/NetworkResponse;)V

    throw v3
.end method
