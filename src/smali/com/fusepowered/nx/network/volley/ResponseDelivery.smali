.class public interface abstract Lcom/fusepowered/nx/network/volley/ResponseDelivery;
.super Ljava/lang/Object;
.source "ResponseDelivery.java"


# virtual methods
.method public abstract postError(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/Request",
            "<*>;",
            "Lcom/fusepowered/nx/network/volley/VolleyError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/Request",
            "<*>;",
            "Lcom/fusepowered/nx/network/volley/Response",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/Response;Ljava/lang/Runnable;)V
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
.end method
