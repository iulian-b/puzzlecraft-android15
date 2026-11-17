.class public Lcom/fusepowered/m2/network/TrackingRequest;
.super Lcom/fusepowered/m2/volley/Request;
.source "TrackingRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/network/TrackingRequest$Listener;
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
.field private final mListener:Lcom/fusepowered/m2/network/TrackingRequest$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/fusepowered/m2/network/TrackingRequest$Listener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/fusepowered/m2/network/TrackingRequest$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, p1, p2}, Lcom/fusepowered/m2/volley/Request;-><init>(ILjava/lang/String;Lcom/fusepowered/m2/volley/Response$ErrorListener;)V

    .line 36
    iput-object p2, p0, Lcom/fusepowered/m2/network/TrackingRequest;->mListener:Lcom/fusepowered/m2/network/TrackingRequest$Listener;

    .line 37
    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/network/TrackingRequest;->setShouldCache(Z)Lcom/fusepowered/m2/volley/Request;

    .line 38
    new-instance v0, Lcom/fusepowered/m2/volley/DefaultRetryPolicy;

    const/16 v1, 0x9c4

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/network/TrackingRequest;->setRetryPolicy(Lcom/fusepowered/m2/volley/RetryPolicy;)Lcom/fusepowered/m2/volley/Request;

    .line 42
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "urls":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 98
    invoke-static {p0, p1, v0, v0}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/fusepowered/m2/network/TrackingRequest$Listener;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V

    .line 99
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Lcom/fusepowered/m2/common/event/BaseEvent$Name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/fusepowered/m2/common/event/BaseEvent$Name;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "urls":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/fusepowered/m2/network/TrackingRequest$Listener;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V

    .line 105
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/fusepowered/m2/network/TrackingRequest$Listener;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V
    .locals 6
    .param p0    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/fusepowered/m2/network/TrackingRequest$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "name"    # Lcom/fusepowered/m2/common/event/BaseEvent$Name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/fusepowered/m2/network/TrackingRequest$Listener;",
            "Lcom/fusepowered/m2/common/event/BaseEvent$Name;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "urls":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 141
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-static {p1}, Lcom/fusepowered/m2/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/fusepowered/m2/network/MoPubRequestQueue;

    move-result-object v2

    .line 116
    .local v2, "requestQueue":Lcom/fusepowered/m2/volley/RequestQueue;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 121
    new-instance v1, Lcom/fusepowered/m2/network/TrackingRequest$1;

    invoke-direct {v1, p2, v4}, Lcom/fusepowered/m2/network/TrackingRequest$1;-><init>(Lcom/fusepowered/m2/network/TrackingRequest$Listener;Ljava/lang/String;)V

    .line 138
    .local v1, "internalListener":Lcom/fusepowered/m2/network/TrackingRequest$Listener;
    new-instance v3, Lcom/fusepowered/m2/network/TrackingRequest;

    invoke-direct {v3, v4, v1}, Lcom/fusepowered/m2/network/TrackingRequest;-><init>(Ljava/lang/String;Lcom/fusepowered/m2/network/TrackingRequest$Listener;)V

    .line 139
    .local v3, "trackingRequest":Lcom/fusepowered/m2/network/TrackingRequest;
    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/volley/RequestQueue;->add(Lcom/fusepowered/m2/volley/Request;)Lcom/fusepowered/m2/volley/Request;

    goto :goto_0
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {p0, p1, v0, v0}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/fusepowered/m2/network/TrackingRequest$Listener;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V

    .line 146
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Lcom/fusepowered/m2/common/event/BaseEvent$Name;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/fusepowered/m2/network/TrackingRequest$Listener;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V

    .line 156
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/fusepowered/m2/network/TrackingRequest$Listener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/fusepowered/m2/network/TrackingRequest$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/fusepowered/m2/network/TrackingRequest$Listener;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V

    .line 151
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/fusepowered/m2/network/TrackingRequest$Listener;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/fusepowered/m2/network/TrackingRequest$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "name"    # Lcom/fusepowered/m2/common/event/BaseEvent$Name;

    .prologue
    .line 162
    if-eqz p0, :cond_0

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/fusepowered/m2/network/TrackingRequest$Listener;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "vastErrorCode"    # Lcom/fusepowered/m2/mobileads/VastErrorCode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentPlayHead"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "assetUri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;",
            "Lcom/fusepowered/m2/mobileads/VastErrorCode;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "vastTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    invoke-static {p0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v1, "trackers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m2/mobileads/VastTracker;

    .line 76
    .local v2, "vastTracker":Lcom/fusepowered/m2/mobileads/VastTracker;
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastTracker;->isTracked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastTracker;->isRepeatable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    :cond_1
    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastTracker;->getTrackingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastTracker;->setTracked()V

    goto :goto_0

    .line 86
    .end local v2    # "vastTracker":Lcom/fusepowered/m2/mobileads/VastTracker;
    :cond_2
    new-instance v3, Lcom/fusepowered/m2/mobileads/VastMacroHelper;

    invoke-direct {v3, v1}, Lcom/fusepowered/m2/mobileads/VastMacroHelper;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, p1}, Lcom/fusepowered/m2/mobileads/VastMacroHelper;->withErrorCode(Lcom/fusepowered/m2/mobileads/VastErrorCode;)Lcom/fusepowered/m2/mobileads/VastMacroHelper;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/fusepowered/m2/mobileads/VastMacroHelper;->withContentPlayHead(Ljava/lang/Integer;)Lcom/fusepowered/m2/mobileads/VastMacroHelper;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/fusepowered/m2/mobileads/VastMacroHelper;->withAssetUri(Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/VastMacroHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastMacroHelper;->getUris()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p4}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 94
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/network/TrackingRequest;->deliverResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public deliverResponse(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/m2/network/TrackingRequest;->mListener:Lcom/fusepowered/m2/network/TrackingRequest$Listener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/fusepowered/m2/network/TrackingRequest;->mListener:Lcom/fusepowered/m2/network/TrackingRequest$Listener;

    invoke-virtual {p0}, Lcom/fusepowered/m2/network/TrackingRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/network/TrackingRequest$Listener;->onResponse(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected parseNetworkResponse(Lcom/fusepowered/m2/volley/NetworkResponse;)Lcom/fusepowered/m2/volley/Response;
    .locals 3
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
    .line 46
    iget v0, p1, Lcom/fusepowered/m2/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 47
    new-instance v0, Lcom/fusepowered/m2/network/MoPubNetworkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to log tracking request. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/fusepowered/m2/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/network/TrackingRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;->TRACKING_FAILURE:Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;)V

    invoke-static {v0}, Lcom/fusepowered/m2/volley/Response;->error(Lcom/fusepowered/m2/volley/VolleyError;)Lcom/fusepowered/m2/volley/Response;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/fusepowered/m2/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/fusepowered/m2/volley/NetworkResponse;)Lcom/fusepowered/m2/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/volley/Response;->success(Ljava/lang/Object;Lcom/fusepowered/m2/volley/Cache$Entry;)Lcom/fusepowered/m2/volley/Response;

    move-result-object v0

    goto :goto_0
.end method
