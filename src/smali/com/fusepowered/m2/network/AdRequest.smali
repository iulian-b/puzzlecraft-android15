.class public Lcom/fusepowered/m2/network/AdRequest;
.super Lcom/fusepowered/m2/volley/Request;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/network/AdRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/m2/volley/Request",
        "<",
        "Lcom/fusepowered/m2/network/AdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdFormat:Lcom/fusepowered/m2/common/AdFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListener:Lcom/fusepowered/m2/network/AdRequest$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fusepowered/m2/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/fusepowered/m2/network/AdRequest$Listener;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adFormat"    # Lcom/fusepowered/m2/common/AdFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "listener"    # Lcom/fusepowered/m2/network/AdRequest$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, v4, p1, p5}, Lcom/fusepowered/m2/volley/Request;-><init>(ILjava/lang/String;Lcom/fusepowered/m2/volley/Response$ErrorListener;)V

    .line 59
    invoke-static {p2}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    invoke-static {p5}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    iput-object p3, p0, Lcom/fusepowered/m2/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/fusepowered/m2/network/AdRequest;->mListener:Lcom/fusepowered/m2/network/AdRequest$Listener;

    .line 63
    iput-object p2, p0, Lcom/fusepowered/m2/network/AdRequest;->mAdFormat:Lcom/fusepowered/m2/common/AdFormat;

    .line 64
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/network/AdRequest;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/fusepowered/m2/volley/DefaultRetryPolicy;

    const/16 v1, 0x9c4

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 69
    .local v0, "retryPolicy":Lcom/fusepowered/m2/volley/DefaultRetryPolicy;
    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/network/AdRequest;->setRetryPolicy(Lcom/fusepowered/m2/volley/RetryPolicy;)Lcom/fusepowered/m2/volley/Request;

    .line 70
    invoke-virtual {p0, v4}, Lcom/fusepowered/m2/network/AdRequest;->setShouldCache(Z)Lcom/fusepowered/m2/volley/Request;

    .line 71
    return-void
.end method

