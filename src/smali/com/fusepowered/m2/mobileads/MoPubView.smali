.class public Lcom/fusepowered/m2/mobileads/MoPubView;
.super Landroid/widget/FrameLayout;
.source "MoPubView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mobileads/MoPubView$OnAdPresentedOverlayListener;,
        Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClickedListener;,
        Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClosedListener;,
        Lcom/fusepowered/m2/mobileads/MoPubView$OnAdFailedListener;,
        Lcom/fusepowered/m2/mobileads/MoPubView$OnAdLoadedListener;,
        Lcom/fusepowered/m2/mobileads/MoPubView$OnAdWillLoadListener;,
        Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCATION_PRECISION:I = 0x6


# instance fields
.field protected mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

.field private mContext:Landroid/content/Context;

.field protected mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

.field private mOnAdClickedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClickedListener;

.field private mOnAdClosedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClosedListener;

.field private mOnAdFailedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdFailedListener;

.field private mOnAdLoadedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdLoadedListener;

.field private mOnAdPresentedOverlayListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdPresentedOverlayListener;

.field private mOnAdWillLoadListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdWillLoadListener;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/m2/mobileads/MoPubView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-static {p1}, Lcom/fusepowered/m2/common/util/ManifestUtils;->checkWebViewActivitiesDeclared(Landroid/content/Context;)V

    .line 66
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mScreenVisibility:I

    .line 69
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/MoPubView;->setHorizontalScrollBarEnabled(Z)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/MoPubView;->setVerticalScrollBarEnabled(Z)V

    .line 77
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    const-string v0, "Disabling MoPub. Local cache file is inaccessible so MoPub will fail if we try to create a WebView. Details of this Android bug found at:http://code.google.com/p/android/issues/detail?id=10789"

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p1, p0}, Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/MoPubView;)Lcom/fusepowered/m2/mobileads/AdViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    .line 85
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/MoPubView;->registerScreenStateBroadcastReceiver()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/mobileads/MoPubView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/MoPubView;

    .prologue
    .line 30
    iget v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mScreenVisibility:I

    return v0
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/mobileads/MoPubView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/MoPubView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/mobileads/MoPubView;->setAdVisibility(I)V

    return-void
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 89
    new-instance v1, Lcom/fusepowered/m2/mobileads/MoPubView$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/mobileads/MoPubView$1;-><init>(Lcom/fusepowered/m2/mobileads/MoPubView;)V

    iput-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method private setAdVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {p1}, Lcom/fusepowered/m2/common/util/Visibility;->isScreenVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->unpauseRefresh()V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->pauseRefresh()V

    goto :goto_0
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "IllegalArgumentException":Ljava/lang/Exception;
    const-string v1, "Failed to unregister screen state broadcast receiver (never registered)."

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected adClicked()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;->onBannerClicked(Lcom/fusepowered/m2/mobileads/MoPubView;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdClickedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClickedListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdClickedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClickedListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClickedListener;->OnAdClicked(Lcom/fusepowered/m2/mobileads/MoPubView;)V

    goto :goto_0
.end method

.method protected adClosed()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;->onBannerCollapsed(Lcom/fusepowered/m2/mobileads/MoPubView;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdClosedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClosedListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdClosedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClosedListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClosedListener;->OnAdClosed(Lcom/fusepowered/m2/mobileads/MoPubView;)V

    goto :goto_0
.end method

.method protected adFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    invoke-interface {v0, p0, p1}, Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;->onBannerFailed(Lcom/fusepowered/m2/mobileads/MoPubView;Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdFailedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdFailedListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdFailedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdFailedListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubView$OnAdFailedListener;->OnAdFailed(Lcom/fusepowered/m2/mobileads/MoPubView;)V

    goto :goto_0
.end method

.method protected adLoaded()V
    .locals 1

    .prologue
    .line 212
    const-string v0, "adLoaded"

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;->onBannerLoaded(Lcom/fusepowered/m2/mobileads/MoPubView;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdLoadedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdLoadedListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdLoadedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdLoadedListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubView$OnAdLoadedListener;->OnAdLoaded(Lcom/fusepowered/m2/mobileads/MoPubView;)V

    goto :goto_0
.end method

.method protected adPresentedOverlay()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;->onBannerExpanded(Lcom/fusepowered/m2/mobileads/MoPubView;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdPresentedOverlayListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdPresentedOverlayListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdPresentedOverlayListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdPresentedOverlayListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/mobileads/MoPubView$OnAdPresentedOverlayListener;->OnAdPresentedOverlay(Lcom/fusepowered/m2/mobileads/MoPubView;)V

    goto :goto_0
.end method

.method protected adWillLoad(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adWillLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdWillLoadListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdWillLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdWillLoadListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdWillLoadListener;

    invoke-interface {v0, p0, p1}, Lcom/fusepowered/m2/mobileads/MoPubView$OnAdWillLoadListener;->OnAdWillLoad(Lcom/fusepowered/m2/mobileads/MoPubView;Ljava/lang/String;)V

    .line 470
    :cond_0
    return-void
.end method

.method public customEventActionWillBegin()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->customEventActionWillBegin()V

    .line 485
    :cond_0
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->customEventDidFailToLoadAd()V

    .line 480
    :cond_0
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->customEventDidLoadAd()V

    .line 475
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/MoPubView;->unregisterScreenStateBroadcastReceiver()V

    .line 130
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubView;->removeAllViews()V

    .line 132
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->cleanup()V

    .line 134
    iput-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;->invalidate()V

    .line 139
    iput-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    .line 141
    :cond_1
    return-void
.end method

.method public forceRefresh()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;->invalidate()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->forceRefresh()V

    .line 376
    :cond_1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getAdFormat()Lcom/fusepowered/m2/common/AdFormat;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/fusepowered/m2/common/AdFormat;->BANNER:Lcom/fusepowered/m2/common/AdFormat;

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getAdHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAdTimeoutDelay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAdViewController()Lcom/fusepowered/m2/mobileads/AdViewController;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getAdWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getAutorefreshEnabled()Z

    move-result v0

    .line 348
    :goto_0
    return v0

    .line 346
    :cond_0
    const-string v0, "Can\'t get autorefresh status for destroyed MoPubView. Returning false."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBannerAdListener()Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    return-object v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubView;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getKeywords()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 331
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getLocation()Landroid/location/Location;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocationAwareness()Lcom/fusepowered/m2/common/LocationService$LocationAwareness;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
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
    .line 403
    invoke-static {}, Lcom/fusepowered/m2/common/MoPub;->getLocationPrecision()I

    move-result v0

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getResponseString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getTesting()Z

    move-result v0

    .line 365
    :goto_0
    return v0

    .line 363
    :cond_0
    const-string v0, "Can\'t get testing status for destroyed MoPubView. Returning false."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFacebookSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->loadAd()V

    .line 122
    :cond_0
    return-void
.end method

.method protected loadCustomEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "customEventClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const-string v0, "Couldn\'t invoke custom event because the server did not specify one."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/MoPubView;->loadFailUrl(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;->invalidate()V

    .line 165
    :cond_2
    const-string v0, "Loading custom event adapter."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getBroadcastIdentifier()J

    move-result-wide v4

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->getAdReport()Lcom/fusepowered/m2/common/AdReport;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/fusepowered/m2/mobileads/factories/CustomEventBannerAdapterFactory;->create(Lcom/fusepowered/m2/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/fusepowered/m2/common/AdReport;)Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    .line 173
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;->loadAd()V

    goto :goto_0
.end method

.method protected loadFailUrl(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->loadFailUrl(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 149
    :cond_0
    return-void
.end method

.method protected nativeAdLoaded()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubView;->adLoaded()V

    .line 256
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 193
    iget v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mScreenVisibility:I

    invoke-static {v0, p1}, Lcom/fusepowered/m2/common/util/Visibility;->hasScreenVisibilityChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iput p1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mScreenVisibility:I

    .line 195
    iget v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mScreenVisibility:I

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/mobileads/MoPubView;->setAdVisibility(I)V

    .line 197
    :cond_0
    return-void
.end method

.method protected registerClick()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->registerClick()V

    .line 181
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubView;->adClicked()V

    .line 183
    :cond_0
    return-void
.end method

.method public setAdContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->setAdContentView(Landroid/view/View;)V

    .line 354
    :cond_0
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->setAdUnitId(Ljava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->forceSetAutorefreshEnabled(Z)V

    .line 341
    :cond_0
    return-void
.end method

.method public setBannerAdListener(Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/mobileads/MoPubView$BannerAdListener;

    .line 320
    return-void
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 303
    return-void
.end method

.method public setFacebookSupported(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->setKeywords(Ljava/lang/String;)V

    .line 270
    :cond_0
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
    .line 327
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->setLocalExtras(Ljava/util/Map;)V

    .line 328
    :cond_0
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->setLocation(Landroid/location/Location;)V

    .line 278
    :cond_0
    return-void
.end method

.method public setLocationAwareness(Lcom/fusepowered/m2/common/LocationService$LocationAwareness;)V
    .locals 1
    .param p1, "locationAwareness"    # Lcom/fusepowered/m2/common/LocationService$LocationAwareness;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p1}, Lcom/fusepowered/m2/common/LocationService$LocationAwareness;->getNewLocationAwareness()Lcom/fusepowered/m2/common/MoPub$LocationAwareness;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/common/MoPub;->setLocationAwareness(Lcom/fusepowered/m2/common/MoPub$LocationAwareness;)V

    .line 389
    return-void
.end method

.method public setLocationPrecision(I)V
    .locals 0
    .param p1, "precision"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    invoke-static {p1}, Lcom/fusepowered/m2/common/MoPub;->setLocationPrecision(I)V

    .line 399
    return-void
.end method

.method public setOnAdClickedListener(Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClickedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdClickedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClickedListener;

    .line 464
    return-void
.end method

.method public setOnAdClosedListener(Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClosedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClosedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 458
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdClosedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdClosedListener;

    .line 459
    return-void
.end method

.method public setOnAdFailedListener(Lcom/fusepowered/m2/mobileads/MoPubView$OnAdFailedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/mobileads/MoPubView$OnAdFailedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 448
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdFailedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdFailedListener;

    .line 449
    return-void
.end method

.method public setOnAdLoadedListener(Lcom/fusepowered/m2/mobileads/MoPubView$OnAdLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/mobileads/MoPubView$OnAdLoadedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdLoadedListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdLoadedListener;

    .line 444
    return-void
.end method

.method public setOnAdPresentedOverlayListener(Lcom/fusepowered/m2/mobileads/MoPubView$OnAdPresentedOverlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/mobileads/MoPubView$OnAdPresentedOverlayListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 453
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdPresentedOverlayListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdPresentedOverlayListener;

    .line 454
    return-void
.end method

.method public setOnAdWillLoadListener(Lcom/fusepowered/m2/mobileads/MoPubView$OnAdWillLoadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/mobileads/MoPubView$OnAdWillLoadListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 438
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mOnAdWillLoadListener:Lcom/fusepowered/m2/mobileads/MoPubView$OnAdWillLoadListener;

    .line 439
    return-void
.end method

.method public setTesting(Z)V
    .locals 1
    .param p1, "testing"    # Z

    .prologue
    .line 357
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->setTesting(Z)V

    .line 358
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "milliseconds"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->setTimeout(I)V

    .line 286
    :cond_0
    return-void
.end method

.method protected trackNativeImpression()V
    .locals 1

    .prologue
    .line 186
    const-string v0, "Tracking impression for native adapter."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->trackImpression()V

    .line 188
    :cond_0
    return-void
.end method
