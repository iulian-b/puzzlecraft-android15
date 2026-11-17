.class public Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;
.super Landroid/os/AsyncTask;
.source "VastXmlManagerAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final AREA_WEIGHT:D = 60.0

.field private static final ASPECT_RATIO_WEIGHT:D = 40.0

.field static final MAX_TIMES_TO_FOLLOW_VAST_REDIRECT:I = 0xa

.field private static final VIDEO_MIME_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScreenArea:I

.field private final mScreenAspectRatio:D

.field private mTimesFollowedVastRedirect:I

.field private final mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video/mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video/3gpp"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->VIDEO_MIME_TYPES:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;DILandroid/content/Context;)V
    .locals 2
    .param p1, "vastXmlManagerAggregatorListener"    # Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "screenAspectRatio"    # D
    .param p4, "screenArea"    # I
    .param p5, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    invoke-static {p5}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    .line 82
    iput-wide p2, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    .line 83
    iput p4, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mScreenArea:I

    .line 84
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private calculateFitness(II)D
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 615
    move/from16 v0, p1

    int-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    div-double v8, v10, v12

    .line 616
    .local v8, "mediaAspectRatio":D
    mul-int v6, p1, p2

    .line 617
    .local v6, "mediaArea":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    div-double v4, v8, v10

    .line 618
    .local v4, "aspectRatioRatio":D
    int-to-double v10, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mScreenArea:I

    int-to-double v12, v7

    div-double v2, v10, v12

    .line 619
    .local v2, "areaRatio":D
    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    return-wide v10
.end method