.method private eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "adType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fullAdType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 229
    const-string v0, "mraid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "interstitial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected deliverResponse(Lcom/fusepowered/m2/network/AdResponse;)V
    .locals 1
    .param p1, "adResponse"    # Lcom/fusepowered/m2/network/AdResponse;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/fusepowered/m2/network/AdRequest;->mListener:Lcom/fusepowered/m2/network/AdRequest$Listener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/network/AdRequest$Listener;->onSuccess(Lcom/fusepowered/m2/network/AdResponse;)V

    .line 247
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Lcom/fusepowered/m2/network/AdResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/network/AdRequest;->deliverResponse(Lcom/fusepowered/m2/network/AdResponse;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
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
    .line 80
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 83
    .local v0, "headers":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "languageCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/fusepowered/m2/network/AdRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 87
    .local v2, "userLocale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    sget-object v3, Lcom/fusepowered/m2/common/util/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/fusepowered/m2/common/util/ResponseHeader;

    invoke-virtual {v3}, Lcom/fusepowered/m2/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    return-object v0
.end method

.method public getListener()Lcom/fusepowered/m2/network/AdRequest$Listener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fusepowered/m2/network/AdRequest;->mListener:Lcom/fusepowered/m2/network/AdRequest$Listener;

    return-object v0
.end method

.method getRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "failUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    const/4 v1, 0x0

    .line 264
    :goto_0
    return-object v1

    .line 256
    :cond_0
    const/4 v1, 0x0

    .line 257
    .local v1, "requestId":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 259
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v3, "request_id"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "Unable to obtain request id from fail url."

    invoke-static {v3}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method logScribeEvent(Lcom/fusepowered/m2/network/AdResponse;Lcom/fusepowered/m2/volley/NetworkResponse;Landroid/location/Location;)V
    .locals 6
    .param p1, "adResponse"    # Lcom/fusepowered/m2/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "networkResponse"    # Lcom/fusepowered/m2/volley/NetworkResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 271
    invoke-static {p2}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 273
    new-instance v0, Lcom/fusepowered/m2/common/event/Event$Builder;

    sget-object v2, Lcom/fusepowered/m2/common/event/BaseEvent$Name;->AD_REQUEST:Lcom/fusepowered/m2/common/event/BaseEvent$Name;

    sget-object v3, Lcom/fusepowered/m2/common/event/BaseEvent$Category;->REQUESTS:Lcom/fusepowered/m2/common/event/BaseEvent$Category;

    sget-object v4, Lcom/fusepowered/m2/common/event/BaseEvent$SamplingRate;->AD_REQUEST:Lcom/fusepowered/m2/common/event/BaseEvent$SamplingRate;

    invoke-virtual {v4}, Lcom/fusepowered/m2/common/event/BaseEvent$SamplingRate;->getSamplingRate()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fusepowered/m2/common/event/Event$Builder;-><init>(Lcom/fusepowered/m2/common/event/BaseEvent$Name;Lcom/fusepowered/m2/common/event/BaseEvent$Category;D)V

    iget-object v2, p0, Lcom/fusepowered/m2/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fusepowered/m2/common/event/Event$Builder;->withAdUnitId(Ljava/lang/String;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/m2/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withAdCreativeId(Ljava/lang/String;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/m2/network/AdResponse;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withAdType(Ljava/lang/String;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/m2/network/AdResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withAdNetworkType(Ljava/lang/String;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fusepowered/m2/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/fusepowered/m2/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withAdWidthPx(Ljava/lang/Double;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fusepowered/m2/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/fusepowered/m2/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withAdHeightPx(Ljava/lang/Double;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v2

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withGeoLat(Ljava/lang/Double;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v2

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withGeoLon(Ljava/lang/Double;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withGeoAccuracy(Ljava/lang/Double;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v0

    iget-wide v2, p2, Lcom/fusepowered/m2/volley/NetworkResponse;->networkTimeMs:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withPerformanceDurationMs(Ljava/lang/Double;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/m2/network/AdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withRequestId(Ljava/lang/String;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v0

    iget v1, p2, Lcom/fusepowered/m2/volley/NetworkResponse;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withRequestStatusCode(Ljava/lang/Integer;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/m2/network/AdRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->withRequestUri(Ljava/lang/String;)Lcom/fusepowered/m2/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;->build()Lcom/fusepowered/m2/common/event/BaseEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/common/event/MoPubEvents;->log(Lcom/fusepowered/m2/common/event/BaseEvent;)V

    .line 295
    return-void

    :cond_1
    move-object v0, v1

    .line 273
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method protected parseNetworkResponse(Lcom/fusepowered/m2/volley/NetworkResponse;)Lcom/fusepowered/m2/volley/Response;
    .locals 26
    .param p1, "networkResponse"    # Lcom/fusepowered/m2/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/NetworkResponse;",
            ")",
            "Lcom/fusepowered/m2/volley/Response",
            "<",
            "Lcom/fusepowered/m2/network/AdResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/fusepowered/m2/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 107
    .local v15, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->WARMUP:Lcom/fusepowered/m2/common/util/ResponseHeader;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v15, v0, v1}, Lcom/fusepowered/m2/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;Z)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 108
    new-instance v23, Lcom/fusepowered/m2/network/MoPubNetworkError;

    const-string v24, "Ad Unit is warming up."

    sget-object v25, Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;

    invoke-direct/range {v23 .. v25}, Lcom/fusepowered/m2/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/m2/volley/Response;->error(Lcom/fusepowered/m2/volley/VolleyError;)Lcom/fusepowered/m2/volley/Response;

    move-result-object v23

    .line 223
    :goto_0
    return-object v23

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m2/network/AdRequest;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/fusepowered/m2/common/MoPub;->getLocationPrecision()I

    move-result v24

    invoke-static {}, Lcom/fusepowered/m2/common/MoPub;->getLocationAwareness()Lcom/fusepowered/m2/common/MoPub$LocationAwareness;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Lcom/fusepowered/m2/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/fusepowered/m2/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v17

    .line 116
    .local v17, "location":Landroid/location/Location;
    new-instance v7, Lcom/fusepowered/m2/network/AdResponse$Builder;

    invoke-direct {v7}, Lcom/fusepowered/m2/network/AdResponse$Builder;-><init>()V

    .line 117
    .local v7, "builder":Lcom/fusepowered/m2/network/AdResponse$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m2/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setAdUnitId(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 119
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->AD_TYPE:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "adTypeString":Ljava/lang/String;
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v14

    .line 121
    .local v14, "fullAdTypeString":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setAdType(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 122
    invoke-virtual {v7, v14}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setFullAdType(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 126
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->REFRESH_TIME:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v20

    .line 127
    .local v20, "refreshTimeSeconds":Ljava/lang/Integer;
    if-nez v20, :cond_1

    const/16 v19, 0x0

    .line 130
    .local v19, "refreshTimeMilliseconds":Ljava/lang/Integer;
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 132
    const-string v23, "clear"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 133
    invoke-virtual {v7}, Lcom/fusepowered/m2/network/AdResponse$Builder;->build()Lcom/fusepowered/m2/network/AdResponse;

    move-result-object v4

    .line 134
    .local v4, "adResponse":Lcom/fusepowered/m2/network/AdResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2}, Lcom/fusepowered/m2/network/AdRequest;->logScribeEvent(Lcom/fusepowered/m2/network/AdResponse;Lcom/fusepowered/m2/volley/NetworkResponse;Landroid/location/Location;)V

    .line 135
    new-instance v23, Lcom/fusepowered/m2/network/MoPubNetworkError;

    const-string v24, "No ads found for ad unit."

    sget-object v25, Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;->NO_FILL:Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/m2/volley/Response;->error(Lcom/fusepowered/m2/volley/VolleyError;)Lcom/fusepowered/m2/volley/Response;

    move-result-object v23

    goto :goto_0

    .line 127
    .end local v4    # "adResponse":Lcom/fusepowered/m2/network/AdResponse;
    .end local v19    # "refreshTimeMilliseconds":Ljava/lang/Integer;
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto :goto_1

    .line 144
    .restart local v19    # "refreshTimeMilliseconds":Ljava/lang/Integer;
    :cond_2
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setNetworkType(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 146
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->REDIRECT_URL:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v18

    .line 147
    .local v18, "redirectUrl":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setRedirectUrl(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 149
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "clickTrackingUrl":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 152
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setImpressionTrackingUrl(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 154
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->FAIL_URL:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v13

    .line 155
    .local v13, "failUrl":Ljava/lang/String;
    invoke-virtual {v7, v13}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setFailoverUrl(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/fusepowered/m2/network/AdRequest;->getRequestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 158
    .local v21, "requestId":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setRequestId(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 160
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->SCROLLABLE:Lcom/fusepowered/m2/common/util/ResponseHeader;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v15, v0, v1}, Lcom/fusepowered/m2/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;Z)Z

    move-result v16

    .line 161
    .local v16, "isScrollable":Z
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setScrollable(Ljava/lang/Boolean;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 163
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->WIDTH:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v23

    sget-object v24, Lcom/fusepowered/m2/common/util/ResponseHeader;->HEIGHT:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 166
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v5

    .line 167
    .local v5, "adTimeoutDelaySeconds":Ljava/lang/Integer;
    if-nez v5, :cond_8

    const/16 v23, 0x0

    :goto_2
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 173
    invoke-virtual/range {p0 .. p1}, Lcom/fusepowered/m2/network/AdRequest;->parseStringBody(Lcom/fusepowered/m2/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v22

    .line 174
    .local v22, "responseBody":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setResponseBody(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 175
    const-string v23, "json"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 177
    :try_start_0
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setJsonBody(Lorg/json/JSONObject;)Lcom/fusepowered/m2/network/AdResponse$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m2/network/AdRequest;->mAdFormat:Lcom/fusepowered/m2/common/AdFormat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v6, v14, v15}, Lcom/fusepowered/m2/mobileads/AdTypeTranslator;->getCustomEventName(Lcom/fusepowered/m2/common/AdFormat;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 188
    .local v9, "customEventClassName":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setCustomEventClassName(Ljava/lang/String;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 191
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, "customEventData":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 195
    sget-object v23, Lcom/fusepowered/m2/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v10

    .line 198
    :cond_4
    :try_start_1
    invoke-static {v10}, Lcom/fusepowered/m2/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/fusepowered/m2/network/AdResponse$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/fusepowered/m2/network/AdRequest;->eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 207
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 208
    .local v12, "eventDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v23, "Html-Response-Body"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v23, "Scrollable"

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v23, "com_mopub_orientation"

    sget-object v24, Lcom/fusepowered/m2/common/util/ResponseHeader;->ORIENTATION:Lcom/fusepowered/m2/common/util/ResponseHeader;

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/fusepowered/m2/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/fusepowered/m2/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    if-eqz v18, :cond_5

    .line 212
    const-string v23, "Redirect-Url"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_5
    if-eqz v8, :cond_6

    .line 215
    const-string v23, "Clickthrough-Url"

    move-object/from16 v0, v23

    invoke-interface {v12, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_6
    invoke-virtual {v7, v12}, Lcom/fusepowered/m2/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/fusepowered/m2/network/AdResponse$Builder;

    .line 220
    .end local v12    # "eventDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v7}, Lcom/fusepowered/m2/network/AdResponse$Builder;->build()Lcom/fusepowered/m2/network/AdResponse;

    move-result-object v4

    .line 221
    .restart local v4    # "adResponse":Lcom/fusepowered/m2/network/AdResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2}, Lcom/fusepowered/m2/network/AdRequest;->logScribeEvent(Lcom/fusepowered/m2/network/AdResponse;Lcom/fusepowered/m2/volley/NetworkResponse;Landroid/location/Location;)V

    .line 223
    invoke-virtual {v7}, Lcom/fusepowered/m2/network/AdResponse$Builder;->build()Lcom/fusepowered/m2/network/AdResponse;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Lcom/fusepowered/m2/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/fusepowered/m2/volley/NetworkResponse;)Lcom/fusepowered/m2/volley/Cache$Entry;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/fusepowered/m2/volley/Response;->success(Ljava/lang/Object;Lcom/fusepowered/m2/volley/Cache$Entry;)Lcom/fusepowered/m2/volley/Response;

    move-result-object v23

    goto/16 :goto_0

    .line 167
    .end local v4    # "adResponse":Lcom/fusepowered/m2/network/AdResponse;
    .end local v9    # "customEventClassName":Ljava/lang/String;
    .end local v10    # "customEventData":Ljava/lang/String;
    .end local v22    # "responseBody":Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    goto/16 :goto_2

    .line 178
    .restart local v22    # "responseBody":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 179
    .local v11, "e":Lorg/json/JSONException;
    new-instance v23, Lcom/fusepowered/m2/network/MoPubNetworkError;

    const-string v24, "Failed to decode body JSON for native ad format"

    sget-object v25, Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v11, v2}, Lcom/fusepowered/m2/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/m2/volley/Response;->error(Lcom/fusepowered/m2/volley/VolleyError;)Lcom/fusepowered/m2/volley/Response;

    move-result-object v23

    goto/16 :goto_0

    .line 199
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v9    # "customEventClassName":Ljava/lang/String;
    .restart local v10    # "customEventData":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 200
    .restart local v11    # "e":Lorg/json/JSONException;
    new-instance v23, Lcom/fusepowered/m2/network/MoPubNetworkError;

    const-string v24, "Failed to decode server extras for custom event data."

    sget-object v25, Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;->BAD_HEADER_DATA:Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v11, v2}, Lcom/fusepowered/m2/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/m2/volley/Response;->error(Lcom/fusepowered/m2/volley/VolleyError;)Lcom/fusepowered/m2/volley/Response;

    move-result-object v23

    goto/16 :goto_0
.end method

.method protected parseStringBody(Lcom/fusepowered/m2/volley/NetworkResponse;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Lcom/fusepowered/m2/volley/NetworkResponse;

    .prologue
    .line 237
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/fusepowered/m2/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lcom/fusepowered/m2/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v3}, Lcom/fusepowered/m2/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .local v1, "parsed":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 238
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/fusepowered/m2/volley/NetworkResponse;->data:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "parsed":Ljava/lang/String;
    goto :goto_0
.end method
