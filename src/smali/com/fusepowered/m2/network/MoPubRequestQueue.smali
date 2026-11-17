.class public Lcom/fusepowered/m2/network/MoPubRequestQueue;
.super Lcom/fusepowered/m2/volley/RequestQueue;
.source "MoPubRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0xa


# instance fields
.field private final mDelayedRequests:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;",
            "Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/volley/Cache;Lcom/fusepowered/m2/volley/Network;)V
    .locals 2
    .param p1, "cache"    # Lcom/fusepowered/m2/volley/Cache;
    .param p2, "network"    # Lcom/fusepowered/m2/volley/Network;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/volley/RequestQueue;-><init>(Lcom/fusepowered/m2/volley/Cache;Lcom/fusepowered/m2/volley/Network;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/fusepowered/m2/volley/Cache;Lcom/fusepowered/m2/volley/Network;I)V
    .locals 2
    .param p1, "cache"    # Lcom/fusepowered/m2/volley/Cache;
    .param p2, "network"    # Lcom/fusepowered/m2/volley/Network;
    .param p3, "threadPoolSize"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/fusepowered/m2/volley/RequestQueue;-><init>(Lcom/fusepowered/m2/volley/Cache;Lcom/fusepowered/m2/volley/Network;I)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/fusepowered/m2/volley/Cache;Lcom/fusepowered/m2/volley/Network;ILcom/fusepowered/m2/volley/ResponseDelivery;)V
    .locals 2
    .param p1, "cache"    # Lcom/fusepowered/m2/volley/Cache;
    .param p2, "network"    # Lcom/fusepowered/m2/volley/Network;
    .param p3, "threadPoolSize"    # I
    .param p4, "delivery"    # Lcom/fusepowered/m2/volley/ResponseDelivery;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fusepowered/m2/volley/RequestQueue;-><init>(Lcom/fusepowered/m2/volley/Cache;Lcom/fusepowered/m2/volley/Network;ILcom/fusepowered/m2/volley/ResponseDelivery;)V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/network/MoPubRequestQueue;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/network/MoPubRequestQueue;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addDelayedRequest(Lcom/fusepowered/m2/volley/Request;I)V
    .locals 1
    .param p1    # Lcom/fusepowered/m2/volley/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "delayMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;-><init>(Lcom/fusepowered/m2/network/MoPubRequestQueue;Lcom/fusepowered/m2/volley/Request;I)V

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m2/network/MoPubRequestQueue;->addDelayedRequest(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;)V

    .line 57
    return-void
.end method

.method addDelayedRequest(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;)V
    .locals 1
    .param p1    # Lcom/fusepowered/m2/volley/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "delayedRequestHelper"    # Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;",
            "Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    invoke-static {p2}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/network/MoPubRequestQueue;->cancel(Lcom/fusepowered/m2/volley/Request;)V

    .line 67
    :cond_0
    invoke-virtual {p2}, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;->start()V

    .line 68
    iget-object v0, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public cancel(Lcom/fusepowered/m2/volley/Request;)V
    .locals 1
    .param p1    # Lcom/fusepowered/m2/volley/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    new-instance v0, Lcom/fusepowered/m2/network/MoPubRequestQueue$2;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/network/MoPubRequestQueue$2;-><init>(Lcom/fusepowered/m2/network/MoPubRequestQueue;Lcom/fusepowered/m2/volley/Request;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/network/MoPubRequestQueue;->cancelAll(Lcom/fusepowered/m2/volley/RequestQueue$RequestFilter;)V

    .line 123
    return-void
.end method

.method public cancelAll(Lcom/fusepowered/m2/volley/RequestQueue$RequestFilter;)V
    .locals 3
    .param p1, "filter"    # Lcom/fusepowered/m2/volley/RequestQueue$RequestFilter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-super {p0, p1}, Lcom/fusepowered/m2/volley/RequestQueue;->cancelAll(Lcom/fusepowered/m2/volley/RequestQueue$RequestFilter;)V

    .line 80
    iget-object v2, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/fusepowered/m2/volley/Request<*>;Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fusepowered/m2/volley/Request<*>;Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m2/volley/Request;

    invoke-interface {p1, v2}, Lcom/fusepowered/m2/volley/RequestQueue$RequestFilter;->apply(Lcom/fusepowered/m2/volley/Request;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m2/volley/Request;

    invoke-virtual {v2}, Lcom/fusepowered/m2/volley/Request;->cancel()V

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;

    invoke-virtual {v2}, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;->cancel()V

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 90
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fusepowered/m2/volley/Request<*>;Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;>;"
    :cond_1
    return-void
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    invoke-super {p0, p1}, Lcom/fusepowered/m2/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 101
    new-instance v0, Lcom/fusepowered/m2/network/MoPubRequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/network/MoPubRequestQueue$1;-><init>(Lcom/fusepowered/m2/network/MoPubRequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/network/MoPubRequestQueue;->cancelAll(Lcom/fusepowered/m2/volley/RequestQueue$RequestFilter;)V

    .line 107
    return-void
.end method

.method getDelayedRequests()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;",
            "Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    return-object v0
.end method
