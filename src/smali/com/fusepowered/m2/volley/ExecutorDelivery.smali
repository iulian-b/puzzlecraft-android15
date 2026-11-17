.class public Lcom/fusepowered/m2/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/fusepowered/m2/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/fusepowered/m2/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/volley/ExecutorDelivery$1;-><init>(Lcom/fusepowered/m2/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/fusepowered/m2/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/fusepowered/m2/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 51
    return-void
.end method


# virtual methods
.method public postError(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 4
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
    .line 67
    .local p1, "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    const-string v1, "post-error"

    invoke-virtual {p1, v1}, Lcom/fusepowered/m2/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lcom/fusepowered/m2/volley/Response;->error(Lcom/fusepowered/m2/volley/VolleyError;)Lcom/fusepowered/m2/volley/Response;

    move-result-object v0

    .line 69
    .local v0, "response":Lcom/fusepowered/m2/volley/Response;, "Lcom/fusepowered/m2/volley/Response<*>;"
    iget-object v1, p0, Lcom/fusepowered/m2/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/fusepowered/m2/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/fusepowered/m2/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/fusepowered/m2/volley/ExecutorDelivery;Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public postResponse(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;",
            "Lcom/fusepowered/m2/volley/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    .local p2, "response":Lcom/fusepowered/m2/volley/Response;, "Lcom/fusepowered/m2/volley/Response<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fusepowered/m2/volley/ExecutorDelivery;->postResponse(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/Response;Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public postResponse(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;",
            "Lcom/fusepowered/m2/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    .local p2, "response":Lcom/fusepowered/m2/volley/Response;, "Lcom/fusepowered/m2/volley/Response<*>;"
    invoke-virtual {p1}, Lcom/fusepowered/m2/volley/Request;->markDelivered()V

    .line 61
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/fusepowered/m2/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/fusepowered/m2/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/fusepowered/m2/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/fusepowered/m2/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/fusepowered/m2/volley/ExecutorDelivery;Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
