.class public Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/fusepowered/al/impl/sdk/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/fusepowered/al/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/fusepowered/al/sdk/AppLovinSdk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;-><init>(Lcom/fusepowered/al/sdk/AppLovinSdk;)V

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/al/sdk/AppLovinSdk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SDK cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/fusepowered/al/impl/sdk/u;

    invoke-direct {v0, p1}, Lcom/fusepowered/al/impl/sdk/u;-><init>(Lcom/fusepowered/al/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->a:Lcom/fusepowered/al/impl/sdk/u;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    invoke-static {p0}, Lcom/fusepowered/al/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/fusepowered/al/sdk/AppLovinSdk;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->create(Lcom/fusepowered/al/sdk/AppLovinSdk;)Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/fusepowered/al/sdk/AppLovinSdk;)Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    new-instance v0, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;

    invoke-direct {v0, p0}, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;-><init>(Lcom/fusepowered/al/sdk/AppLovinSdk;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/u;->d()V

    return-void
.end method

.method public getUserIdentifier()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/fusepowered/al/impl/sdk/u;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReadyToDisplay()Z
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/u;->a()Z

    move-result v0

    return v0
.end method

.method public preload(Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "AppLovinIncentivizedInterstitial"

    const-string v1, "AppLovinAdLoadListener was null when preloading incentivized interstitials; using a listener is highly recommended."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-virtual {v0, p1}, Lcom/fusepowered/al/impl/sdk/u;->a(Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/fusepowered/al/impl/sdk/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V
    .locals 6

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppLovinAdRewardListener must not be null when showing an AppLovinIncentivizedInterstitial."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/AppLovinIncentivizedInterstitial;->a:Lcom/fusepowered/al/impl/sdk/u;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/al/impl/sdk/u;->a(Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V

    return-void
.end method
