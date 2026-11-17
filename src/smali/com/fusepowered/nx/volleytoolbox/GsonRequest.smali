.class public Lcom/fusepowered/nx/volleytoolbox/GsonRequest;
.super Lcom/fusepowered/nx/network/volley/Request;
.source "GsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fusepowered/nx/network/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ACCEPT:Ljava/lang/String; = "Accept"

.field private static final ACCEPT_TYPE:Ljava/lang/String; = "application/json"

.field private static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String;


# instance fields
.field private final headers:Ljava/util/Map;
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

.field private final mGson:Lcom/fusepowered/nx/gson/Gson;

.field private final mJavaClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/fusepowered/nx/network/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/nx/network/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mRequestBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    aput-object v3, v1, v2

    .line 49
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "requestBody"    # Ljava/lang/String;
    .param p6, "errorListener"    # Lcom/fusepowered/nx/network/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/fusepowered/nx/network/volley/Response$Listener",
            "<TT;>;",
            "Lcom/fusepowered/nx/network/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<TT;>;"
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "listener":Lcom/fusepowered/nx/network/volley/Response$Listener;, "Lcom/fusepowered/nx/network/volley/Response$Listener<TT;>;"
    invoke-direct {p0, p1, p2, p6}, Lcom/fusepowered/nx/network/volley/Request;-><init>(ILjava/lang/String;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->headers:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v0}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->mGson:Lcom/fusepowered/nx/gson/Gson;

    .line 66
    iput-object p3, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->mJavaClass:Ljava/lang/Class;

    .line 67
    iput-object p5, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->mListener:Lcom/fusepowered/nx/network/volley/Response$Listener;

    .line 68
    iput-object p4, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->mRequestBody:Ljava/lang/String;

    .line 69
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->mListener:Lcom/fusepowered/nx/network/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/fusepowered/nx/network/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public getBody()[B
    .locals 6

    .prologue
    .local p0, "this":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<TT;>;"
    const/4 v1, 0x0

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->mRequestBody:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 116
    :goto_0
    return-object v1

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->mRequestBody:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->mRequestBody:Ljava/lang/String;

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
    .line 106
    .local p0, "this":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<TT;>;"
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

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
    .line 86
    .local p0, "this":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/fusepowered/nx/network/volley/NetworkResponse;)Lcom/fusepowered/nx/network/volley/Response;
    .locals 6
    .param p1, "response"    # Lcom/fusepowered/nx/network/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/network/volley/NetworkResponse;",
            ")",
            "Lcom/fusepowered/nx/network/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<TT;>;"
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p1, Lcom/fusepowered/nx/network/volley/NetworkResponse;->data:[B

    iget-object v5, p1, Lcom/fusepowered/nx/network/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v5}, Lcom/fusepowered/nx/network/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 93
    .local v2, "jsonString":Ljava/lang/String;
    iget-object v4, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->mGson:Lcom/fusepowered/nx/gson/Gson;

    iget-object v5, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->mJavaClass:Ljava/lang/Class;

    invoke-virtual {v4, v2, v5}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 95
    .local v3, "parsedGSON":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/fusepowered/nx/network/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/fusepowered/nx/network/volley/NetworkResponse;)Lcom/fusepowered/nx/network/volley/Cache$Entry;

    move-result-object v4

    .line 94
    invoke-static {v3, v4}, Lcom/fusepowered/nx/network/volley/Response;->success(Ljava/lang/Object;Lcom/fusepowered/nx/network/volley/Cache$Entry;)Lcom/fusepowered/nx/network/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fusepowered/nx/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 100
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "parsedGSON":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v4

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/fusepowered/nx/network/volley/ParseError;

    invoke-direct {v4, v0}, Lcom/fusepowered/nx/network/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/fusepowered/nx/network/volley/Response;->error(Lcom/fusepowered/nx/network/volley/VolleyError;)Lcom/fusepowered/nx/network/volley/Response;

    move-result-object v4

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "je":Lcom/fusepowered/nx/gson/JsonSyntaxException;
    new-instance v4, Lcom/fusepowered/nx/network/volley/ParseError;

    invoke-direct {v4, v1}, Lcom/fusepowered/nx/network/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/fusepowered/nx/network/volley/Response;->error(Lcom/fusepowered/nx/network/volley/VolleyError;)Lcom/fusepowered/nx/network/volley/Response;

    move-result-object v4

    goto :goto_0
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    .local p0, "this":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method
