.class Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;
.super Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;
.source "VastVideoInterstitial.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;


# instance fields
.field private mCustomEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private mVastManager:Lcom/fusepowered/m2/mobileads/VastManager;

.field private mVastResponse:Ljava/lang/String;

.field private mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    .line 18
    return-void
.end method

.method getVastResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    return-object v0
.end method

.method public onInvalidate()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/mobileads/VastManager;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/mobileads/VastManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastManager;->cancel()V

    .line 44
    :cond_0
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->onInvalidate()V

    .line 45
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V
    .locals 2
    .param p1, "vastVideoConfiguration"    # Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    .line 59
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    goto :goto_0
.end method

.method protected preRenderHtml(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 3
    .param p1, "customEventInterstitialListener"    # Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 24
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/m2/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;->create(Landroid/content/Context;)Lcom/fusepowered/m2/mobileads/VastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/mobileads/VastManager;

    .line 30
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/mobileads/VastManager;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, v2}, Lcom/fusepowered/m2/mobileads/VastManager;->prepareVastVideoConfiguration(Ljava/lang/String;Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method setVastManager(Lcom/fusepowered/m2/mobileads/VastManager;)V
    .locals 0
    .param p1, "vastManager"    # Lcom/fusepowered/m2/mobileads/VastManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/mobileads/VastManager;

    .line 71
    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    iget-wide v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoInterstitial;->mBroadcastIdentifier:J

    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->startVast(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;J)V

    .line 36
    return-void
.end method
