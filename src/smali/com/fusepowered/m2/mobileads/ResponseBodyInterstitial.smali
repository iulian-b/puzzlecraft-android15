.class public abstract Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;
.super Lcom/fusepowered/m2/mobileads/CustomEventInterstitial;
.source "ResponseBodyInterstitial.java"


# instance fields
.field protected mAdReport:Lcom/fusepowered/m2/common/AdReport;

.field protected mBroadcastIdentifier:J

.field private mBroadcastReceiver:Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial;-><init>()V

    return-void
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
    .line 72
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract extractExtras(Ljava/util/Map;)V
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
.end method

.method public loadInterstitial(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventInterstitialListener"    # Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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
    .line 32
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0, p4}, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {p0, p4}, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->extractExtras(Ljava/util/Map;)V

    .line 43
    :try_start_0
    const-string v2, "mopub-intent-ad-report"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m2/common/AdReport;

    iput-object v2, p0, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->mAdReport:Lcom/fusepowered/m2/common/AdReport;

    .line 44
    const-string v2, "broadcastIdentifier"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 45
    .local v0, "boxedBroadcastId":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 46
    const-string v2, "Broadcast Identifier was not set in localExtras"

    invoke-static {v2}, Lcom/fusepowered/m2/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 47
    sget-object v2, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-interface {p2, v2}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "boxedBroadcastId":Ljava/lang/Long;
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v2, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-interface {p2, v2}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 50
    .restart local v0    # "boxedBroadcastId":Ljava/lang/Long;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->mBroadcastIdentifier:J
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    new-instance v2, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;

    iget-wide v4, p0, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->mBroadcastIdentifier:J

    invoke-direct {v2, p2, v4, v5}, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;-><init>(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;J)V

    iput-object v2, p0, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;

    .line 59
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;

    invoke-virtual {v2, p1}, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->preRenderHtml(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    goto :goto_0

    .line 51
    .end local v0    # "boxedBroadcastId":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "LocalExtras contained an incorrect type."

    invoke-static {v2}, Lcom/fusepowered/m2/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 53
    sget-object v2, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-interface {p2, v2}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInvalidate()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;->unregister()V

    .line 69
    :cond_0
    return-void
.end method

.method protected abstract preRenderHtml(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
.end method

.method public abstract showInterstitial()V
.end method