.method private evaluateInLineXmlManager(Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;Ljava/util/List;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    .locals 6
    .param p1, "vastInLineXmlManager"    # Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)",
            "Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;->getLinearXmlManagers()Ljava/util/List;

    move-result-object v3

    .line 266
    .local v3, "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;

    .line 267
    .local v2, "linearXmlManager":Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;
    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getMediaXmlManagers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "bestMediaFileUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 270
    new-instance v4, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-direct {v4}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;-><init>()V

    .line 271
    .local v4, "vastVideoConfiguration":Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addImpressionTrackers(Ljava/util/List;)V

    .line 272
    invoke-direct {p0, v2, v4}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->populateLinearTrackersAndIcon(Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    .line 277
    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setClickThroughUrl(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v4, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;)Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setVastCompanionAd(Lcom/fusepowered/m2/mobileads/VastCompanionAd;)V

    .line 282
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;->getErrorTrackers()Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    invoke-virtual {v4, p2}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addErrorTrackers(Ljava/util/List;)V

    .line 288
    .end local v0    # "bestMediaFileUrl":Ljava/lang/String;
    .end local v2    # "linearXmlManager":Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;
    .end local v4    # "vastVideoConfiguration":Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private evaluateWrapperRedirect(Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;Landroid/net/http/AndroidHttpClient;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "vastWrapperXmlManager"    # Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "androidHttpClient"    # Landroid/net/http/AndroidHttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;",
            "Landroid/net/http/AndroidHttpClient;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, "wrapperErrorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const/4 v3, 0x0

    .line 303
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;->getVastAdTagURI()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "vastAdTagUri":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 319
    :cond_0
    :goto_0
    return-object v2

    .line 308
    :cond_1
    const/4 v2, 0x0

    .line 310
    .local v2, "vastRedirectXml":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2, v1}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->followVastRedirect(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Failed to follow VAST redirect"

    invoke-static {v4, v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 314
    sget-object v4, Lcom/fusepowered/m2/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/fusepowered/m2/mobileads/VastErrorCode;

    iget-object v5, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p3, v4, v3, v3, v5}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private fireErrorTrackerIfNoAds(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastXmlManager;Landroid/content/Context;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "xmlManager"    # Lcom/fusepowered/m2/mobileads/VastXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastAdXmlManager;",
            ">;",
            "Lcom/fusepowered/m2/mobileads/VastXmlManager;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastAdXmlManager;>;"
    const/4 v2, 0x0

    .line 403
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastXmlManager;->getErrorTracker()Lcom/fusepowered/m2/mobileads/VastTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastXmlManager;->getErrorTracker()Lcom/fusepowered/m2/mobileads/VastTracker;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/fusepowered/m2/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/fusepowered/m2/mobileads/VastErrorCode;

    :goto_0
    invoke-static {v1, v0, v2, v2, p3}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 411
    const/4 v0, 0x1

    .line 413
    :goto_1
    return v0

    .line 405
    :cond_0
    sget-object v0, Lcom/fusepowered/m2/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/fusepowered/m2/mobileads/VastErrorCode;

    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private followVastRedirect(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "httpClient"    # Landroid/net/http/AndroidHttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "redirectUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 650
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 651
    invoke-static {p2}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 653
    iget v4, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    .line 654
    iget v4, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    .line 656
    invoke-static {p2}, Lcom/fusepowered/m2/common/HttpClient;->initializeHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 657
    .local v1, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p1, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 658
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 659
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m2/common/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 661
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    return-object v3
.end method

.method static isValidSequenceNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "sequence"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 634
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v2

    .line 638
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 639
    .local v1, "sequenceInt":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 640
    .end local v1    # "sequenceInt":I
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private populateLinearTrackersAndIcon(Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V
    .locals 1
    .param p1, "linearXmlManager"    # Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vastVideoConfiguration"    # Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 332
    const-string v0, "linearXmlManager cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    const-string v0, "vastVideoConfiguration cannot be null"

    invoke-static {p2, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getAbsoluteProgressTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 336
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getFractionalProgressTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addFractionalTrackers(Ljava/util/List;)V

    .line 338
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getPauseTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addPauseTrackers(Ljava/util/List;)V

    .line 339
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getResumeTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addResumeTrackers(Ljava/util/List;)V

    .line 340
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getVideoCompleteTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addCompleteTrackers(Ljava/util/List;)V

    .line 341
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getVideoCloseTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addCloseTrackers(Ljava/util/List;)V

    .line 342
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getVideoSkipTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addSkipTrackers(Ljava/util/List;)V

    .line 343
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addClickTrackers(Ljava/util/List;)V

    .line 346
    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setSkipOffset(Ljava/lang/String;)V

    .line 351
    :cond_0
    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getVastIcon()Lcom/fusepowered/m2/mobileads/VastIcon;

    move-result-object v0

    if-nez v0, :cond_1

    .line 352
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;->getIconXmlManagers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->getBestIcon(Ljava/util/List;)Lcom/fusepowered/m2/mobileads/VastIcon;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setVastIcon(Lcom/fusepowered/m2/mobileads/VastIcon;)V

    .line 354
    :cond_1
    return-void
.end method

.method private populateMoPubCustomElements(Lcom/fusepowered/m2/mobileads/VastXmlManager;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V
    .locals 1
    .param p1, "xmlManager"    # Lcom/fusepowered/m2/mobileads/VastXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vastVideoConfiguration"    # Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 367
    const-string v0, "xmlManager cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    const-string v0, "vastVideoConfiguration cannot be null"

    invoke-static {p2, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastXmlManager;->getMoPubImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addImpressionTrackers(Ljava/util/List;)V

    .line 372
    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastXmlManager;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setCustomCtaText(Ljava/lang/String;)V

    .line 375
    :cond_0
    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 376
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastXmlManager;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setCustomSkipText(Ljava/lang/String;)V

    .line 378
    :cond_1
    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 379
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastXmlManager;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setCustomCloseIconUrl(Ljava/lang/String;)V

    .line 381
    :cond_2
    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->isCustomForceOrientationSet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 382
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastXmlManager;->getCustomForceOrientation()Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setCustomForceOrientation(Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;)V

    .line 384
    :cond_3
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    .locals 5
    .param p1, "strings"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "httpClient":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    invoke-static {}, Lcom/fusepowered/m2/common/HttpClient;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 92
    if-eqz p1, :cond_2

    array-length v4, p1

    if-lez v4, :cond_2

    .line 93
    const/4 v4, 0x0

    aget-object v2, p1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v2, "vastXml":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 107
    .end local v2    # "vastXml":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 97
    .restart local v2    # "vastXml":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2, v1, v4}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->evaluateVastXmlManager(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;Ljava/util/List;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 102
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 102
    .end local v2    # "vastXml":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Failed to parse VAST XML"

    invoke-static {v4, v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_3
    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->doInBackground([Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method evaluateVastXmlManager(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;Ljava/util/List;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    .locals 23
    .param p1, "vastXml"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "androidHttpClient"    # Landroid/net/http/AndroidHttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/http/AndroidHttpClient;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)",
            "Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;"
        }
    .end annotation

    .prologue
    .line 150
    .local p3, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v19, "vastXml cannot be null"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const-string v19, "androidHttpClient cannot be null"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const-string v19, "errorTrackers cannot be null"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v18, Lcom/fusepowered/m2/mobileads/VastXmlManager;

    invoke-direct/range {v18 .. v18}, Lcom/fusepowered/m2/mobileads/VastXmlManager;-><init>()V

    .line 156
    .local v18, "xmlManager":Lcom/fusepowered/m2/mobileads/VastXmlManager;
    :try_start_0
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/VastXmlManager;->parseVastXml(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    invoke-virtual/range {v18 .. v18}, Lcom/fusepowered/m2/mobileads/VastXmlManager;->getAdXmlManagers()Ljava/util/List;

    move-result-object v12

    .line 167
    .local v12, "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastAdXmlManager;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->fireErrorTrackerIfNoAds(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastXmlManager;Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 168
    const/4 v15, 0x0

    .line 245
    .end local v12    # "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastAdXmlManager;>;"
    :goto_0
    return-object v15

    .line 157
    :catch_0
    move-exception v7

    .line 158
    .local v7, "e":Ljava/lang/Exception;
    const-string v19, "Failed to parse VAST XML"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    sget-object v19, Lcom/fusepowered/m2/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/fusepowered/m2/mobileads/VastErrorCode;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 161
    const/4 v15, 0x0

    goto :goto_0

    .line 171
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v12    # "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastAdXmlManager;>;"
    :cond_0
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fusepowered/m2/mobileads/VastAdXmlManager;

    .line 173
    .local v11, "vastAdXmlManager":Lcom/fusepowered/m2/mobileads/VastAdXmlManager;
    invoke-virtual {v11}, Lcom/fusepowered/m2/mobileads/VastAdXmlManager;->getSequence()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->isValidSequenceNumber(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 178
    invoke-virtual {v11}, Lcom/fusepowered/m2/mobileads/VastAdXmlManager;->getInLineXmlManager()Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;

    move-result-object v13

    .line 179
    .local v13, "vastInLineXmlManager":Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;
    if-eqz v13, :cond_2

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->evaluateInLineXmlManager(Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;Ljava/util/List;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    move-result-object v15

    .line 183
    .local v15, "vastVideoConfiguration":Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    if-eqz v15, :cond_2

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->populateMoPubCustomElements(Lcom/fusepowered/m2/mobileads/VastXmlManager;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    goto :goto_0

    .line 190
    .end local v15    # "vastVideoConfiguration":Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    :cond_2
    invoke-virtual {v11}, Lcom/fusepowered/m2/mobileads/VastAdXmlManager;->getWrapperXmlManager()Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;

    move-result-object v16

    .line 191
    .local v16, "vastWrapperXmlManager":Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;
    if-eqz v16, :cond_1

    .line 192
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    .local v17, "wrapperErrorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;->getErrorTrackers()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->evaluateWrapperRedirect(Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;Landroid/net/http/AndroidHttpClient;Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 196
    .local v14, "vastRedirectXml":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v14, v1, v2}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->evaluateVastXmlManager(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;Ljava/util/List;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    move-result-object v15

    .line 208
    .restart local v15    # "vastVideoConfiguration":Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    if-eqz v15, :cond_1

    .line 214
    invoke-virtual/range {v16 .. v16}, Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->addImpressionTrackers(Ljava/util/List;)V

    .line 216
    invoke-virtual/range {v16 .. v16}, Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;->getLinearXmlManagers()Ljava/util/List;

    move-result-object v10

    .line 218
    .local v10, "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;

    .line 219
    .local v9, "linearXmlManager":Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->populateLinearTrackersAndIcon(Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    goto :goto_1

    .line 224
    .end local v9    # "linearXmlManager":Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;
    :cond_3
    invoke-virtual {v15}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getVastCompanionAd()Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    move-result-object v5

    .line 225
    .local v5, "companionAd":Lcom/fusepowered/m2/mobileads/VastCompanionAd;
    if-nez v5, :cond_5

    .line 226
    invoke-virtual/range {v16 .. v16}, Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;)Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setVastCompanionAd(Lcom/fusepowered/m2/mobileads/VastCompanionAd;)V

    .line 239
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->populateMoPubCustomElements(Lcom/fusepowered/m2/mobileads/VastXmlManager;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    goto/16 :goto_0

    .line 230
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;

    .line 231
    .local v6, "companionAdXmlManager":Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;
    invoke-virtual {v6}, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->hasResources()Z

    move-result v19

    if-nez v19, :cond_6

    .line 232
    invoke-virtual {v6}, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->addClickTrackers(Ljava/util/List;)V

    .line 233
    invoke-virtual {v6}, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->addCreativeViewTrackers(Ljava/util/List;)V

    goto :goto_2

    .line 245
    .end local v5    # "companionAd":Lcom/fusepowered/m2/mobileads/VastCompanionAd;
    .end local v6    # "companionAdXmlManager":Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;
    .end local v10    # "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastLinearXmlManager;>;"
    .end local v11    # "vastAdXmlManager":Lcom/fusepowered/m2/mobileads/VastAdXmlManager;
    .end local v13    # "vastInLineXmlManager":Lcom/fusepowered/m2/mobileads/VastInLineXmlManager;
    .end local v14    # "vastRedirectXml":Ljava/lang/String;
    .end local v15    # "vastVideoConfiguration":Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    .end local v16    # "vastWrapperXmlManager":Lcom/fusepowered/m2/mobileads/VastWrapperXmlManager;
    .end local v17    # "wrapperErrorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method getBestCompanionAd(Ljava/util/List;)Lcom/fusepowered/m2/mobileads/VastCompanionAd;
    .locals 26
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;",
            ">;)",
            "Lcom/fusepowered/m2/mobileads/VastCompanionAd;"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;>;"
    const-string v2, "managers cannot be null"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    .local v17, "companionXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;>;"
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 459
    .local v10, "bestCompanionFitness":D
    const/4 v12, 0x0

    .line 460
    .local v12, "bestCompanionXmlManager":Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;
    const/4 v5, 0x0

    .line 461
    .local v5, "bestVastResource":Lcom/fusepowered/m2/mobileads/VastResource;
    const/4 v13, 0x0

    .line 464
    .local v13, "bestVastScaledDimensions":Landroid/graphics/Point;
    invoke-static {}, Lcom/fusepowered/m2/mobileads/VastResource$Type;->values()[Lcom/fusepowered/m2/mobileads/VastResource$Type;

    move-result-object v9

    .local v9, "arr$":[Lcom/fusepowered/m2/mobileads/VastResource$Type;
    array-length v0, v9

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v21, v9, v19

    .line 465
    .local v21, "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 467
    .local v25, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;>;"
    :cond_0
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;

    .line 470
    .local v16, "companionXmlManager":Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;
    invoke-virtual/range {v16 .. v16}, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v24

    .line 471
    .local v24, "width":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v18

    .line 472
    .local v18, "height":Ljava/lang/Integer;
    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 477
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->getScaledDimensions(II)Landroid/graphics/Point;

    move-result-object v23

    .line 478
    .local v23, "vastScaledDimensions":Landroid/graphics/Point;
    invoke-virtual/range {v16 .. v16}, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->getResourceXmlManager()Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;

    move-result-object v2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3, v4}, Lcom/fusepowered/m2/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;Lcom/fusepowered/m2/mobileads/VastResource$Type;II)Lcom/fusepowered/m2/mobileads/VastResource;

    move-result-object v22

    .line 481
    .local v22, "vastResource":Lcom/fusepowered/m2/mobileads/VastResource;
    if-eqz v22, :cond_0

    .line 485
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v14

    .line 486
    .local v14, "companionFitness":D
    cmpg-double v2, v14, v10

    if-gez v2, :cond_0

    .line 487
    move-wide v10, v14

    .line 488
    move-object/from16 v12, v16

    .line 489
    move-object/from16 v5, v22

    .line 490
    move-object/from16 v13, v23

    goto :goto_1

    .line 493
    .end local v14    # "companionFitness":D
    .end local v16    # "companionXmlManager":Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;
    .end local v18    # "height":Ljava/lang/Integer;
    .end local v22    # "vastResource":Lcom/fusepowered/m2/mobileads/VastResource;
    .end local v23    # "vastScaledDimensions":Landroid/graphics/Point;
    .end local v24    # "width":Ljava/lang/Integer;
    :cond_1
    if-eqz v12, :cond_3

    .line 498
    .end local v21    # "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .end local v25    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;>;"
    :cond_2
    if-eqz v12, :cond_4

    .line 499
    new-instance v2, Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    iget v3, v13, Landroid/graphics/Point;->x:I

    iget v4, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v12}, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v12}, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/fusepowered/m2/mobileads/VastCompanionAd;-><init>(IILcom/fusepowered/m2/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 508
    :goto_2
    return-object v2

    .line 464
    .restart local v21    # "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .restart local v25    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;>;"
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 508
    .end local v21    # "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .end local v25    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method getBestIcon(Ljava/util/List;)Lcom/fusepowered/m2/mobileads/VastIcon;
    .locals 19
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastIconXmlManager;",
            ">;)",
            "Lcom/fusepowered/m2/mobileads/VastIcon;"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastIconXmlManager;>;"
    const-string v1, "managers cannot be null"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 569
    .local v14, "iconXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastIconXmlManager;>;"
    invoke-static {}, Lcom/fusepowered/m2/mobileads/VastResource$Type;->values()[Lcom/fusepowered/m2/mobileads/VastResource$Type;

    move-result-object v10

    .local v10, "arr$":[Lcom/fusepowered/m2/mobileads/VastResource$Type;
    array-length v15, v10

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v15, :cond_2

    aget-object v16, v10, v12

    .line 570
    .local v16, "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 571
    .local v18, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/m2/mobileads/VastIconXmlManager;>;"
    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;

    .line 574
    .local v13, "iconXmlManager":Lcom/fusepowered/m2/mobileads/VastIconXmlManager;
    invoke-virtual {v13}, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v17

    .line 575
    .local v17, "width":Ljava/lang/Integer;
    invoke-virtual {v13}, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v11

    .line 578
    .local v11, "height":Ljava/lang/Integer;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x12c

    if-gt v1, v2, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x12c

    if-gt v1, v2, :cond_0

    .line 583
    invoke-virtual {v13}, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;->getResourceXmlManager()Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v16

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/m2/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;Lcom/fusepowered/m2/mobileads/VastResource$Type;II)Lcom/fusepowered/m2/mobileads/VastResource;

    move-result-object v6

    .line 586
    .local v6, "vastResource":Lcom/fusepowered/m2/mobileads/VastResource;
    if-eqz v6, :cond_0

    .line 590
    new-instance v1, Lcom/fusepowered/m2/mobileads/VastIcon;

    invoke-virtual {v13}, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13}, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13}, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;->getOffsetMS()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13}, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;->getDurationMS()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13}, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;->getClickTrackingUris()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v13}, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;->getClickThroughUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/fusepowered/m2/mobileads/VastIconXmlManager;->getViewTrackingUris()Ljava/util/List;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/fusepowered/m2/mobileads/VastIcon;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/fusepowered/m2/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 602
    .end local v6    # "vastResource":Lcom/fusepowered/m2/mobileads/VastResource;
    .end local v11    # "height":Ljava/lang/Integer;
    .end local v13    # "iconXmlManager":Lcom/fusepowered/m2/mobileads/VastIconXmlManager;
    .end local v16    # "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .end local v17    # "width":Ljava/lang/Integer;
    .end local v18    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/m2/mobileads/VastIconXmlManager;>;"
    :goto_1
    return-object v1

    .line 569
    .restart local v16    # "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .restart local v18    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/m2/mobileads/VastIconXmlManager;>;"
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 602
    .end local v16    # "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .end local v18    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/m2/mobileads/VastIconXmlManager;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;>;"
    const-string v12, "managers cannot be null"

    invoke-static {p1, v12}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 421
    .local v10, "mediaXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;>;"
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 422
    .local v2, "bestMediaFitness":D
    const/4 v0, 0x0

    .line 424
    .local v0, "bestMediaFileUrl":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 425
    .local v11, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 426
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;

    .line 428
    .local v9, "mediaXmlManager":Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;
    invoke-virtual {v9}, Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;->getType()Ljava/lang/String;

    move-result-object v6

    .line 429
    .local v6, "mediaType":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;->getMediaUrl()Ljava/lang/String;

    move-result-object v7

    .line 430
    .local v7, "mediaUrl":Ljava/lang/String;
    sget-object v12, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->VIDEO_MIME_TYPES:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v7, :cond_2

    .line 431
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {v9}, Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v8

    .line 436
    .local v8, "mediaWidth":Ljava/lang/Integer;
    invoke-virtual {v9}, Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    .line 437
    .local v1, "mediaHeight":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_0

    .line 441
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v4

    .line 442
    .local v4, "mediaFitness":D
    cmpg-double v12, v4, v2

    if-gez v12, :cond_0

    .line 443
    move-wide v2, v4

    .line 444
    move-object v0, v7

    goto :goto_0

    .line 448
    .end local v1    # "mediaHeight":Ljava/lang/Integer;
    .end local v4    # "mediaFitness":D
    .end local v6    # "mediaType":Ljava/lang/String;
    .end local v7    # "mediaUrl":Ljava/lang/String;
    .end local v8    # "mediaWidth":Ljava/lang/Integer;
    .end local v9    # "mediaXmlManager":Lcom/fusepowered/m2/mobileads/VastMediaXmlManager;
    :cond_3
    return-object v0
.end method

.method getScaledDimensions(II)Landroid/graphics/Point;
    .locals 13
    .param p1, "widthDp"    # I
    .param p2, "heightDp"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 523
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 524
    .local v0, "defaultPoint":Landroid/graphics/Point;
    iget-object v11, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 525
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 526
    .local v9, "x":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 529
    .local v10, "y":I
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 530
    .local v6, "screenWidth":I
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 532
    .local v5, "screenHeight":I
    int-to-float v11, p1

    iget-object v12, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/fusepowered/m2/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v7

    .line 533
    .local v7, "widthPx":I
    int-to-float v11, p2

    iget-object v12, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/fusepowered/m2/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 536
    .local v2, "heightPx":I
    if-gt v7, v6, :cond_1

    if-gt v2, v5, :cond_1

    .line 559
    .end local v0    # "defaultPoint":Landroid/graphics/Point;
    :cond_0
    :goto_0
    return-object v0

    .line 540
    .restart local v0    # "defaultPoint":Landroid/graphics/Point;
    :cond_1
    int-to-float v11, v7

    int-to-float v12, v6

    div-float v8, v11, v12

    .line 541
    .local v8, "widthRatio":F
    int-to-float v11, v2

    int-to-float v12, v5

    div-float v3, v11, v12

    .line 543
    .local v3, "heightRatio":F
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 544
    .local v4, "point":Landroid/graphics/Point;
    cmpl-float v11, v8, v3

    if-ltz v11, :cond_2

    .line 545
    add-int/lit8 v11, v6, -0x10

    iput v11, v4, Landroid/graphics/Point;->x:I

    .line 546
    int-to-float v11, v2

    div-float/2addr v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x10

    iput v11, v4, Landroid/graphics/Point;->y:I

    .line 552
    :goto_1
    iget v11, v4, Landroid/graphics/Point;->x:I

    if-ltz v11, :cond_0

    iget v11, v4, Landroid/graphics/Point;->y:I

    if-ltz v11, :cond_0

    .line 556
    iget v11, v4, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/fusepowered/m2/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v11

    iput v11, v4, Landroid/graphics/Point;->x:I

    .line 557
    iget v11, v4, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/fusepowered/m2/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v11

    iput v11, v4, Landroid/graphics/Point;->y:I

    move-object v0, v4

    .line 559
    goto :goto_0

    .line 548
    :cond_2
    int-to-float v11, v7

    div-float/2addr v11, v3

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x10

    iput v11, v4, Landroid/graphics/Point;->x:I

    .line 549
    add-int/lit8 v11, v5, -0x10

    iput v11, v4, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    .line 121
    .local v0, "listener":Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    if-eqz v0, :cond_0

    .line 122
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V
    .locals 2
    .param p1, "vastVideoConfiguration"    # Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 112
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    .line 113
    .local v0, "listener":Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->onPostExecute(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    return-void
.end method

.method setTimesFollowedVastRedirect(I)V
    .locals 0
    .param p1, "timesFollowedVastRedirect"    # I
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 667
    iput p1, p0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    .line 668
    return-void
.end method
