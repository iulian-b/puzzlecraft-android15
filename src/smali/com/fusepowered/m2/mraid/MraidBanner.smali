.class Lcom/fusepowered/m2/mraid/MraidBanner;
.super Lcom/fusepowered/m2/mobileads/CustomEventBanner;
.source "MraidBanner.java"


# instance fields
.field private mBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDebugListener:Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMraidController:Lcom/fusepowered/m2/mraid/MraidController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/mraid/MraidBanner;)Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mraid/MraidBanner;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-object v0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customEventBannerListener"    # Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 36
    invoke-direct {p0, p4}, Lcom/fusepowered/m2/mraid/MraidBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    const-string v3, "Html-Response-Body"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, "htmlData":Ljava/lang/String;
    :try_start_0
    const-string v3, "mopub-intent-ad-report"

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/common/AdReport;

    .line 45
    .local v0, "adReport":Lcom/fusepowered/m2/common/AdReport;
    sget-object v3, Lcom/fusepowered/m2/mraid/PlacementType;->INLINE:Lcom/fusepowered/m2/mraid/PlacementType;

    invoke-static {p1, v0, v3}, Lcom/fusepowered/m2/mobileads/factories/MraidControllerFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Lcom/fusepowered/m2/mraid/PlacementType;)Lcom/fusepowered/m2/mraid/MraidController;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    iget-object v3, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    iget-object v4, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mDebugListener:Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;

    invoke-virtual {v3, v4}, Lcom/fusepowered/m2/mraid/MraidController;->setDebugListener(Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;)V

    .line 54
    iget-object v3, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    new-instance v4, Lcom/fusepowered/m2/mraid/MraidBanner$1;

    invoke-direct {v4, p0}, Lcom/fusepowered/m2/mraid/MraidBanner$1;-><init>(Lcom/fusepowered/m2/mraid/MraidBanner;)V

    invoke-virtual {v3, v4}, Lcom/fusepowered/m2/mraid/MraidController;->setMraidListener(Lcom/fusepowered/m2/mraid/MraidController$MraidListener;)V

    .line 83
    iget-object v3, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-virtual {v3, v2}, Lcom/fusepowered/m2/mraid/MraidController;->loadContent(Ljava/lang/String;)V

    .line 84
    .end local v0    # "adReport":Lcom/fusepowered/m2/common/AdReport;
    .end local v2    # "htmlData":Ljava/lang/String;
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v4, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-interface {v3, v4}, Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 47
    .restart local v2    # "htmlData":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "MRAID banner creating failed:"

    invoke-static {v3, v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iget-object v3, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v4, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-interface {v3, v4}, Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mraid/MraidController;->setMraidListener(Lcom/fusepowered/m2/mraid/MraidController$MraidListener;)V

    .line 90
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mraid/MraidController;->destroy()V

    .line 92
    :cond_0
    return-void
.end method

.method public setDebugListener(Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;)V
    .locals 1
    .param p1, "debugListener"    # Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mDebugListener:Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;

    .line 101
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBanner;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mraid/MraidController;->setDebugListener(Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;)V

    .line 104
    :cond_0
    return-void
.end method
