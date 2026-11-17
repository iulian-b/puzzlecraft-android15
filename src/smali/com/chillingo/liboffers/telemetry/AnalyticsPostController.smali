.class public Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;
.super Ljava/lang/Object;
.source "AnalyticsPostController.java"

# interfaces
.implements Lcom/chillingo/liboffers/session/OfferConfigUpdateObserver;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field bigPosterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;",
            ">;"
        }
    .end annotation
.end field

.field conversionAnalyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
        value = Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;
    .end annotation
.end field

.field converstionController:Lcom/chillingo/liboffers/http/ConversionController;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
        value = Lcom/chillingo/liboffers/http/ConversionControllerImpl;
    .end annotation
.end field

.field currentOfferConfig:Lcom/chillingo/liboffers/model/OfferConfig;

.field googleAnalyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
        value = Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;
    .end annotation
.end field

.field posterProxy:Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
    .end annotation
.end field

.field rootContext:Landroid/content/Context;
    .annotation build Lcom/googlecode/androidannotations/annotations/RootContext;
    .end annotation
.end field

.field uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createGoogleAnalyticsInstance()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 8

    .prologue
    .line 78
    :try_start_0
    const-string v4, "com.google.android.gms.analytics.GoogleAnalytics"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 80
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->rootContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/GoogleAnalytics;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 82
    .local v2, "ga":Lcom/google/android/gms/analytics/GoogleAnalytics;
    return-object v2

    .line 84
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ga":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lcom/chillingo/liboffers/utils/ChillingoDependencyException;

    const-string v5, "Failed to setup GoogleAnalytics class. Please ensure GoogleAnalytics from the Google Player Services library is being included in the build"

    invoke-direct {v4, v5, v1}, Lcom/chillingo/liboffers/utils/ChillingoDependencyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 87
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lcom/chillingo/liboffers/utils/ChillingoDependencyException;

    const-string v5, "Failed to setup GoogleAnalytics class. Please ensure GoogleAnalytics from the Google Player Services library is being included in the build"

    invoke-direct {v4, v5, v1}, Lcom/chillingo/liboffers/utils/ChillingoDependencyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 90
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/chillingo/liboffers/utils/ChillingoDependencyException;

    const-string v5, "Failed to setup GoogleAnalytics class. Please ensure GoogleAnalytics from the Google Player Services library is being included in the build"

    invoke-direct {v4, v5, v1}, Lcom/chillingo/liboffers/utils/ChillingoDependencyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 93
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lcom/chillingo/liboffers/utils/ChillingoDependencyException;

    const-string v5, "Failed to setup GoogleAnalytics class. Please ensure GoogleAnalytics from the Google Player Services library is being included in the build"

    invoke-direct {v4, v5, v1}, Lcom/chillingo/liboffers/utils/ChillingoDependencyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method afterInject()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterInject;
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->bigPosterList:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->bigPosterList:Ljava/util/List;

    iget-object v1, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->googleAnalyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->bigPosterList:Ljava/util/List;

    iget-object v1, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->conversionAnalyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->posterProxy:Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->setPosterImpls(Ljava/util/List;)V

    .line 68
    return-void
.end method

.method checkGoogleAnalyticsAvailability()V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterInject;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->createGoogleAnalyticsInstance()Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 73
    return-void
.end method

.method public getAnalyticsPoster()Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->posterProxy:Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;

    return-object v0
.end method

.method public getOfferGuiTelemetryHandler()Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->posterProxy:Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;

    return-object v0
.end method

.method public offerConfigUpdated(Lcom/chillingo/liboffers/model/OfferConfig;)V
    .locals 8
    .param p1, "offerConfig"    # Lcom/chillingo/liboffers/model/OfferConfig;

    .prologue
    .line 111
    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->currentOfferConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->currentOfferConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v5}, Lcom/chillingo/liboffers/model/OfferConfig;->getTelemetryStreams()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getTelemetryStreams()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->currentOfferConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->bigPosterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v3, "supportedList":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;>;"
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AnalyticsPostController - new telemetry streams from OfferConfig ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getTelemetryStreams()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->bigPosterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 121
    .local v2, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v2, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->isActivatedByOfferConfig(Lcom/chillingo/liboffers/model/OfferConfig;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    instance-of v5, v2, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;

    if-eqz v5, :cond_2

    .line 127
    check-cast v2, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;

    .end local v2    # "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->converstionController:Lcom/chillingo/liboffers/http/ConversionController;

    iget-object v6, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->posterProxy:Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;

    invoke-virtual {v2, v5, v6}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->init(Lcom/chillingo/liboffers/http/ConversionController;Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;)V

    goto :goto_0

    .line 129
    .restart local v2    # "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    :cond_2
    instance-of v5, v2, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;

    if-eqz v5, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->createGoogleAnalyticsInstance()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 133
    .local v0, "ga":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :try_start_0
    check-cast v2, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;

    .end local v2    # "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->currentOfferConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    iget-object v6, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->rootContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v6, v0}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->init(Lcom/chillingo/liboffers/model/OfferConfig;Landroid/content/Context;Lcom/google/android/gms/analytics/GoogleAnalytics;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v4

    .line 136
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Failed to initialise GoogleAnalyticsPoster"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 143
    .end local v0    # "ga":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->posterProxy:Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;

    invoke-virtual {v5, v3}, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->setPosterImpls(Ljava/util/List;)V

    .line 146
    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->posterProxy:Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;

    invoke-virtual {v5}, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->logAdvertisingIdAvailabilityEvent()V

    .line 152
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "supportedList":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;>;"
    :goto_1
    return-void

    .line 150
    :cond_4
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;->currentOfferConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    goto :goto_1
.end method
