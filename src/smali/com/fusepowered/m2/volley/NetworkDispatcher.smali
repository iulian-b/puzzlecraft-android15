.class public Lcom/fusepowered/m2/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/fusepowered/m2/volley/Cache;

.field private final mDelivery:Lcom/fusepowered/m2/volley/ResponseDelivery;

.field private final mNetwork:Lcom/fusepowered/m2/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/fusepowered/m2/volley/Network;Lcom/fusepowered/m2/volley/Cache;Lcom/fusepowered/m2/volley/ResponseDelivery;)V
    .locals 1
    .param p2, "network"    # Lcom/fusepowered/m2/volley/Network;
    .param p3, "cache"    # Lcom/fusepowered/m2/volley/Cache;
    .param p4, "delivery"    # Lcom/fusepowered/m2/volley/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;>;",
            "Lcom/fusepowered/m2/volley/Network;",
            "Lcom/fusepowered/m2/volley/Cache;",
            "Lcom/fusepowered/m2/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/fusepowered/m2/volley/Request<*>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mQuit:Z

    .line 59
    iput-object p1, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 60
    iput-object p2, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mNetwork:Lcom/fusepowered/m2/volley/Network;

    .line 61
    iput-object p3, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mCache:Lcom/fusepowered/m2/volley/Cache;

    .line 62
    iput-object p4, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mDelivery:Lcom/fusepowered/m2/volley/ResponseDelivery;

    .line 63
    return-void
.end method

.method private addTrafficStatsTag(Lcom/fusepowered/m2/volley/Request;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/fusepowered/m2/volley/Request;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 80
    :cond_0
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 1
    .param p2, "error"    # Lcom/fusepowered/m2/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;",
            "Lcom/fusepowered/m2/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    invoke-virtual {p1, p2}, Lcom/fusepowered/m2/volley/Request;->parseNetworkError(Lcom/fusepowered/m2/volley/VolleyError;)Lcom/fusepowered/m2/volley/VolleyError;

    move-result-object p2

    .line 150
    iget-object v0, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mDelivery:Lcom/fusepowered/m2/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/m2/volley/ResponseDelivery;->postError(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/VolleyError;)V

    .line 151
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mQuit:Z

    .line 71
    invoke-virtual {p0}, Lcom/fusepowered/m2/volley/NetworkDispatcher;->interrupt()V

    .line 72
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 84
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 86
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 90
    .local v4, "startTimeMs":J
    :try_start_0
    iget-object v7, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m2/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .local v2, "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    :try_start_1
    const-string v7, "network-queue-take"

    invoke-virtual {v2, v7}, Lcom/fusepowered/m2/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lcom/fusepowered/m2/volley/Request;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    const-string v7, "network-discard-cancelled"

    invoke-virtual {v2, v7}, Lcom/fusepowered/m2/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/fusepowered/m2/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 136
    :catch_0
    move-exception v6

    .line 137
    .local v6, "volleyError":Lcom/fusepowered/m2/volley/VolleyError;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Lcom/fusepowered/m2/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 138
    invoke-direct {p0, v2, v6}, Lcom/fusepowered/m2/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/VolleyError;)V

    goto :goto_0

    .line 91
    .end local v2    # "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    .end local v6    # "volleyError":Lcom/fusepowered/m2/volley/VolleyError;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v7, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v7, :cond_0

    .line 94
    return-void

    .line 109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/fusepowered/m2/volley/NetworkDispatcher;->addTrafficStatsTag(Lcom/fusepowered/m2/volley/Request;)V

    .line 112
    iget-object v7, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mNetwork:Lcom/fusepowered/m2/volley/Network;

    invoke-interface {v7, v2}, Lcom/fusepowered/m2/volley/Network;->performRequest(Lcom/fusepowered/m2/volley/Request;)Lcom/fusepowered/m2/volley/NetworkResponse;

    move-result-object v1

    .line 113
    .local v1, "networkResponse":Lcom/fusepowered/m2/volley/NetworkResponse;
    const-string v7, "network-http-complete"

    invoke-virtual {v2, v7}, Lcom/fusepowered/m2/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 117
    iget-boolean v7, v1, Lcom/fusepowered/m2/volley/NetworkResponse;->notModified:Z

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/fusepowered/m2/volley/Request;->hasHadResponseDelivered()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    const-string v7, "not-modified"

    invoke-virtual {v2, v7}, Lcom/fusepowered/m2/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/fusepowered/m2/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 139
    .end local v1    # "networkResponse":Lcom/fusepowered/m2/volley/NetworkResponse;
    :catch_2
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Unhandled exception %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/fusepowered/m2/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v6, Lcom/fusepowered/m2/volley/VolleyError;

    invoke-direct {v6, v0}, Lcom/fusepowered/m2/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 142
    .restart local v6    # "volleyError":Lcom/fusepowered/m2/volley/VolleyError;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Lcom/fusepowered/m2/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 143
    iget-object v7, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mDelivery:Lcom/fusepowered/m2/volley/ResponseDelivery;

    invoke-interface {v7, v2, v6}, Lcom/fusepowered/m2/volley/ResponseDelivery;->postError(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/VolleyError;)V

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "volleyError":Lcom/fusepowered/m2/volley/VolleyError;
    .restart local v1    # "networkResponse":Lcom/fusepowered/m2/volley/NetworkResponse;
    :cond_2
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/fusepowered/m2/volley/Request;->parseNetworkResponse(Lcom/fusepowered/m2/volley/NetworkResponse;)Lcom/fusepowered/m2/volley/Response;

    move-result-object v3

    .line 124
    .local v3, "response":Lcom/fusepowered/m2/volley/Response;, "Lcom/fusepowered/m2/volley/Response<*>;"
    const-string v7, "network-parse-complete"

    invoke-virtual {v2, v7}, Lcom/fusepowered/m2/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Lcom/fusepowered/m2/volley/Request;->shouldCache()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/fusepowered/m2/volley/Response;->cacheEntry:Lcom/fusepowered/m2/volley/Cache$Entry;

    if-eqz v7, :cond_3

    .line 129
    iget-object v7, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mCache:Lcom/fusepowered/m2/volley/Cache;

    invoke-virtual {v2}, Lcom/fusepowered/m2/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lcom/fusepowered/m2/volley/Response;->cacheEntry:Lcom/fusepowered/m2/volley/Cache$Entry;

    invoke-interface {v7, v8, v9}, Lcom/fusepowered/m2/volley/Cache;->put(Ljava/lang/String;Lcom/fusepowered/m2/volley/Cache$Entry;)V

    .line 130
    const-string v7, "network-cache-written"

    invoke-virtual {v2, v7}, Lcom/fusepowered/m2/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 134
    :cond_3
    invoke-virtual {v2}, Lcom/fusepowered/m2/volley/Request;->markDelivered()V

    .line 135
    iget-object v7, p0, Lcom/fusepowered/m2/volley/NetworkDispatcher;->mDelivery:Lcom/fusepowered/m2/volley/ResponseDelivery;

    invoke-interface {v7, v2, v3}, Lcom/fusepowered/m2/volley/ResponseDelivery;->postResponse(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/Response;)V
    :try_end_3
    .catch Lcom/fusepowered/m2/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
