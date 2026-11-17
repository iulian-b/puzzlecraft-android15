.class public interface abstract Lcom/fusepowered/m2/volley/ResponseDelivery;
.super Ljava/lang/Object;
.source "ResponseDelivery.java"


# virtual methods
.method public abstract postError(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;",
            "Lcom/fusepowered/m2/volley/VolleyError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;",
            "Lcom/fusepowered/m2/volley/Response",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/Response;Ljava/lang/Runnable;)V
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
.end method
