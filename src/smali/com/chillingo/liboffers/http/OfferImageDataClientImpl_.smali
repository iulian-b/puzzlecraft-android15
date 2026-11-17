.class public final Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;
.super Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;
.source "OfferImageDataClientImpl_.java"


# instance fields
.field private context_:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->context_:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->init_()V

    .line 25
    return-void
.end method

.method static synthetic access$001(Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;Lcom/chillingo/liboffers/model/Offer;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;
    .param p1, "x1"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "x2"    # Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;->downloadImageDataForOffer(Lcom/chillingo/liboffers/model/Offer;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;)V

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;

    invoke-direct {v0, p0}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private init_()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->context_:Landroid/content/Context;

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->context:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public afterSetContentView_()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 31
    :cond_0
    return-void
.end method

.method public downloadImageDataForOffer(Lcom/chillingo/liboffers/model/Offer;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;)V
    .locals 1
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "resultHandler"    # Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;

    .prologue
    .line 61
    new-instance v0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_$1;-><init>(Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;Lcom/chillingo/liboffers/model/Offer;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 39
    .local v0, "activity_":Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public rebind(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->context_:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->init_()V

    .line 57
    return-void
.end method
