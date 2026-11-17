.class public abstract Lcom/fusepowered/m2/network/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/network/RequestManager$RequestFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/fusepowered/m2/network/RequestManager$RequestFactory;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mBackoffPolicy:Lcom/fusepowered/m2/network/BackoffPolicy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mCurrentRequest:Lcom/fusepowered/m2/volley/Request;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mRequestFactory:Lcom/fusepowered/m2/network/RequestManager$RequestFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    .local p0, "this":Lcom/fusepowered/m2/network/RequestManager;, "Lcom/fusepowered/m2/network/RequestManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fusepowered/m2/network/RequestManager;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lcom/fusepowered/m2/network/RequestManager;, "Lcom/fusepowered/m2/network/RequestManager<TT;>;"
    invoke-static {}, Lcom/fusepowered/m2/network/Networking;->getRequestQueue()Lcom/fusepowered/m2/network/MoPubRequestQueue;

    move-result-object v0

    .line 69
    .local v0, "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m2/network/RequestManager;->mCurrentRequest:Lcom/fusepowered/m2/volley/Request;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/fusepowered/m2/network/RequestManager;->mCurrentRequest:Lcom/fusepowered/m2/volley/Request;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/network/MoPubRequestQueue;->cancel(Lcom/fusepowered/m2/volley/Request;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/network/RequestManager;->clearRequest()V

    .line 73
    return-void
.end method

.method clearRequest()V
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .local p0, "this":Lcom/fusepowered/m2/network/RequestManager;, "Lcom/fusepowered/m2/network/RequestManager<TT;>;"
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/fusepowered/m2/network/RequestManager;->mCurrentRequest:Lcom/fusepowered/m2/volley/Request;

    .line 95
    iput-object v0, p0, Lcom/fusepowered/m2/network/RequestManager;->mRequestFactory:Lcom/fusepowered/m2/network/RequestManager$RequestFactory;

    .line 96
    iput-object v0, p0, Lcom/fusepowered/m2/network/RequestManager;->mBackoffPolicy:Lcom/fusepowered/m2/network/BackoffPolicy;

    .line 97
    return-void
.end method

.method abstract createRequest()Lcom/fusepowered/m2/volley/Request;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method getCurrentRequest()Lcom/fusepowered/m2/volley/Request;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/fusepowered/m2/network/RequestManager;, "Lcom/fusepowered/m2/network/RequestManager<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/m2/network/RequestManager;->mCurrentRequest:Lcom/fusepowered/m2/volley/Request;

    return-object v0
.end method

.method public isAtCapacity()Z
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/fusepowered/m2/network/RequestManager;, "Lcom/fusepowered/m2/network/RequestManager<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/m2/network/RequestManager;->mCurrentRequest:Lcom/fusepowered/m2/volley/Request;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeRequest(Lcom/fusepowered/m2/network/RequestManager$RequestFactory;Lcom/fusepowered/m2/network/BackoffPolicy;)V
    .locals 0
    .param p1    # Lcom/fusepowered/m2/network/RequestManager$RequestFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "backoffPolicy"    # Lcom/fusepowered/m2/network/BackoffPolicy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fusepowered/m2/network/BackoffPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/fusepowered/m2/network/RequestManager;, "Lcom/fusepowered/m2/network/RequestManager<TT;>;"
    .local p1, "requestFactory":Lcom/fusepowered/m2/network/RequestManager$RequestFactory;, "TT;"
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    invoke-static {p2}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/fusepowered/m2/network/RequestManager;->cancelRequest()V

    .line 59
    iput-object p1, p0, Lcom/fusepowered/m2/network/RequestManager;->mRequestFactory:Lcom/fusepowered/m2/network/RequestManager$RequestFactory;

    .line 60
    iput-object p2, p0, Lcom/fusepowered/m2/network/RequestManager;->mBackoffPolicy:Lcom/fusepowered/m2/network/BackoffPolicy;

    .line 61
    invoke-virtual {p0}, Lcom/fusepowered/m2/network/RequestManager;->makeRequestInternal()V

    .line 62
    return-void
.end method

.method makeRequestInternal()V
    .locals 3
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/fusepowered/m2/network/RequestManager;, "Lcom/fusepowered/m2/network/RequestManager<TT;>;"
    invoke-virtual {p0}, Lcom/fusepowered/m2/network/RequestManager;->createRequest()Lcom/fusepowered/m2/volley/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/network/RequestManager;->mCurrentRequest:Lcom/fusepowered/m2/volley/Request;

    .line 78
    invoke-static {}, Lcom/fusepowered/m2/network/Networking;->getRequestQueue()Lcom/fusepowered/m2/network/MoPubRequestQueue;

    move-result-object v0

    .line 79
    .local v0, "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    if-nez v0, :cond_0

    .line 80
    const-string v1, "MoPubRequest queue is null. Clearing request."

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/fusepowered/m2/network/RequestManager;->clearRequest()V

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/network/RequestManager;->mBackoffPolicy:Lcom/fusepowered/m2/network/BackoffPolicy;

    invoke-virtual {v1}, Lcom/fusepowered/m2/network/BackoffPolicy;->getRetryCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/fusepowered/m2/network/RequestManager;->mCurrentRequest:Lcom/fusepowered/m2/volley/Request;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/network/MoPubRequestQueue;->add(Lcom/fusepowered/m2/volley/Request;)Lcom/fusepowered/m2/volley/Request;

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/m2/network/RequestManager;->mCurrentRequest:Lcom/fusepowered/m2/volley/Request;

    iget-object v2, p0, Lcom/fusepowered/m2/network/RequestManager;->mBackoffPolicy:Lcom/fusepowered/m2/network/BackoffPolicy;

    invoke-virtual {v2}, Lcom/fusepowered/m2/network/BackoffPolicy;->getBackoffMs()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/network/MoPubRequestQueue;->addDelayedRequest(Lcom/fusepowered/m2/volley/Request;I)V

    goto :goto_0
.end method
