.class public interface abstract Lcom/fusepowered/nx/network/volley/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# virtual methods
.method public abstract getCurrentRetryCount()I
.end method

.method public abstract getCurrentTimeout()I
.end method

.method public abstract retry(Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/network/volley/VolleyError;
        }
    .end annotation
.end method
