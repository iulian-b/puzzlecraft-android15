.class public Lcom/fusepowered/ads/adapters/NativeXAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "NativeXAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/nx/monetization/listeners/SessionListener;
.implements Lcom/fusepowered/nx/monetization/listeners/OnAdEventV2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/adapters/NativeXAdAdapter$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeXAdAdapter"

.field private static initialized:Z = false

.field private static isLoading:Z = false

.field public static final name:Ljava/lang/String; = "NativeX"

.field private static sessionStarted:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private appId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->initialized:Z

    .line 25
    sput-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->sessionStarted:Z

    .line 29
    sput-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->isLoading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 176
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

.method public createSessionCompleted(ZZLjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "isOfferWallEnabled"    # Z
    .param p3, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->sessionStarted:Z

    .line 112
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->Level_Completed:Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;

    invoke-static {v0, v2, p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->fetchAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 117
    :goto_0
    monitor-exit v1

    .line 118
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->initialized:Z

    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->sessionStarted:Z

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public displayAd()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->isAdAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_0
    sput-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->isLoading:Z

    .line 94
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->activity:Landroid/app/Activity;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->Level_Completed:Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;

    invoke-static {v0, v1, p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showReadyAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "NativeX"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->initialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->sessionStarted:Z

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->Level_Completed:Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAdReady(Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->appId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->apiKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->activity:Landroid/app/Activity;

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
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->isCapableOfLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    :goto_0
    return v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2

    .line 68
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->isLoading:Z

    .line 69
    sget-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->initialized:Z

    if-nez v0, :cond_2

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->sessionStarted:Z

    .line 71
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->apiKey:Ljava/lang/String;

    invoke-static {v0, v3, v4, p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->createSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->initialized:Z

    .line 76
    :cond_1
    :goto_1
    monitor-exit v2

    move v0, v1

    .line 78
    goto :goto_0

    .line 73
    :cond_2
    sget-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->sessionStarted:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->activity:Landroid/app/Activity;

    sget-object v3, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->Level_Completed:Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;

    invoke-static {v0, v3, p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->fetchAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 181
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
        0x0
    .end array-data
.end method

.method public onEvent(Lcom/fusepowered/nx/monetization/enums/AdEvent;Lcom/fusepowered/nx/monetization/mraid/AdInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Lcom/fusepowered/nx/monetization/enums/AdEvent;
    .param p2, "adInfo"    # Lcom/fusepowered/nx/monetization/mraid/AdInfo;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "Event"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter$1;->$SwitchMap$com$nativex$monetization$enums$AdEvent:[I

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 135
    :pswitch_2
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 136
    sget-boolean v0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->isLoading:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToDisplay(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 149
    :pswitch_4
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 150
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 155
    :pswitch_5
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 156
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onWillLeaveApp(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 159
    :pswitch_6
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 160
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
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
    .line 38
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 39
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->activity:Landroid/app/Activity;

    .line 41
    :cond_0
    if-nez p2, :cond_2

    .line 54
    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    const-string v2, "app_id"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "api_key"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "apiKey":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 48
    iput-object v1, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->appId:Ljava/lang/String;

    .line 50
    :cond_3
    if-eqz v0, :cond_1

    .line 51
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/NativeXAdAdapter;->apiKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x5
        0x4
        0x8
        0x1
    .end array-data
.end method
