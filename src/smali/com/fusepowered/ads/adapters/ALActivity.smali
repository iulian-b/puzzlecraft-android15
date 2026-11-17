.class public Lcom/fusepowered/ads/adapters/ALActivity;
.super Landroid/app/Activity;
.source "ALActivity.java"

# interfaces
.implements Lcom/fusepowered/al/sdk/AppLovinAdClickListener;
.implements Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;
.implements Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;
.implements Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ALActivity"


# instance fields
.field private genericAd:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private hasDisplayedAd:Z

.field private provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->adClicked(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    .line 88
    return-void
.end method

.method public adDisplayed(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->adDisplayed(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    .line 93
    return-void
.end method

.method public adHidden(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->adHidden(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    .line 98
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ALActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ALActivity;->finish()V

    .line 101
    :cond_0
    return-void
.end method

.method public displayAd()V
    .locals 8

    .prologue
    .line 71
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    iget-boolean v1, v1, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->isRewarded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ALActivity;->genericAd:Ljava/lang/Object;

    instance-of v1, v1, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

    if-eqz v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->genericAd:Ljava/lang/Object;

    check-cast v0, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

    .local v0, "rewardedAd":Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;
    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V

    .line 82
    .end local v0    # "rewardedAd":Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ALActivity;->genericAd:Ljava/lang/Object;

    instance-of v1, v1, Lcom/fusepowered/al/sdk/AppLovinAd;

    if-eqz v1, :cond_0

    .line 75
    iget-object v6, p0, Lcom/fusepowered/ads/adapters/ALActivity;->genericAd:Ljava/lang/Object;

    check-cast v6, Lcom/fusepowered/al/sdk/AppLovinAd;

    .line 76
    .local v6, "ad":Lcom/fusepowered/al/sdk/AppLovinAd;
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    iget-object v1, v1, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->appLovin:Lcom/fusepowered/al/sdk/AppLovinSdk;

    invoke-static {v1, p0}, Lcom/fusepowered/al/adview/AppLovinInterstitialAd;->create(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;

    move-result-object v7

    .line 77
    .local v7, "adDialog":Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;
    invoke-interface {v7, p0}, Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V

    .line 78
    invoke-interface {v7, p0}, Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;)V

    .line 79
    invoke-interface {v7, p0}, Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 80
    invoke-interface {v7, v6}, Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ALActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ALActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "instance_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, "instanceId":I
    invoke-static {v0}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->getInstance(I)Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    .line 44
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    if-nez v2, :cond_0

    .line 45
    const-string v2, "ALActivity"

    const-string v3, "AppLovin ad provider instance not available, aborting"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ALActivity;->finish()V

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->getAd()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/ALActivity;->genericAd:Ljava/lang/Object;

    .line 51
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/ALActivity;->genericAd:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 52
    const-string v2, "ALActivity"

    const-string v3, "Ad not available, aborting"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ALActivity;->finish()V

    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/ALActivity;->handler:Landroid/os/Handler;

    .line 58
    iput-boolean v4, p0, Lcom/fusepowered/ads/adapters/ALActivity;->hasDisplayedAd:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->hasDisplayedAd:Z

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ALActivity;->displayAd()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->hasDisplayedAd:Z

    .line 68
    :cond_0
    return-void
.end method

.method public userDeclinedToViewAd(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->userDeclinedToViewAd(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    .line 126
    return-void
.end method

.method public userOverQuota(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->userOverQuota(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 111
    return-void
.end method

.method public userRewardRejected(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->userRewardRejected(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method public userRewardVerified(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->userRewardVerified(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method public validationRequestFailed(Lcom/fusepowered/al/sdk/AppLovinAd;I)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;
    .param p2, "i"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->validationRequestFailed(Lcom/fusepowered/al/sdk/AppLovinAd;I)V

    .line 121
    return-void
.end method

.method public videoPlaybackBegan(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->videoPlaybackBegan(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    .line 131
    return-void
.end method

.method public videoPlaybackEnded(Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V
    .locals 2
    .param p1, "appLovinAd"    # Lcom/fusepowered/al/sdk/AppLovinAd;
    .param p2, "v"    # D
    .param p4, "b"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ALActivity;->provider:Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fusepowered/ads/adapters/AppLovinAdAdapter;->videoPlaybackEnded(Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V

    .line 136
    return-void
.end method
