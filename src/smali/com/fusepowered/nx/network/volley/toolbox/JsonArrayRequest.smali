.class public Lcom/fusepowered/nx/network/volley/toolbox/JsonArrayRequest;
.super Lcom/fusepowered/nx/network/volley/toolbox/JsonRequest;
.source "JsonArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/nx/network/volley/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
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
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/fusepowered/nx/network/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "listener":Lcom/fusepowered/nx/network/volley/Response$Listener;, "Lcom/fusepowered/nx/network/volley/Response$Listener<Lorg/json/JSONArray;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/nx/network/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/fusepowered/nx/network/volley/NetworkResponse;)Lcom/fusepowered/nx/network/volley/Response;
    .locals 5
    .param p1, "response"    # Lcom/fusepowered/nx/network/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/NetworkResponse;",
            ")",
            "Lcom/fusepowered/nx/network/volley/Response",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/fusepowered/nx/network/volley/NetworkResponse;->data:[B

    iget-object v4, p1, Lcom/fusepowered/nx/network/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 50
    invoke-static {v4}, Lcom/fusepowered/nx/network/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 51
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/fusepowered/nx/network/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/fusepowered/nx/network/volley/NetworkResponse;)Lcom/fusepowered/nx/network/volley/Cache$Entry;

    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Lcom/fusepowered/nx/network/volley/Response;->success(Ljava/lang/Object;Lcom/fusepowered/nx/network/volley/Cache$Entry;)Lcom/fusepowered/nx/network/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 56
    .end local v2    # "jsonString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/fusepowered/nx/network/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/fusepowered/nx/network/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/fusepowered/nx/network/volley/Response;->error(Lcom/fusepowered/nx/network/volley/VolleyError;)Lcom/fusepowered/nx/network/volley/Response;

    move-result-object v3

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 56
    .local v1, "je":Lorg/json/JSONException;
    new-instance v3, Lcom/fusepowered/nx/network/volley/ParseError;

    invoke-direct {v3, v1}, Lcom/fusepowered/nx/network/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/fusepowered/nx/network/volley/Response;->error(Lcom/fusepowered/nx/network/volley/VolleyError;)Lcom/fusepowered/nx/network/volley/Response;

    move-result-object v3

    goto :goto_0
.end method
