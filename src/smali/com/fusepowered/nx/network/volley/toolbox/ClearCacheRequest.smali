.class public Lcom/fusepowered/nx/network/volley/toolbox/ClearCacheRequest;
.super Lcom/fusepowered/nx/network/volley/Request;
.source "ClearCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/nx/network/volley/Request",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/fusepowered/nx/network/volley/Cache;

.field private final mCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/network/volley/Cache;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "cache"    # Lcom/fusepowered/nx/network/volley/Cache;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/fusepowered/nx/network/volley/Request;-><init>(ILjava/lang/String;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 43
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ClearCacheRequest;->mCache:Lcom/fusepowered/nx/network/volley/Cache;

    .line 44
    iput-object p2, p0, Lcom/fusepowered/nx/network/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    .line 45
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 70
    return-void
.end method

.method public getPriority()Lcom/fusepowered/nx/network/volley/Request$Priority;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/fusepowered/nx/network/volley/Request$Priority;->IMMEDIATE:Lcom/fusepowered/nx/network/volley/Request$Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ClearCacheRequest;->mCache:Lcom/fusepowered/nx/network/volley/Cache;

    invoke-interface {v1}, Lcom/fusepowered/nx/network/volley/Cache;->clear()V

    .line 51
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 55
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected parseNetworkResponse(Lcom/fusepowered/nx/network/volley/NetworkResponse;)Lcom/fusepowered/nx/network/volley/Response;
    .locals 1
    .param p1, "response"    # Lcom/fusepowered/nx/network/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/NetworkResponse;",
            ")",
            "Lcom/fusepowered/nx/network/volley/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method
