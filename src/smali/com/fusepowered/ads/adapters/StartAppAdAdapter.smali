.class public Lcom/fusepowered/ads/adapters/StartAppAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "StartAppAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/sa/android/publish/AdEventListener;
.implements Lcom/fusepowered/sa/android/publish/AdDisplayListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StartAppAdAdapter"

.field private static initialized:Z = false

.field public static final name:Ljava/lang/String; = "StartApp"


# instance fields
.field private activity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private devId:Ljava/lang/String;

.field private startAppAd:Lcom/fusepowered/sa/android/publish/StartAppAd;

.field private startDisplayTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->initialized:Z

    return-void
.end method

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


# virtual methods
.method public adClicked(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/sa/android/publish/Ad;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 136
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onWillLeaveApp(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 138
    :cond_0
    return-void
.end method

.method public adDisplayed(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/sa/android/publish/Ad;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startDisplayTime:Ljava/util/Date;

    .line 149
    :cond_1
    return-void
.end method

.method public adHidden(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 8
    .param p1, "ad"    # Lcom/fusepowered/sa/android/publish/Ad;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v1, :cond_1

    .line 155
    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->isRewarded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startDisplayTime:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 156
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startDisplayTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 157
    .local v2, "duration":J
    iget v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->rewardTimer:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 158
    .local v0, "displayedLongEnoughForReward":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 162
    .end local v0    # "displayedLongEnoughForReward":Z
    .end local v2    # "duration":J
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 164
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startDisplayTime:Ljava/util/Date;

    .line 165
    return-void

    .line 157
    .restart local v2    # "duration":J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 174
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
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 98
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startAppAd:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-virtual {v0, p0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->showAd(Lcom/fusepowered/sa/android/publish/AdDisplayListener;)Z

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAd()Lcom/fusepowered/sa/android/publish/StartAppAd;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startAppAd:Lcom/fusepowered/sa/android/publish/StartAppAd;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "StartApp"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startAppAd:Lcom/fusepowered/sa/android/publish/StartAppAd;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startAppAd:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->isReady()Z

    move-result v0

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->devId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->appId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 58
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 57
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->devId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->appId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->activity:Landroid/app/Activity;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 80
    :goto_0
    return v0

    .line 66
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 68
    :try_start_0
    sget-boolean v2, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->initialized:Z

    if-nez v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->devId:Ljava/lang/String;

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->appId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    const/4 v2, 0x1

    sput-boolean v2, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->initialized:Z

    .line 72
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startAppAd:Lcom/fusepowered/sa/android/publish/StartAppAd;

    if-nez v1, :cond_3

    .line 75
    new-instance v1, Lcom/fusepowered/sa/android/publish/StartAppAd;

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/fusepowered/sa/android/publish/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startAppAd:Lcom/fusepowered/sa/android/publish/StartAppAd;

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->startAppAd:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-virtual {v1, p0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->loadAd(Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    goto :goto_0

    .line 72
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
    .line 179
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

.method public onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/sa/android/publish/Ad;

    .prologue
    .line 116
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 117
    const-string v0, "StartAppAdAdapter"

    const-string v1, "Failed to load a Start App Ad"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/sa/android/publish/Ad;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 3
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
    .line 37
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->activity:Landroid/app/Activity;

    .line 40
    :cond_0
    if-nez p2, :cond_2

    .line 54
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    const-string v2, "sad_id"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    .local v1, "devId":Ljava/lang/String;
    const-string v2, "sa_id"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, "appId":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 47
    iput-object v1, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->devId:Ljava/lang/String;

    .line 50
    :cond_3
    if-eqz v0, :cond_1

    .line 51
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/StartAppAdAdapter;->appId:Ljava/lang/String;

    goto :goto_0
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x4
        0x1
        0x1
    .end array-data
.end method
