.class public Lcom/fusepowered/nx/network/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$1;-><init>(Lcom/fusepowered/nx/network/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 52
    return-void
.end method


# virtual methods
.method public postError(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .locals 4
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
    .line 68
    .local p1, "request":Lcom/fusepowered/nx/network/volley/Request;, "Lcom/fusepowered/nx/network/volley/Request<*>;"
    const-string v1, "post-error"

    invoke-virtual {p1, v1}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 69
    invoke-static {p2}, Lcom/fusepowered/nx/network/volley/Response;->error(Lcom/fusepowered/nx/network/volley/VolleyError;)Lcom/fusepowered/nx/network/volley/Response;

    move-result-object v0

    .line 70
    .local v0, "response":Lcom/fusepowered/nx/network/volley/Response;, "Lcom/fusepowered/nx/network/volley/Response<*>;"
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/fusepowered/nx/network/volley/ExecutorDelivery;Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public postResponse(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/Request",
            "<*>;",
            "Lcom/fusepowered/nx/network/volley/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "request":Lcom/fusepowered/nx/network/volley/Request;, "Lcom/fusepowered/nx/network/volley/Request<*>;"
    .local p2, "response":Lcom/fusepowered/nx/network/volley/Response;, "Lcom/fusepowered/nx/network/volley/Response<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fusepowered/nx/network/volley/ExecutorDelivery;->postResponse(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public postResponse(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/Request",
            "<*>;",
            "Lcom/fusepowered/nx/network/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "request":Lcom/fusepowered/nx/network/volley/Request;, "Lcom/fusepowered/nx/network/volley/Request<*>;"
    .local p2, "response":Lcom/fusepowered/nx/network/volley/Response;, "Lcom/fusepowered/nx/network/volley/Response<*>;"
    invoke-virtual {p1}, Lcom/fusepowered/nx/network/volley/Request;->markDelivered()V

    .line 62
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/fusepowered/nx/network/volley/ExecutorDelivery;Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
