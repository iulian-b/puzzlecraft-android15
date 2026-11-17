.class public Lcom/fusepowered/nx/network/volley/ServerError;
.super Lcom/fusepowered/nx/network/volley/VolleyError;
.source "ServerError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/fusepowered/nx/network/volley/VolleyError;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/nx/network/volley/NetworkResponse;)V
    .locals 0
    .param p1, "networkResponse"    # Lcom/fusepowered/nx/network/volley/NetworkResponse;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/network/volley/VolleyError;-><init>(Lcom/fusepowered/nx/network/volley/NetworkResponse;)V

    .line 29
    return-void
.end method
