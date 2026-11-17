.class public final Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;
.super Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;
.source "GoogleAnalyticsPoster_.java"


# static fields
.field private static instance_:Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;


# instance fields
.field private context_:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->context_:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->init_()V

    .line 25
    return-void
.end method

.method static synthetic access$001(Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;

    .prologue
    .line 15
    invoke-super {p0}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logAdvertisingIdAvailabilityEvent()V

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->instance_:Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->instance_:Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;

    .line 55
    :cond_0
    sget-object v0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->instance_:Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;

    return-object v0
.end method

.method private init_()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/utils/UuidUtils_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/utils/UuidUtils_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    .line 49
    return-void
.end method


# virtual methods
.method public afterSetContentView_()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    check-cast v0, Lcom/chillingo/liboffers/utils/UuidUtils_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/utils/UuidUtils_;->afterSetContentView_()V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 40
    .local v0, "activity_":Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public logAdvertisingIdAvailabilityEvent()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_$1;

    invoke-direct {v0, p0}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_$1;-><init>(Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public rebind(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    return-void
.end method
