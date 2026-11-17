.class public Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "AdColonyAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/ac/AdColonyAdListener;
.implements Lcom/fusepowered/ac/AdColonyAdAvailabilityListener;
.implements Lcom/fusepowered/ac/AdColonyV4VCListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdColonyAdAdapter"

.field private static initialized:Z = false

.field public static final name:Ljava/lang/String; = "AdColony"

.field private static rewardedInstance:Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;


# instance fields
.field ad:Lcom/fusepowered/ac/AdColonyVideoAd;

.field adColonyId:Ljava/lang/String;

.field adColonyZone:Ljava/lang/String;

.field adcolonyZones:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private hasAdAvailabilityBeenReported:Z

.field lastActivity:Landroid/app/Activity;

.field rewardedAd:Lcom/fusepowered/ac/AdColonyV4VCAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->initialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 45
    :try_start_0
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedInstance:Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;

    if-nez v0, :cond_1

    .line 47
    sput-object p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedInstance:Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;

    .line 48
    invoke-static {p0}, Lcom/fusepowered/ac/AdColony;->addV4VCListener(Lcom/fusepowered/ac/AdColonyV4VCListener;)V

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {p0}, Lcom/fusepowered/ac/AdColony;->addAdAvailabilityListener(Lcom/fusepowered/ac/AdColonyAdAvailabilityListener;)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->handler:Landroid/os/Handler;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 59
    return-void

    .line 50
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Another AdColonyAdAdapter has already claimed the rewarded callbacks"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 200
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0, v1}, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->prepareAd(Z)V

    .line 174
    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->isRewarded:Z

    if-eqz v2, :cond_4

    .line 175
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedAd:Lcom/fusepowered/ac/AdColonyV4VCAd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedAd:Lcom/fusepowered/ac/AdColonyV4VCAd;

    invoke-virtual {v2}, Lcom/fusepowered/ac/AdColonyV4VCAd;->isReady()Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedAd:Lcom/fusepowered/ac/AdColonyV4VCAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedAd:Lcom/fusepowered/ac/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->noFill()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    :goto_0
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    move v0, v1

    .line 188
    :goto_1
    return v0

    .line 176
    :cond_2
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNDEFINED:Lcom/fusepowered/util/FuseProviderError;

    goto :goto_0

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedAd:Lcom/fusepowered/ac/AdColonyV4VCAd;

    invoke-virtual {v1}, Lcom/fusepowered/ac/AdColonyV4VCAd;->show()V

    goto :goto_1

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->ad:Lcom/fusepowered/ac/AdColonyVideoAd;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->ad:Lcom/fusepowered/ac/AdColonyVideoAd;

    invoke-virtual {v2}, Lcom/fusepowered/ac/AdColonyVideoAd;->isReady()Z

    move-result v2

    if-nez v2, :cond_8

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->ad:Lcom/fusepowered/ac/AdColonyVideoAd;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->ad:Lcom/fusepowered/ac/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyVideoAd;->noFill()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    :goto_2
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    move v0, v1

    .line 185
    goto :goto_1

    .line 184
    :cond_7
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNDEFINED:Lcom/fusepowered/util/FuseProviderError;

    goto :goto_2

    .line 187
    :cond_8
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->ad:Lcom/fusepowered/ac/AdColonyVideoAd;

    invoke-virtual {v1}, Lcom/fusepowered/ac/AdColonyVideoAd;->show()V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "AdColony"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 2

    .prologue
    .line 152
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->prepareAd(Z)V

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "ready":Z
    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->isRewarded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedAd:Lcom/fusepowered/ac/AdColonyV4VCAd;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedAd:Lcom/fusepowered/ac/AdColonyV4VCAd;

    invoke-virtual {v1}, Lcom/fusepowered/ac/AdColonyV4VCAd;->isReady()Z

    move-result v0

    .line 162
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->hasAdAvailabilityBeenReported:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 164
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 167
    :cond_1
    return v0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->ad:Lcom/fusepowered/ac/AdColonyVideoAd;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->ad:Lcom/fusepowered/ac/AdColonyVideoAd;

    invoke-virtual {v1}, Lcom/fusepowered/ac/AdColonyVideoAd;->isReady()Z

    move-result v0

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyZone:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyZone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->lastActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 97
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 96
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 103
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyZone:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyZone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->lastActivity:Landroid/app/Activity;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 123
    :cond_1
    :goto_0
    return v0

    .line 107
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 109
    :try_start_0
    sget-boolean v2, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->initialized:Z

    if-nez v2, :cond_3

    .line 110
    const/4 v2, 0x1

    sput-boolean v2, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->initialized:Z

    .line 111
    const-string v2, "AdColonyAdAdapter"

    const-string v3, "Calling AdColony.configure()"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->lastActivity:Landroid/app/Activity;

    const-string v3, "store:google"

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyId:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adcolonyZones:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/fusepowered/ac/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->isAdAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter$1;

    invoke-direct {v2, p0}, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter$1;-><init>(Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 205
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

.method public onAdColonyAdAttemptFinished(Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/ac/AdColonyAd;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/fusepowered/ac/AdColonyAd;->shown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 213
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 219
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 221
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->ad:Lcom/fusepowered/ac/AdColonyVideoAd;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 224
    return-void

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdSkipped(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method

.method public onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V
    .locals 3
    .param p1, "available"    # Z
    .param p2, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 236
    if-eqz p1, :cond_1

    .line 237
    const-string v0, "AdColonyAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available ad in zone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyZone:Ljava/lang/String;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 245
    :cond_0
    return-void

    .line 239
    :cond_1
    const-string v0, "AdColonyAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad no longer available in zone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdColonyAdStarted(Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/ac/AdColonyAd;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 232
    :cond_0
    return-void
.end method

.method public onAdColonyV4VCReward(Lcom/fusepowered/ac/AdColonyV4VCReward;)V
    .locals 0
    .param p1, "adColonyV4VCReward"    # Lcom/fusepowered/ac/AdColonyV4VCReward;

    .prologue
    .line 250
    return-void
.end method

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 6
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
    .line 63
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v3, "adcolony_app_id"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "appId":Ljava/lang/String;
    const-string v3, "adcolony_zone_id"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    .local v2, "zoneId":Ljava/lang/String;
    const-string v3, "adcolony_zone_ids"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "allZoneIds":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 72
    iput-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyId:Ljava/lang/String;

    .line 75
    :cond_1
    if-eqz v2, :cond_2

    .line 76
    iput-object v2, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyZone:Ljava/lang/String;

    .line 79
    :cond_2
    if-eqz v0, :cond_3

    .line 80
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adcolonyZones:Ljava/lang/String;

    .line 83
    :cond_3
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->lastActivity:Landroid/app/Activity;

    if-eq p1, v3, :cond_4

    .line 84
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->lastActivity:Landroid/app/Activity;

    .line 85
    sget-boolean v3, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->initialized:Z

    if-eqz v3, :cond_4

    .line 86
    invoke-static {p1}, Lcom/fusepowered/ac/AdColony;->resume(Landroid/app/Activity;)V

    .line 90
    :cond_4
    const-string v3, "AdColonyAdAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is the ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and this is the zone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prepareAd(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 127
    sget-boolean v0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->initialized:Z

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedAd:Lcom/fusepowered/ac/AdColonyV4VCAd;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 133
    :cond_2
    const-string v0, "AdColonyAdAdapter"

    const-string v1, "Initializing rewardedAd"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/fusepowered/ac/AdColonyV4VCAd;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->withListener(Lcom/fusepowered/ac/AdColonyAdListener;)Lcom/fusepowered/ac/AdColonyV4VCAd;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->rewardedAd:Lcom/fusepowered/ac/AdColonyV4VCAd;

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->ad:Lcom/fusepowered/ac/AdColonyVideoAd;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    .line 138
    :cond_4
    const-string v0, "AdColonyAdAdapter"

    const-string v1, "Initializing ad"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/fusepowered/ac/AdColonyVideoAd;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->adColonyZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/AdColonyVideoAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/AdColonyVideoAd;->withListener(Lcom/fusepowered/ac/AdColonyAdListener;)Lcom/fusepowered/ac/AdColonyVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->ad:Lcom/fusepowered/ac/AdColonyVideoAd;

    goto :goto_0
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 195
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
