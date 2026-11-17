.class public Lcom/fusepowered/ads/adapters/InMobiAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "InMobiAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/im/monetization/IMInterstitialListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "InMobiAdAdapter"

.field public static final name:Ljava/lang/String; = "InMobi"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppId:Ljava/lang/String;

.field private mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

.field private mStartDisplayTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 32
    return-void
.end method

.method private checkRewarded()V
    .locals 8

    .prologue
    .line 182
    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->isRewarded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mStartDisplayTime:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mStartDisplayTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 184
    .local v2, "duration":J
    iget v1, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->rewardTimer:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 185
    .local v0, "displayedLongEnoughForReward":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 189
    .end local v0    # "displayedLongEnoughForReward":Z
    .end local v2    # "duration":J
    :cond_0
    return-void

    .line 184
    .restart local v2    # "duration":J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public displayAd()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/im/monetization/IMInterstitial;->getState()Lcom/fusepowered/im/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/im/monetization/IMInterstitial$State;->READY:Lcom/fusepowered/im/monetization/IMInterstitial$State;

    if-eq v0, v1, :cond_1

    .line 102
    :cond_0
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 103
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/im/monetization/IMInterstitial;->show()V

    .line 107
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "InMobi"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    invoke-virtual {v1}, Lcom/fusepowered/im/monetization/IMInterstitial;->getState()Lcom/fusepowered/im/monetization/IMInterstitial$State;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/im/monetization/IMInterstitial$State;->READY:Lcom/fusepowered/im/monetization/IMInterstitial$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public loadAd()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 57
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mAppId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_2

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 81
    :cond_1
    :goto_0
    return v1

    .line 61
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 62
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    if-nez v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/fusepowered/im/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 64
    new-instance v2, Lcom/fusepowered/im/monetization/IMInterstitial;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mAppId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/fusepowered/im/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    .line 65
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    invoke-virtual {v2, p0}, Lcom/fusepowered/im/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/fusepowered/im/monetization/IMInterstitialListener;)V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "tp"

    const-string v3, "c_fuse"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "tp-ver"

    const-string v3, "2.2.0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    invoke-virtual {v2, v0}, Lcom/fusepowered/im/monetization/IMInterstitial;->setRequestParams(Ljava/util/Map;)V

    .line 73
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    invoke-virtual {v2}, Lcom/fusepowered/im/monetization/IMInterstitial;->getState()Lcom/fusepowered/im/monetization/IMInterstitial$State;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/im/monetization/IMInterstitial$State;->LOADING:Lcom/fusepowered/im/monetization/IMInterstitial$State;

    if-eq v2, v3, :cond_1

    .line 77
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/im/monetization/IMInterstitial;->setAppId(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mInterstitial:Lcom/fusepowered/im/monetization/IMInterstitial;

    invoke-virtual {v2}, Lcom/fusepowered/im/monetization/IMInterstitial;->loadInterstitial()V

    goto :goto_0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public onDismissInterstitialScreen(Lcom/fusepowered/im/monetization/IMInterstitial;)V
    .locals 1
    .param p1, "imInterstitial"    # Lcom/fusepowered/im/monetization/IMInterstitial;

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->checkRewarded()V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 165
    :cond_1
    return-void
.end method

.method public onInterstitialFailed(Lcom/fusepowered/im/monetization/IMInterstitial;Lcom/fusepowered/im/monetization/IMErrorCode;)V
    .locals 1
    .param p1, "imInterstitial"    # Lcom/fusepowered/im/monetization/IMInterstitial;
    .param p2, "imErrorCode"    # Lcom/fusepowered/im/monetization/IMErrorCode;

    .prologue
    .line 127
    sget-object v0, Lcom/fusepowered/im/monetization/IMErrorCode;->NO_FILL:Lcom/fusepowered/im/monetization/IMErrorCode;

    if-ne p2, v0, :cond_1

    .line 128
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 137
    :cond_0
    return-void

    .line 129
    :cond_1
    sget-object v0, Lcom/fusepowered/im/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/fusepowered/im/monetization/IMErrorCode;

    if-ne p2, v0, :cond_2

    .line 130
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    goto :goto_0

    .line 132
    :cond_2
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNDEFINED:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    goto :goto_0
.end method

.method public onInterstitialInteraction(Lcom/fusepowered/im/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 1
    .param p1, "imInterstitial"    # Lcom/fusepowered/im/monetization/IMInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/im/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "stringStringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/fusepowered/im/monetization/IMInterstitial;)V
    .locals 1
    .param p1, "imInterstitial"    # Lcom/fusepowered/im/monetization/IMInterstitial;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/fusepowered/im/monetization/IMInterstitial;)V
    .locals 1
    .param p1, "imInterstitial"    # Lcom/fusepowered/im/monetization/IMInterstitial;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onWillLeaveApp(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 37
    const-string v1, "inmobi_property_id"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    .local v0, "appId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 39
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mAppId:Ljava/lang/String;

    .line 43
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 44
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mActivity:Landroid/app/Activity;

    .line 46
    :cond_1
    return-void
.end method

.method public onShowInterstitialScreen(Lcom/fusepowered/im/monetization/IMInterstitial;)V
    .locals 1
    .param p1, "imInterstitial"    # Lcom/fusepowered/im/monetization/IMInterstitial;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/InMobiAdAdapter;->mStartDisplayTime:Ljava/util/Date;

    .line 155
    :cond_1
    return-void
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x4
        0x5
        0x2
    .end array-data
.end method
