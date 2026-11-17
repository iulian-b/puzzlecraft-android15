.class public Lcom/fusepowered/ads/adapters/MopubAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "MopubAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/adapters/MopubAdAdapter$1;,
        Lcom/fusepowered/ads/adapters/MopubAdAdapter$InterstitialFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MopubAdAdapter"

.field public static final name:Ljava/lang/String; = "Mopub"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final interstitialFactory:Lcom/fusepowered/ads/adapters/MopubAdAdapter$InterstitialFactory;

.field private landscapeAdUnitId:Ljava/lang/String;

.field private landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

.field private lastDisplayedInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

.field private final orientationProvider:Lcom/fusepowered/ads/OrientationProvider;

.field private portraitAdUnitId:Ljava/lang/String;

.field private portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

.field private startDisplayTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 38
    new-instance v0, Lcom/fusepowered/ads/adapters/MopubAdAdapter$InterstitialFactory;

    invoke-direct {v0}, Lcom/fusepowered/ads/adapters/MopubAdAdapter$InterstitialFactory;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->interstitialFactory:Lcom/fusepowered/ads/adapters/MopubAdAdapter$InterstitialFactory;

    .line 39
    new-instance v0, Lcom/fusepowered/ads/OrientationProvider;

    invoke-direct {v0, p1}, Lcom/fusepowered/ads/OrientationProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->orientationProvider:Lcom/fusepowered/ads/OrientationProvider;

    .line 40
    return-void
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 273
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
    .locals 6

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->isAdAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    const-string v3, "MopubAdAdapter"

    const-string v4, "Failed to display ad: none available"

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->orientationProvider:Lcom/fusepowered/ads/OrientationProvider;

    invoke-virtual {v3}, Lcom/fusepowered/ads/OrientationProvider;->isPortrait()Z

    move-result v2

    .line 168
    .local v2, "orientationIsPortrait":Z
    const/4 v1, 0x0

    .line 170
    .local v1, "interstitialToDisplay":Lcom/fusepowered/m2/mobileads/MoPubInterstitial;
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->isAdAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .line 174
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 175
    const-string v3, "MopubAdAdapter"

    const-string v4, "Failed to display ad: none available"

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v3, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 177
    const/4 v0, 0x0

    .line 188
    :goto_1
    return v0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->show()Z

    move-result v0

    .line 181
    .local v0, "adDidShow":Z
    if-eqz v0, :cond_4

    .line 182
    iput-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->lastDisplayedInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .line 186
    :goto_2
    const-string v4, "MopubAdAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Displaying ad for orientation: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_5

    const-string v3, "Portrait"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Success: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_6

    const-string v3, "YES"

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_4
    sget-object v3, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    goto :goto_2

    .line 186
    :cond_5
    const-string v3, "Landscape"

    goto :goto_3

    :cond_6
    const-string v3, "NO"

    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "Mopub"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->orientationProvider:Lcom/fusepowered/ads/OrientationProvider;

    invoke-virtual {v3}, Lcom/fusepowered/ads/OrientationProvider;->isPortrait()Z

    move-result v1

    .line 154
    .local v1, "orientationIsPortrait":Z
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->isReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    .local v0, "isReady":Z
    :cond_0
    :goto_0
    const-string v3, "MopubAdAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking ready status for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    const-string v2, "Portrait"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_5

    const-string v2, "Ready"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return v0

    .end local v0    # "isReady":Z
    :cond_1
    move v0, v2

    .line 154
    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 155
    .restart local v0    # "isReady":Z
    :cond_4
    const-string v2, "Landscape"

    goto :goto_1

    :cond_5
    const-string v2, "Not Ready"

    goto :goto_2
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 75
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 74
    .end local v0    # "canLoad":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "loading":Z
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->orientationProvider:Lcom/fusepowered/ads/OrientationProvider;

    invoke-virtual {v2}, Lcom/fusepowered/ads/OrientationProvider;->isPortrait()Z

    move-result v1

    .line 84
    .local v1, "orientationIsPortrait":Z
    if-eqz v1, :cond_1

    .line 85
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-eqz v2, :cond_0

    .line 86
    iput-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 87
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->load()V

    .line 88
    const/4 v0, 0x1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-eqz v2, :cond_0

    .line 91
    iput-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 92
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->load()V

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 278
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

