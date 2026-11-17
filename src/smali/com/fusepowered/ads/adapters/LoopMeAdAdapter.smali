.class public abstract Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "LoopMeAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/l1/LoopMeInterstitial$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/adapters/LoopMeAdAdapter$LoopMeFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoopMeAdAdapter"

.field public static final name:Ljava/lang/String; = "LoopMe"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adId:Ljava/lang/String;

.field private factory:Lcom/fusepowered/ads/adapters/LoopMeAdAdapter$LoopMeFactory;

.field private initialized:Z

.field private interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

.field private lastActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->initialized:Z

    .line 35
    new-instance v0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter$LoopMeFactory;

    invoke-direct {v0}, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter$LoopMeFactory;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->factory:Lcom/fusepowered/ads/adapters/LoopMeAdAdapter$LoopMeFactory;

    .line 36
    return-void
.end method


# virtual methods
.method public displayAd()Z
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    if-nez v0, :cond_1

    .line 94
    :cond_0
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 95
    const-string v0, "LoopMeAdAdapter"

    const-string v1, "displayAd - loopme not ready"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 99
    :cond_1
    const-string v0, "LoopMeAdAdapter"

    const-string v1, "displayAd - Showing loopme ad"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->show()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getInterstitial()Lcom/fusepowered/l1/LoopMeInterstitial;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "LoopMe"

    return-object v0
.end method

.method public abstract getProviderId()Ljava/lang/String;
.end method

.method public isAdAvailable()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->isReady()Z

    move-result v0

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->adId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 61
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 60
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 67
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->adId:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 88
    :goto_0
    return v1

    .line 71
    :cond_1
    iget-boolean v3, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->initialized:Z

    if-nez v3, :cond_2

    .line 72
    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->initialized:Z

    .line 76
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 77
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->lastActivity:Landroid/app/Activity;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->adId:Ljava/lang/String;

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v4}, Lcom/fusepowered/l1/LoopMeInterstitial;->getAppKey()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_5

    :cond_3
    move v0, v1

    .line 81
    .local v0, "mustCreateInterstitial":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 82
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->factory:Lcom/fusepowered/ads/adapters/LoopMeAdAdapter$LoopMeFactory;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->adId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter$LoopMeFactory;->createInterstitial(Landroid/app/Activity;Ljava/lang/String;)Lcom/fusepowered/l1/LoopMeInterstitial;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    .line 83
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->activity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->lastActivity:Landroid/app/Activity;

    .line 84
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v2, p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->addListener(Lcom/fusepowered/l1/LoopMeInterstitial$Listener;)V

    .line 87
    :cond_4
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v2}, Lcom/fusepowered/l1/LoopMeInterstitial;->load()V

    goto :goto_0

    .end local v0    # "mustCreateInterstitial":Z
    :cond_5
    move v0, v2

    .line 77
    goto :goto_1
.end method

.method public onLoopMeInterstitialClicked(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 2
    .param p1, "loopMeInterstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 164
    const-string v0, "LoopMeAdAdapter"

    const-string v1, "Ad clicked"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialExpired(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 0
    .param p1, "loopMeInterstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 183
    return-void
.end method

.method public onLoopMeInterstitialHide(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 2
    .param p1, "loopMeInterstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 150
    const-string v0, "LoopMeAdAdapter"

    const-string v1, "Ad hidden"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->destroy()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    .line 160
    :cond_1
    return-void
.end method

.method public onLoopMeInterstitialLeaveApp(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 2
    .param p1, "loopMeInterstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 173
    const-string v0, "LoopMeAdAdapter"

    const-string v1, "Will leave app"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onWillLeaveApp(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 2
    .param p1, "loopMeInterstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;
    .param p2, "loopMeError"    # Lcom/fusepowered/l1/LoopMeError;

    .prologue
    .line 128
    const-string v0, "LoopMeAdAdapter"

    const-string v1, "Ad load failed"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 130
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->destroy()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->interstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    .line 138
    :cond_1
    return-void
.end method

.method public onLoopMeInterstitialLoadSuccess(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 2
    .param p1, "loopMeInterstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 119
    const-string v0, "LoopMeAdAdapter"

    const-string v1, "Ad loaded"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialShow(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 2
    .param p1, "loopMeInterstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 142
    const-string v0, "LoopMeAdAdapter"

    const-string v1, "Ad dispayed"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialVideoDidReachEnd(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/fusepowered/l1/LoopMeInterstitial;

    .prologue
    .line 187
    const-string v0, "LoopMeAdAdapter"

    const-string v1, "Rewarded video completed"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 190
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 194
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
    .line 41
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->activity:Landroid/app/Activity;

    .line 45
    :cond_0
    if-nez p2, :cond_2

    .line 54
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, "loopMeId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 52
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;->adId:Ljava/lang/String;

    goto :goto_0
.end method
