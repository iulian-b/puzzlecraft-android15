.class public Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "ApplifierAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/u1/IUnityAdsListener;


# static fields
.field private static applifierListener:Lcom/fusepowered/ads/adapters/ApplifierListener; = null

.field private static initialized:Z = false

.field public static final name:Ljava/lang/String; = "Applifier"


# instance fields
.field applifierId:Ljava/lang/String;

.field private displayProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private hasAdAvailabilityBeenReported:Z

.field lastActivity:Landroid/app/Activity;

.field private zone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/fusepowered/ads/adapters/ApplifierListener;

    invoke-direct {v0}, Lcom/fusepowered/ads/adapters/ApplifierListener;-><init>()V

    sput-object v0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->applifierListener:Lcom/fusepowered/ads/adapters/ApplifierListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->displayProperties:Ljava/util/HashMap;

    .line 42
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->displayProperties:Ljava/util/HashMap;

    const-string v1, "noOfferScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->displayProperties:Ljava/util/HashMap;

    const-string v1, "useDeviceOrientationForVideo"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->applifierListener:Lcom/fusepowered/ads/adapters/ApplifierListener;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ads/adapters/ApplifierListener;->addListener(Lcom/fusepowered/u1/IUnityAdsListener;)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->handler:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 47
    return-void
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 153
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
        0x1
    .end array-data
.end method

.method public displayAd()Z
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->isAdAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 133
    const/4 v0, 0x0

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->zone:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/u1/UnityAds;->setZone(Ljava/lang/String;)Z

    .line 137
    sget-object v1, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->applifierListener:Lcom/fusepowered/ads/adapters/ApplifierListener;

    invoke-virtual {v1, p0}, Lcom/fusepowered/ads/adapters/ApplifierListener;->setMainListener(Lcom/fusepowered/u1/IUnityAdsListener;)V

    .line 138
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->displayProperties:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/fusepowered/u1/UnityAds;->show(Ljava/util/Map;)Z

    move-result v0

    .line 140
    .local v0, "adDisplayed":Z
    if-nez v0, :cond_0

    .line 141
    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    goto :goto_0
.end method

.method public getDisplayProperties()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->displayProperties:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "Applifier"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 2

    .prologue
    .line 116
    sget-boolean v1, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->initialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->zone:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 126
    :cond_1
    :goto_0
    return v0

    .line 120
    :cond_2
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->canShowAds()Z

    move-result v0

    .line 122
    .local v0, "adAvailable":Z
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->hasAdAvailabilityBeenReported:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->onFetchCompleted()V

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->applifierId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->lastActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->zone:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 90
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 89
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 95
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->applifierId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->lastActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->zone:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 111
    :cond_1
    :goto_0
    return v0

    .line 100
    :cond_2
    sget-object v1, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->applifierListener:Lcom/fusepowered/ads/adapters/ApplifierListener;

    invoke-virtual {v1, p0}, Lcom/fusepowered/ads/adapters/ApplifierListener;->setMainListener(Lcom/fusepowered/u1/IUnityAdsListener;)V

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 103
    :try_start_0
    sget-boolean v2, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->initialized:Z

    if-nez v2, :cond_3

    .line 104
    const/4 v2, 0x1

    sput-boolean v2, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->initialized:Z

    .line 105
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->lastActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->applifierId:Ljava/lang/String;

    sget-object v4, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->applifierListener:Lcom/fusepowered/ads/adapters/ApplifierListener;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/u1/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/u1/IUnityAdsListener;)V

    .line 107
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->canShowAds()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->hasAdAvailabilityBeenReported:Z

    if-nez v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->onFetchCompleted()V

    goto :goto_0

    .line 107
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
    .line 158
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

.method public onFetchCompleted()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 202
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onFetchFailed()V
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 210
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 171
    return-void
.end method

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 7
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
    .line 58
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->lastActivity:Landroid/app/Activity;

    if-eq p1, v4, :cond_0

    .line 59
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->lastActivity:Landroid/app/Activity;

    .line 60
    sget-boolean v4, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->initialized:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->canShowAds()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->lastActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/fusepowered/u1/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 65
    :cond_0
    if-nez p2, :cond_2

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    const-string v4, "applifier_id"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "appId":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 73
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "intVersion":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->applifierId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v2    # "intVersion":I
    :cond_3
    :goto_1
    const-string v4, "applifier_zone_id"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    .local v3, "zone":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 82
    iput-object v3, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->zone:Ljava/lang/String;

    goto :goto_0

    .line 75
    .end local v3    # "zone":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 188
    if-eqz p2, :cond_1

    .line 189
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdSkipped(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 192
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x3
        0xc
    .end array-data
.end method
