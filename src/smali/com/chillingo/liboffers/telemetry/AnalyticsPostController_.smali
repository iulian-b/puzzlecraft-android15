.class public final Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;
.super Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;
.source "AnalyticsPostController_.java"


# instance fields
.field private context_:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->init_()V

    .line 23
    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    new-instance v0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;

    invoke-direct {v0, p0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private init_()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->rootContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/utils/UuidUtils_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/utils/UuidUtils_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    .line 52
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->googleAnalyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 53
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/http/ConversionControllerImpl_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/http/ConversionControllerImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->converstionController:Lcom/chillingo/liboffers/http/ConversionController;

    .line 54
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->conversionAnalyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 55
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->posterProxy:Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;

    .line 56
    invoke-virtual {p0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->checkGoogleAnalyticsAvailability()V

    .line 57
    invoke-virtual {p0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->afterInject()V

    .line 58
    return-void
.end method


# virtual methods
.method public afterSetContentView_()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    check-cast v0, Lcom/chillingo/liboffers/utils/UuidUtils_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/utils/UuidUtils_;->afterSetContentView_()V

    .line 30
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->googleAnalyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    check-cast v0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->afterSetContentView_()V

    .line 31
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->converstionController:Lcom/chillingo/liboffers/http/ConversionController;

    check-cast v0, Lcom/chillingo/liboffers/http/ConversionControllerImpl_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/http/ConversionControllerImpl_;->afterSetContentView_()V

    .line 32
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->conversionAnalyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    check-cast v0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->afterSetContentView_()V

    .line 33
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->posterProxy:Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;

    check-cast v0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy_;->afterSetContentView_()V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 42
    .local v0, "activity_":Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public rebind(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->context_:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPostController_;->init_()V

    .line 67
    return-void
.end method
