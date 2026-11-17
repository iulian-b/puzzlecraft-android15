.class public interface abstract Lcom/fusepowered/nx/network/volley/Network;
.super Ljava/lang/Object;
.source "Network.java"


# virtual methods
.method public abstract performRequest(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/Request",
            "<*>;)",
            "Lcom/fusepowered/nx/network/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/network/volley/VolleyError;
        }
    .end annotation
.end method
