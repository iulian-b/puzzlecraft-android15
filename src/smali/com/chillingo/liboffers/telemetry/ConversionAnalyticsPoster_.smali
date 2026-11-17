.class public final Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;
.super Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;
.source "ConversionAnalyticsPoster_.java"


# static fields
.field private static instance_:Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;


# instance fields
.field private context_:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->context_:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->init_()V

    .line 27
    return-void
.end method

.method static synthetic access$001(Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;
    .param p1, "x1"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "x2"    # I

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->logAppstoreOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->logSessionStartEventWithData(Ljava/util/HashMap;)V

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->instance_:Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->instance_:Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

    .line 58
    :cond_0
    sget-object v0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->instance_:Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

    return-object v0
.end method

.method private init_()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->context_:Landroid/content/Context;

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->context:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/utils/UuidUtils_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/utils/UuidUtils_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    .line 52
    return-void
.end method


# virtual methods
.method public afterSetContentView_()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    check-cast v0, Lcom/chillingo/liboffers/utils/UuidUtils_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/utils/UuidUtils_;->afterSetContentView_()V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 42
    .local v0, "activity_":Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public logAppstoreOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 1
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$1;-><init>(Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;Lcom/chillingo/liboffers/model/Offer;I)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public logSessionStartEventWithData(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$2;

    invoke-direct {v0, p0, p1}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$2;-><init>(Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;Ljava/util/HashMap;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public rebind(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    return-void
.end method
