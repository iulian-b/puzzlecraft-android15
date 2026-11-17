.class public Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;
.super Lcom/fusepowered/nx/network/volley/Request;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/nx/network/volley/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String;


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/fusepowered/nx/network/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/nx/network/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    aput-object v3, v1, v2

    .line 43
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/fusepowered/nx/network/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/fusepowered/nx/network/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/nx/network/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p4, "listener":Lcom/fusepowered/nx/network/volley/Response$Listener;, "Lcom/fusepowered/nx/network/volley/Response$Listener<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/fusepowered/nx/network/volley/Request;-><init>(ILjava/lang/String;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->headers:Ljava/util/Map;

    .line 61
    iput-object p3, p0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->mRequestBody:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->mListener:Lcom/fusepowered/nx/network/volley/Response$Listener;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lcom/fusepowered/nx/network/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fusepowered/nx/network/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/nx/network/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "listener":Lcom/fusepowered/nx/network/volley/Response$Listener;, "Lcom/fusepowered/nx/network/volley/Response$Listener<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->deliverResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->mListener:Lcom/fusepowered/nx/network/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/fusepowered/nx/network/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public getBody()[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->mRequestBody:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 97
    :goto_0
    return-object v1

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->mRequestBody:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->mRequestBody:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "utf-8"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/fusepowered/nx/network/volley/VolleyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/network/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/fusepowered/nx/network/volley/NetworkResponse;)Lcom/fusepowered/nx/network/volley/Response;
    .locals 4
    .param p1, "response"    # Lcom/fusepowered/nx/network/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/NetworkResponse;",
            ")",
            "Lcom/fusepowered/nx/network/volley/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/fusepowered/nx/network/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lcom/fusepowered/nx/network/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v3}, Lcom/fusepowered/nx/network/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v1, "parsed":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/fusepowered/nx/network/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/fusepowered/nx/network/volley/NetworkResponse;)Lcom/fusepowered/nx/network/volley/Cache$Entry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/nx/network/volley/Response;->success(Ljava/lang/Object;Lcom/fusepowered/nx/network/volley/Cache$Entry;)Lcom/fusepowered/nx/network/volley/Response;

    move-result-object v2

    return-object v2

    .line 111
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/fusepowered/nx/network/volley/NetworkResponse;->data:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "parsed":Ljava/lang/String;
    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method
