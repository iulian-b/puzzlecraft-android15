.class public Lcom/fusepowered/m2/mobileads/MoPubInterstitial;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mobileads/MoPubInterstitial$1;,
        Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;,
        Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialListener;,
        Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;,
        Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdUnitId:Ljava/lang/String;

.field private mCurrentInterstitialState:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

.field private mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

.field private mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

.field private mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

.field private mIsDestroyed:Z

.field private mListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;-><init>(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    .line 58
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->setAdUnitId(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;
    .param p1, "x1"    # Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method private resetCurrentInterstitial()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    .line 77
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;->invalidate()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mIsDestroyed:Z

    .line 83
    return-void
.end method

.method private showCustomEventInterstitial()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;->showInterstitial()V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public customEventActionWillBegin()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    .line 329
    :cond_0
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    sget-object v1, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 324
    :cond_0
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    .line 319
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mIsDestroyed:Z

    .line 135
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;->invalidate()V

    .line 137
    iput-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->setBannerAdListener(Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;)V

    .line 141
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->destroy()V

    .line 142
    return-void
.end method

.method public forceRefresh()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->resetCurrentInterstitial()V

    .line 71
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->forceRefresh()V

    .line 72
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getAdTimeoutDelay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialAdListener()Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    return-object v0
.end method

.method public getLocalExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAwareness()Lcom/fusepowered/m2/common/LocationService$LocationAwareness;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/fusepowered/m2/common/MoPub;->getLocationAwareness()Lcom/fusepowered/m2/common/MoPub$LocationAwareness;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/common/LocationService$LocationAwareness;->fromMoPubLocationAwareness(Lcom/fusepowered/m2/common/MoPub$LocationAwareness;)Lcom/fusepowered/m2/common/LocationService$LocationAwareness;

    move-result-object v0

    return-object v0
.end method

.method public getLocationPrecision()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Lcom/fusepowered/m2/common/MoPub;->getLocationPrecision()I

    move-result v0

    return v0
.end method

.method getMoPubInterstitialView()Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->getTesting()Z

    move-result v0

    return v0
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mIsDestroyed:Z

    return v0
.end method

.method public isFacebookSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;->isReady()Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->resetCurrentInterstitial()V

    .line 66
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    .line 67
    return-void
.end method

.method public onCustomEventInterstitialClicked()V
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    .line 210
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialClicked(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialDismissed()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    sget-object v0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    .line 221
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialDismissed(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    .line 190
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialLoaded()V
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mIsDestroyed:Z

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    sget-object v0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;->CUSTOM_EVENT_AD_READY:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    .line 178
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialLoaded()V

    goto :goto_0
.end method

.method public onCustomEventInterstitialShown()V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    .line 199
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialShown(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public setFacebookSupported(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    return-void
.end method

.method public setInterstitialAdListener(Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    .line 146
    return-void
.end method

.method setInterstitialView(Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;)V
    .locals 0
    .param p1, "interstitialView"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 303
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    .line 304
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->setKeywords(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setListener(Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mListener:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    .line 309
    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->setLocalExtras(Ljava/util/Map;)V

    .line 162
    return-void
.end method

.method public setLocationAwareness(Lcom/fusepowered/m2/common/LocationService$LocationAwareness;)V
    .locals 1
    .param p1, "locationAwareness"    # Lcom/fusepowered/m2/common/LocationService$LocationAwareness;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/fusepowered/m2/common/LocationService$LocationAwareness;->getNewLocationAwareness()Lcom/fusepowered/m2/common/MoPub$LocationAwareness;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/common/MoPub;->setLocationAwareness(Lcom/fusepowered/m2/common/MoPub$LocationAwareness;)V

    .line 229
    return-void
.end method

.method public setLocationPrecision(I)V
    .locals 0
    .param p1, "precision"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    invoke-static {p1}, Lcom/fusepowered/m2/common/MoPub;->setLocationPrecision(I)V

    .line 239
    return-void
.end method

.method public setTesting(Z)V
    .locals 1
    .param p1, "testing"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->setTesting(Z)V

    .line 154
    return-void
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$1;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 96
    :pswitch_0
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->showCustomEventInterstitial()V

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
