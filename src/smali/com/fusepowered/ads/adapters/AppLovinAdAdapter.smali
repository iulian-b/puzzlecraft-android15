.class public Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "AppLovinAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;
.implements Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;
.implements Lcom/fusepowered/al/sdk/AppLovinAdClickListener;
.implements Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;


# static fields
.field public static final INSTANCE_ID:Ljava/lang/String; = "instance_id"

.field private static final TAG:Ljava/lang/String; = "AppLovinAdAdapter"

.field private static instances:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public static final name:Ljava/lang/String; = "AppLovin"


# instance fields
.field private ad:Lcom/fusepowered/al/sdk/AppLovinAd;

.field protected appLovin:Lcom/fusepowered/al/sdk/AppLovinSdk;

.field private hasAdAvailabilityBeenReported:Z

.field private initialized:Z

.field lastActivity:Landroid/app/Activity;

.field private rewardedAd:Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

.field private sdkKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->instances:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 48
    sget-object v0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->instances:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static getInstance(I)Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 263
    sget-object v0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->instances:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    return-object v0
.end method


# virtual methods
.method public adClicked(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 235
    return-void
.end method

.method public adDisplayed(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 223
    return-void
.end method

.method public adHidden(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->ad:Lcom/fusepowered/al/sdk/AppLovinAd;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 229
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 230
    return-void
.end method

.method public adReceived(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->isVideo:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/fusepowered/al/sdk/AppLovinAd;->isVideoAd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    const-string v0, "AppLovinAdAdapter"

    const-string v1, "Provider is video but got static ad"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 178
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->ad:Lcom/fusepowered/al/sdk/AppLovinAd;

    .line 182
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->hasAdAvailabilityBeenReported:Z

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 184
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method

.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 165
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
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->isAdAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 137
    const/4 v1, 0x0

    .line 155
    :goto_0
    return v1

    .line 140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->lastActivity:Landroid/app/Activity;

    const-class v2, Lcom/fusepowered/ads/adapters/ALActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "instance_id"

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->lastActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 155
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public failedToReceiveAd(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->ad:Lcom/fusepowered/al/sdk/AppLovinAd;

    .line 191
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_0

    .line 192
    const-string v0, "AppLovinAdAdapter"

    const-string v1, "No Fill"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 203
    return-void

    .line 194
    :cond_0
    const/16 v0, -0x66

    if-eq p1, v0, :cond_1

    const/16 v0, -0x1f4

    if-ne p1, v0, :cond_2

    .line 195
    :cond_1
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_TIMED_OUT:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 196
    const-string v0, "AppLovinAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNDEFINED:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 199
    const-string v0, "AppLovinAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAd()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->rewardedAd:Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

    .line 271
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->ad:Lcom/fusepowered/al/sdk/AppLovinAd;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "AppLovin"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->lastActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->isRewarded:Z

    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->rewardedAd:Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->rewardedAd:Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v2}, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 125
    .local v0, "isAvailable":Z
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->hasAdAvailabilityBeenReported:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 126
    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 127
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 122
    .end local v0    # "isAvailable":Z
    :cond_3
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->ad:Lcom/fusepowered/al/sdk/AppLovinAd;

    if-eqz v2, :cond_4

    move v0, v1

    .restart local v0    # "isAvailable":Z
    :cond_4
    goto :goto_1
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->lastActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->sdkKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 71
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 70
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->isCapableOfLoading()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->sdkKey:Ljava/lang/String;

    sput-object v2, Lcom/fusepowered/al/sdk/AppLovinSdkUtils;->sdkKey:Ljava/lang/String;

    .line 84
    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->initialized:Z

    if-nez v2, :cond_2

    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->initialized:Z

    .line 86
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->lastActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/fusepowered/al/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 87
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->lastActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/fusepowered/al/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/fusepowered/al/sdk/AppLovinSdk;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->appLovin:Lcom/fusepowered/al/sdk/AppLovinSdk;

    .line 89
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->isRewarded:Z

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->lastActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->create(Landroid/content/Context;)Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->rewardedAd:Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

    .line 93
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->rewardedAd:Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v1, p0}, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;)V

    .line 99
    :goto_1
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->hasAdAvailabilityBeenReported:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->isAdAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 101
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->appLovin:Lcom/fusepowered/al/sdk/AppLovinSdk;

    invoke-virtual {v1}, Lcom/fusepowered/al/sdk/AppLovinSdk;->getAdService()Lcom/fusepowered/al/sdk/AppLovinAdService;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/al/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    invoke-interface {v1, v2, p0}, Lcom/fusepowered/al/sdk/AppLovinAdService;->loadNextAd(Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;)V

    goto :goto_1
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 170
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
    .line 53
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v1, "applovin_sdk_key"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "sdkKey":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 60
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->sdkKey:Ljava/lang/String;

    .line 62
    :cond_2
    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->lastActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public userDeclinedToViewAd(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 259
    const-string v0, "AppLovinAdAdapter"

    const-string v1, "No Reward - User Declined"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public userOverQuota(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 244
    const-string v0, "AppLovinAdAdapter"

    const-string v1, "No Reward - Over Quota"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public userRewardRejected(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 249
    const-string v0, "AppLovinAdAdapter"

    const-string v1, "No Reward - Rejected, possibly fraudulent"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public userRewardVerified(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 0
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 240
    return-void
.end method

.method public validationRequestFailed(Lcom/fusepowered/al/sdk/AppLovinAd;I)V
    .locals 2
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;
    .param p2, "i"    # I

    .prologue
    .line 254
    const-string v0, "AppLovinAdAdapter"

    const-string v1, "No Reward - Validation Failed"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public videoPlaybackBegan(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 208
    return-void
.end method

.method public videoPlaybackEnded(Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;
    .param p2, "v"    # D
    .param p4, "completed"    # Z

    .prologue
    .line 212
    if-eqz p4, :cond_0

    .line 213
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 214
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 218
    :cond_0
    return-void
.end method
