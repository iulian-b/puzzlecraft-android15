.class public interface abstract Lcom/fusepowered/m2/volley/Network;
.super Ljava/lang/Object;
.source "Network.java"


# virtual methods
.method public abstract performRequest(Lcom/fusepowered/m2/volley/Request;)Lcom/fusepowered/m2/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;)",
            "Lcom/fusepowered/m2/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/m2/volley/VolleyError;
        }
    .end annotation
.end method
