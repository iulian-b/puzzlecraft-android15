.class public Lcom/fusepowered/m2/volley/ParseError;
.super Lcom/fusepowered/m2/volley/VolleyError;
.source "ParseError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fusepowered/m2/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/m2/volley/NetworkResponse;)V
    .locals 0
    .param p1, "networkResponse"    # Lcom/fusepowered/m2/volley/NetworkResponse;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/volley/VolleyError;-><init>(Lcom/fusepowered/m2/volley/NetworkResponse;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