.method public onInterstitialClicked(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V
    .locals 1
    .param p1, "moPubInterstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->lastDisplayedInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-eq p1, v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 239
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onWillLeaveApp(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method

.method public onInterstitialDismissed(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V
    .locals 8
    .param p1, "moPubInterstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .prologue
    .line 245
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->lastDisplayedInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-eq p1, v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v1, :cond_0

    .line 249
    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->isRewarded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->startDisplayTime:Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 250
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->startDisplayTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 251
    .local v2, "duration":J
    iget v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->rewardTimer:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    const/4 v0, 0x1

    .line 252
    .local v0, "displayedLongEnoughForReward":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 253
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 256
    .end local v0    # "displayedLongEnoughForReward":Z
    .end local v2    # "duration":J
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 251
    .restart local v2    # "duration":J
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p1, "moPubInterstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;
    .param p2, "moPubErrorCode"    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    .prologue
    .line 202
    sget-object v0, Lcom/fusepowered/ads/adapters/MopubAdAdapter$1;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 212
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 217
    :cond_0
    return-void

    .line 206
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    goto :goto_0

    .line 209
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_TIMED_OUT:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInterstitialLoaded(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V
    .locals 1
    .param p1, "moPubInterstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onInterstitialShown(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V
    .locals 1
    .param p1, "moPubInterstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->lastDisplayedInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-eq p1, v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 227
    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->startDisplayTime:Ljava/util/Date;

    goto :goto_0
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
    .line 51
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->activity:Landroid/app/Activity;

    .line 55
    :cond_0
    if-nez p2, :cond_2

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "tp"

    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, "portraitAdUnitId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "tl"

    :goto_2
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "landscapeAdUnitId":Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 63
    invoke-virtual {p0, v1, p1}, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->setPortraitAdUnitId(Ljava/lang/String;Landroid/app/Activity;)Z

    .line 66
    :cond_3
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->setLandscapeAdUnitId(Ljava/lang/String;Landroid/app/Activity;)Z

    goto :goto_0

    .line 59
    .end local v0    # "landscapeAdUnitId":Ljava/lang/String;
    .end local v1    # "portraitAdUnitId":Ljava/lang/String;
    :cond_4
    const-string v2, "pp"

    goto :goto_1

    .line 60
    .restart local v1    # "portraitAdUnitId":Ljava/lang/String;
    :cond_5
    const-string v2, "pl"

    goto :goto_2
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x3
        0x9
        0x0
    .end array-data
.end method

.method public setLandscapeAdUnitId(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 4
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 127
    if-eqz p1, :cond_0

    const-string v1, ""

    if-eq p1, v1, :cond_0

    if-nez p2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    const-string v1, "MopubAdAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting landscape adunit id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Previous adunit id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeAdUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeAdUnitId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    :cond_2
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeAdUnitId:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->destroy()V

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->interstitialFactory:Lcom/fusepowered/ads/adapters/MopubAdAdapter$InterstitialFactory;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/ads/adapters/MopubAdAdapter$InterstitialFactory;->createInterstitial(Ljava/lang/String;Landroid/app/Activity;)Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .line 140
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 142
    const-string v0, "MopubAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created new landscape interstitial with adunit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->landscapeInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPortraitAdUnitId(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 4
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 102
    if-eqz p1, :cond_0

    const-string v1, ""

    if-eq p1, v1, :cond_0

    if-nez p2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    const-string v1, "MopubAdAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting portrait adunit id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Previous adunit id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitAdUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitAdUnitId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    :cond_2
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitAdUnitId:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->destroy()V

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->interstitialFactory:Lcom/fusepowered/ads/adapters/MopubAdAdapter$InterstitialFactory;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/ads/adapters/MopubAdAdapter$InterstitialFactory;->createInterstitial(Ljava/lang/String;Landroid/app/Activity;)Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .line 116
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 118
    const-string v0, "MopubAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created new portrait interstitial with adunit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MopubAdAdapter;->portraitInterstitial:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    goto :goto_0
.end method
