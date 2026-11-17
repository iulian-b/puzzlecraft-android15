.class Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/network/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final mRequest:Lcom/fusepowered/nx/network/volley/Request;

.field private final mResponse:Lcom/fusepowered/nx/network/volley/Response;

.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/fusepowered/nx/network/volley/ExecutorDelivery;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/network/volley/ExecutorDelivery;Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "request"    # Lcom/fusepowered/nx/network/volley/Request;
    .param p3, "response"    # Lcom/fusepowered/nx/network/volley/Response;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/fusepowered/nx/network/volley/ExecutorDelivery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/fusepowered/nx/network/volley/Request;

    .line 85
    iput-object p3, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/fusepowered/nx/network/volley/Response;

    .line 86
    iput-object p4, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 87
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/fusepowered/nx/network/volley/Request;

    invoke-virtual {v0}, Lcom/fusepowered/nx/network/volley/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/fusepowered/nx/network/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/Request;->finish(Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/fusepowered/nx/network/volley/Response;

    invoke-virtual {v0}, Lcom/fusepowered/nx/network/volley/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/fusepowered/nx/network/volley/Request;

    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/fusepowered/nx/network/volley/Response;

    iget-object v1, v1, Lcom/fusepowered/nx/network/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/Request;->deliverResponse(Ljava/lang/Object;)V

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/fusepowered/nx/network/volley/Response;

    iget-boolean v0, v0, Lcom/fusepowered/nx/network/volley/Response;->intermediate:Z

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/fusepowered/nx/network/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 114
    :goto_2
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/fusepowered/nx/network/volley/Request;

    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/fusepowered/nx/network/volley/Response;

    iget-object v1, v1, Lcom/fusepowered/nx/network/volley/Response;->error:Lcom/fusepowered/nx/network/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/Request;->deliverError(Lcom/fusepowered/nx/network/volley/VolleyError;)V

    goto :goto_1

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/fusepowered/nx/network/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/Request;->finish(Ljava/lang/String;)V

    goto :goto_2
.end method
