.class public Lcom/fusepowered/nx/network/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/fusepowered/nx/network/volley/Cache;

.field private final mDelivery:Lcom/fusepowered/nx/network/volley/ResponseDelivery;

.field private final mNetwork:Lcom/fusepowered/nx/network/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fusepowered/nx/network/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/fusepowered/nx/network/volley/Network;Lcom/fusepowered/nx/network/volley/Cache;Lcom/fusepowered/nx/network/volley/ResponseDelivery;)V
    .locals 1
    .param p2, "network"    # Lcom/fusepowered/nx/network/volley/Network;
    .param p3, "cache"    # Lcom/fusepowered/nx/network/volley/Cache;
    .param p4, "delivery"    # Lcom/fusepowered/nx/network/volley/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fusepowered/nx/network/volley/Request;",
            ">;",
            "Lcom/fusepowered/nx/network/volley/Network;",
            "Lcom/fusepowered/nx/network/volley/Cache;",
            "Lcom/fusepowered/nx/network/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/fusepowered/nx/network/volley/Request;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mQuit:Z

    .line 59
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 60
    iput-object p2, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mNetwork:Lcom/fusepowered/nx/network/volley/Network;

    .line 61
    iput-object p3, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mCache:Lcom/fusepowered/nx/network/volley/Cache;

    .line 62
    iput-object p4, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mDelivery:Lcom/fusepowered/nx/network/volley/ResponseDelivery;

    .line 63
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .locals 1
    .param p2, "error"    # Lcom/fusepowered/nx/network/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/Request",
            "<*>;",
            "Lcom/fusepowered/nx/network/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "request":Lcom/fusepowered/nx/network/volley/Request;, "Lcom/fusepowered/nx/network/volley/Request<*>;"
    invoke-virtual {p1, p2}, Lcom/fusepowered/nx/network/volley/Request;->parseNetworkError(Lcom/fusepowered/nx/network/volley/VolleyError;)Lcom/fusepowered/nx/network/volley/VolleyError;

    move-result-object p2

    .line 141
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mDelivery:Lcom/fusepowered/nx/network/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/nx/network/volley/ResponseDelivery;->postError(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/VolleyError;)V

    .line 142
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mQuit:Z

    .line 71
    invoke-virtual {p0}, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->interrupt()V

    .line 72
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 76
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 81
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/nx/network/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .local v2, "request":Lcom/fusepowered/nx/network/volley/Request;
    :try_start_1
    const-string v5, "network-queue-take"

    invoke-virtual {v2, v5}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/fusepowered/nx/network/volley/Request;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    const-string v5, "network-discard-cancelled"

    invoke-virtual {v2, v5}, Lcom/fusepowered/nx/network/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/fusepowered/nx/network/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 130
    :catch_0
    move-exception v4

    .line 131
    .local v4, "volleyError":Lcom/fusepowered/nx/network/volley/VolleyError;
    invoke-direct {p0, v2, v4}, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/VolleyError;)V

    goto :goto_0

    .line 82
    .end local v2    # "request":Lcom/fusepowered/nx/network/volley/Request;
    .end local v4    # "volleyError":Lcom/fusepowered/nx/network/volley/VolleyError;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v5, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v5, :cond_0

    .line 85
    return-void

    .line 101
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "request":Lcom/fusepowered/nx/network/volley/Request;
    :cond_1
    :try_start_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_2

    .line 102
    invoke-virtual {v2}, Lcom/fusepowered/nx/network/volley/Request;->getTrafficStatsTag()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 106
    :cond_2
    iget-object v5, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mNetwork:Lcom/fusepowered/nx/network/volley/Network;

    invoke-interface {v5, v2}, Lcom/fusepowered/nx/network/volley/Network;->performRequest(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/NetworkResponse;

    move-result-object v1

    .line 107
    .local v1, "networkResponse":Lcom/fusepowered/nx/network/volley/NetworkResponse;
    const-string v5, "network-http-complete"

    invoke-virtual {v2, v5}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 111
    iget-boolean v5, v1, Lcom/fusepowered/nx/network/volley/NetworkResponse;->notModified:Z

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/fusepowered/nx/network/volley/Request;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 112
    const-string v5, "not-modified"

    invoke-virtual {v2, v5}, Lcom/fusepowered/nx/network/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/fusepowered/nx/network/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 132
    .end local v1    # "networkResponse":Lcom/fusepowered/nx/network/volley/NetworkResponse;
    :catch_2
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Unhandled exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/fusepowered/nx/network/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v5, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mDelivery:Lcom/fusepowered/nx/network/volley/ResponseDelivery;

    new-instance v6, Lcom/fusepowered/nx/network/volley/VolleyError;

    invoke-direct {v6, v0}, Lcom/fusepowered/nx/network/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v2, v6}, Lcom/fusepowered/nx/network/volley/ResponseDelivery;->postError(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/VolleyError;)V

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "networkResponse":Lcom/fusepowered/nx/network/volley/NetworkResponse;
    :cond_3
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/fusepowered/nx/network/volley/Request;->parseNetworkResponse(Lcom/fusepowered/nx/network/volley/NetworkResponse;)Lcom/fusepowered/nx/network/volley/Response;

    move-result-object v3

    .line 118
    .local v3, "response":Lcom/fusepowered/nx/network/volley/Response;, "Lcom/fusepowered/nx/network/volley/Response<*>;"
    const-string v5, "network-parse-complete"

    invoke-virtual {v2, v5}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Lcom/fusepowered/nx/network/volley/Request;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/fusepowered/nx/network/volley/Response;->cacheEntry:Lcom/fusepowered/nx/network/volley/Cache$Entry;

    if-eqz v5, :cond_4

    .line 123
    iget-object v5, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mCache:Lcom/fusepowered/nx/network/volley/Cache;

    invoke-virtual {v2}, Lcom/fusepowered/nx/network/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/fusepowered/nx/network/volley/Response;->cacheEntry:Lcom/fusepowered/nx/network/volley/Cache$Entry;

    invoke-interface {v5, v6, v7}, Lcom/fusepowered/nx/network/volley/Cache;->put(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Cache$Entry;)V

    .line 124
    const-string v5, "network-cache-written"

    invoke-virtual {v2, v5}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 128
    :cond_4
    invoke-virtual {v2}, Lcom/fusepowered/nx/network/volley/Request;->markDelivered()V

    .line 129
    iget-object v5, p0, Lcom/fusepowered/nx/network/volley/NetworkDispatcher;->mDelivery:Lcom/fusepowered/nx/network/volley/ResponseDelivery;

    invoke-interface {v5, v2, v3}, Lcom/fusepowered/nx/network/volley/ResponseDelivery;->postResponse(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;)V
    :try_end_3
    .catch Lcom/fusepowered/nx/network/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
