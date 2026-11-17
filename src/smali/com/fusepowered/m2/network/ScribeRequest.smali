.class public Lcom/fusepowered/m2/network/ScribeRequest;
.super Lcom/fusepowered/m2/volley/Request;
.source "ScribeRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/network/ScribeRequest$ScribeRequestFactory;,
        Lcom/fusepowered/m2/network/ScribeRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/m2/volley/Request",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEventSerializer:Lcom/fusepowered/m2/common/event/EventSerializer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mEvents:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/common/event/BaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/fusepowered/m2/network/ScribeRequest$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/fusepowered/m2/common/event/EventSerializer;Lcom/fusepowered/m2/network/ScribeRequest$Listener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "eventSerializer"    # Lcom/fusepowered/m2/common/event/EventSerializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/fusepowered/m2/network/ScribeRequest$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/common/event/BaseEvent;",
            ">;",
            "Lcom/fusepowered/m2/common/event/EventSerializer;",
            "Lcom/fusepowered/m2/network/ScribeRequest$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/common/event/BaseEvent;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p4}, Lcom/fusepowered/m2/volley/Request;-><init>(ILjava/lang/String;Lcom/fusepowered/m2/volley/Response$ErrorListener;)V

    .line 43
    iput-object p2, p0, Lcom/fusepowered/m2/network/ScribeRequest;->mEvents:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/fusepowered/m2/network/ScribeRequest;->mEventSerializer:Lcom/fusepowered/m2/common/event/EventSerializer;

    .line 45
    iput-object p4, p0, Lcom/fusepowered/m2/network/ScribeRequest;->mListener:Lcom/fusepowered/m2/network/ScribeRequest$Listener;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/network/ScribeRequest;->setShouldCache(Z)Lcom/fusepowered/m2/volley/Request;

    .line 50
    new-instance v0, Lcom/fusepowered/m2/volley/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/fusepowered/m2/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/network/ScribeRequest;->setRetryPolicy(Lcom/fusepowered/m2/volley/RetryPolicy;)Lcom/fusepowered/m2/volley/Request;

    .line 51
    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/network/ScribeRequest;->deliverResponse(Ljava/lang/Void;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/network/ScribeRequest;->mListener:Lcom/fusepowered/m2/network/ScribeRequest$Listener;

    invoke-interface {v0}, Lcom/fusepowered/m2/network/ScribeRequest$Listener;->onResponse()V

    .line 74
    return-void
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/common/event/BaseEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fusepowered/m2/network/ScribeRequest;->mEvents:Ljava/util/List;

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 4
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

    .prologue
    .line 58
    iget-object v2, p0, Lcom/fusepowered/m2/network/ScribeRequest;->mEventSerializer:Lcom/fusepowered/m2/common/event/EventSerializer;

    iget-object v3, p0, Lcom/fusepowered/m2/network/ScribeRequest;->mEvents:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/common/event/EventSerializer;->serializeAsJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 59
    .local v0, "jsonArray":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "log"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v1
.end method

.method protected parseNetworkResponse(Lcom/fusepowered/m2/volley/NetworkResponse;)Lcom/fusepowered/m2/volley/Response;
    .locals 2
    .param p1, "networkResponse"    # Lcom/fusepowered/m2/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/NetworkResponse;",
            ")",
            "Lcom/fusepowered/m2/volley/Response",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/fusepowered/m2/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/fusepowered/m2/volley/NetworkResponse;)Lcom/fusepowered/m2/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/volley/Response;->success(Ljava/lang/Object;Lcom/fusepowered/m2/volley/Cache$Entry;)Lcom/fusepowered/m2/volley/Response;

    move-result-object v0

    return-object v0
.end method
