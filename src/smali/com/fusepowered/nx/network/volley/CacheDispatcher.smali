.class public Lcom/fusepowered/nx/network/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCache:Lcom/fusepowered/nx/network/volley/Cache;

.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fusepowered/nx/network/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/fusepowered/nx/network/volley/ResponseDelivery;

.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/fusepowered/nx/network/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/fusepowered/nx/network/volley/Cache;Lcom/fusepowered/nx/network/volley/ResponseDelivery;)V
    .locals 1
    .param p3, "cache"    # Lcom/fusepowered/nx/network/volley/Cache;
    .param p4, "delivery"    # Lcom/fusepowered/nx/network/volley/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fusepowered/nx/network/volley/Request;",
            ">;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fusepowered/nx/network/volley/Request;",
            ">;",
            "Lcom/fusepowered/nx/network/volley/Cache;",
            "Lcom/fusepowered/nx/network/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "cacheQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/fusepowered/nx/network/volley/Request;>;"
    .local p2, "networkQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/fusepowered/nx/network/volley/Request;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mQuit:Z

    .line 64
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    .line 65
    iput-object p2, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 66
    iput-object p3, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mCache:Lcom/fusepowered/nx/network/volley/Cache;

    .line 67
    iput-object p4, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mDelivery:Lcom/fusepowered/nx/network/volley/ResponseDelivery;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/network/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/network/volley/CacheDispatcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mQuit:Z

    .line 76
    invoke-virtual {p0}, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->interrupt()V

    .line 77
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 81
    sget-boolean v4, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "start new dispatcher"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/fusepowered/nx/network/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 85
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mCache:Lcom/fusepowered/nx/network/volley/Cache;

    invoke-interface {v4}, Lcom/fusepowered/nx/network/volley/Cache;->initialize()V

    .line 91
    :cond_1
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/nx/network/volley/Request;

    .line 92
    .local v2, "request":Lcom/fusepowered/nx/network/volley/Request;
    const-string v4, "cache-queue-take"

    invoke-virtual {v2, v4}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/fusepowered/nx/network/volley/Request;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    const-string v4, "cache-discard-canceled"

    invoke-virtual {v2, v4}, Lcom/fusepowered/nx/network/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 150
    .end local v2    # "request":Lcom/fusepowered/nx/network/volley/Request;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v4, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mQuit:Z

    if-eqz v4, :cond_1

    .line 153
    return-void

    .line 101
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "request":Lcom/fusepowered/nx/network/volley/Request;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mCache:Lcom/fusepowered/nx/network/volley/Cache;

    invoke-virtual {v2}, Lcom/fusepowered/nx/network/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/fusepowered/nx/network/volley/Cache;->get(Ljava/lang/String;)Lcom/fusepowered/nx/network/volley/Cache$Entry;

    move-result-object v1

    .line 102
    .local v1, "entry":Lcom/fusepowered/nx/network/volley/Cache$Entry;
    if-nez v1, :cond_3

    .line 103
    const-string v4, "cache-miss"

    invoke-virtual {v2, v4}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 156
    .end local v1    # "entry":Lcom/fusepowered/nx/network/volley/Cache$Entry;
    .end local v2    # "request":Lcom/fusepowered/nx/network/volley/Request;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CacheDispatcher: Unhandled exception %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Lcom/fusepowered/nx/network/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "entry":Lcom/fusepowered/nx/network/volley/Cache$Entry;
    .restart local v2    # "request":Lcom/fusepowered/nx/network/volley/Request;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/fusepowered/nx/network/volley/Cache$Entry;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    const-string v4, "cache-hit-expired"

    invoke-virtual {v2, v4}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2, v1}, Lcom/fusepowered/nx/network/volley/Request;->setCacheEntry(Lcom/fusepowered/nx/network/volley/Cache$Entry;)V

    .line 113
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_4
    const-string v4, "cache-hit"

    invoke-virtual {v2, v4}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 119
    new-instance v4, Lcom/fusepowered/nx/network/volley/NetworkResponse;

    iget-object v5, v1, Lcom/fusepowered/nx/network/volley/Cache$Entry;->data:[B

    iget-object v6, v1, Lcom/fusepowered/nx/network/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lcom/fusepowered/nx/network/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    invoke-virtual {v2, v4}, Lcom/fusepowered/nx/network/volley/Request;->parseNetworkResponse(Lcom/fusepowered/nx/network/volley/NetworkResponse;)Lcom/fusepowered/nx/network/volley/Response;

    move-result-object v3

    .line 121
    .local v3, "response":Lcom/fusepowered/nx/network/volley/Response;, "Lcom/fusepowered/nx/network/volley/Response<*>;"
    const-string v4, "cache-hit-parsed"

    invoke-virtual {v2, v4}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Lcom/fusepowered/nx/network/volley/Cache$Entry;->refreshNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    .line 125
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mDelivery:Lcom/fusepowered/nx/network/volley/ResponseDelivery;

    invoke-interface {v4, v2, v3}, Lcom/fusepowered/nx/network/volley/ResponseDelivery;->postResponse(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;)V

    goto :goto_0

    .line 130
    :cond_5
    const-string v4, "cache-hit-refresh-needed"

    invoke-virtual {v2, v4}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2, v1}, Lcom/fusepowered/nx/network/volley/Request;->setCacheEntry(Lcom/fusepowered/nx/network/volley/Cache$Entry;)V

    .line 134
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/fusepowered/nx/network/volley/Response;->intermediate:Z

    .line 138
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/CacheDispatcher;->mDelivery:Lcom/fusepowered/nx/network/volley/ResponseDelivery;

    new-instance v5, Lcom/fusepowered/nx/network/volley/CacheDispatcher$1;

    invoke-direct {v5, p0, v2}, Lcom/fusepowered/nx/network/volley/CacheDispatcher$1;-><init>(Lcom/fusepowered/nx/network/volley/CacheDispatcher;Lcom/fusepowered/nx/network/volley/Request;)V

    invoke-interface {v4, v2, v3, v5}, Lcom/fusepowered/nx/network/volley/ResponseDelivery;->postResponse(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
