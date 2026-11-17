.class public Lcom/fusepowered/ads/adapters/MRaidAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "MRaidAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;
.implements Lcom/fusepowered/mraid1/MRAIDInterstitialListener;


# static fields
.field private static final DISPLAY_MRAID_ACTIVITY_REQUEST_CODE:I = 0x0

.field public static final NAME:Ljava/lang/String; = "MRAID"

.field private static final TAG:Ljava/lang/String; = "MRaidAdAdapter"


# instance fields
.field private MRaidActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/ads/adapters/MRaidActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected activity:Landroid/app/Activity;

.field protected baseURL:Ljava/lang/String;

.field protected clickBeacon:Ljava/lang/String;

.field protected hasReportedClose:Z

.field protected htmlBody:Ljava/lang/String;

.field protected impressionBeacon:Ljava/lang/String;

.field protected interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

.field protected loaded:Z

.field protected final registryId:I

.field private startDisplayTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->baseURL:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->hasReportedClose:Z

    .line 44
    invoke-static {p0}, Lcom/fusepowered/ads/adapters/MRaidRegistry;->register(Lcom/fusepowered/ads/adapters/MRaidAdAdapter;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->registryId:I

    .line 45
    return-void
.end method

.method private displayInterstitial()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    const-class v2, Lcom/fusepowered/ads/adapters/MRaidActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "registryId"

    iget v2, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->registryId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v1, "rotate"

    iget v2, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->rotateMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 142
    iput-boolean v3, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->hasReportedClose:Z

    .line 143
    iput-boolean v3, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 144
    return-void
.end method

.method private preloadInterstitial()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 103
    iput-object v8, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 104
    iput-boolean v7, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 105
    new-instance v0, Lcom/fusepowered/mraid1/MRAIDInterstitial;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->baseURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->htmlBody:Ljava/lang/String;

    iget v4, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->backgroundColor:I

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "calendar"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string v7, "inlineVideo"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "storePicture"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "sms"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "tel"

    aput-object v7, v5, v6

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/fusepowered/mraid1/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/fusepowered/mraid1/MRAIDInterstitialListener;Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .line 106
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    iget v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->rotateMode:I

    invoke-virtual {v0, v1}, Lcom/fusepowered/mraid1/MRAIDInterstitial;->setOrientationConfig(I)V

    .line 107
    iput-object v8, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->htmlBody:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 321
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

.method public displayAd()Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 124
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->shouldPreload:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->displayInterstitial()V

    .line 133
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->preloadInterstitial()V

    goto :goto_1
.end method

.method public getInterstitial()Lcom/fusepowered/mraid1/MRAIDInterstitial;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    return-object v0
.end method

.method public getMRaidActivity()Lcom/fusepowered/ads/adapters/MRaidActivity;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->MRaidActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->MRaidActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/adapters/MRaidActivity;

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MRAID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 113
    .local v0, "isAvailable":Z
    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->shouldPreload:Z

    if-eqz v1, :cond_0

    .line 114
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    iget-boolean v1, v1, Lcom/fusepowered/mraid1/MRAIDInterstitial;->isReady:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->htmlBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 75
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 74
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplaying()Z
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->getMRaidActivity()Lcom/fusepowered/ads/adapters/MRaidActivity;

    move-result-object v0

    .line 307
    .local v0, "displayedActivity":Lcom/fusepowered/ads/adapters/MRaidActivity;
    if-eqz v0, :cond_0

    .line 308
    iget-boolean v1, v0, Lcom/fusepowered/ads/adapters/MRaidActivity;->isVisible:Z

    .line 310
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->isDisplaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->htmlBody:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 87
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->shouldPreload:Z

    if-eqz v0, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->preloadInterstitial()V

    :cond_2
    :goto_1
    move v0, v1

    .line 96
    goto :goto_0

    .line 90
    :cond_3
    const-string v0, "MRaidAdAdapter"

    const-string v2, "MRAID Ad Fake Loaded"

    invoke-static {v0, v2}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 92
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_1
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 326
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

.method public mraidInterstitialAcceptPressed(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V
    .locals 0
    .param p1, "mraidInterstitial"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    .line 208
    return-void
.end method

.method public mraidInterstitialFailedToLoad(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V
    .locals 2
    .param p1, "mraidInterstitial"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    .line 198
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNDEFINED:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 199
    const-string v0, "MRaidAdAdapter"

    const-string v1, "MRAID Ad Failed to Load"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 203
    :cond_0
    return-void
.end method

.method public mraidInterstitialFailedToShow()V
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 331
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToDisplay(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 334
    :cond_0
    return-void
.end method

.method public mraidInterstitialHide(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V
    .locals 8
    .param p1, "mraidInterstitial"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    const/4 v1, 0x1

    .line 177
    const-string v4, "MRaidAdAdapter"

    const-string v5, "MRAID Ad Hidden"

    invoke-static {v4, v5}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->hasReportedClose:Z

    if-nez v4, :cond_1

    .line 179
    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->hasReportedClose:Z

    .line 180
    iget-boolean v4, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->isRewarded:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->startDisplayTime:Ljava/util/Date;

    if-eqz v4, :cond_0

    .line 181
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->startDisplayTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 182
    .local v2, "duration":J
    iget v4, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->rewardTimer:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 183
    .local v1, "displayedLongEnoughForReward":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 184
    iget-object v4, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v4, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 187
    .end local v1    # "displayedLongEnoughForReward":Z
    .end local v2    # "duration":J
    :cond_0
    iget-object v4, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v4, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->getMRaidActivity()Lcom/fusepowered/ads/adapters/MRaidActivity;

    move-result-object v0

    .line 191
    .local v0, "displayedActivity":Lcom/fusepowered/ads/adapters/MRaidActivity;
    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/MRaidActivity;->finish()V

    .line 194
    :cond_2
    return-void

    .line 182
    .end local v0    # "displayedActivity":Lcom/fusepowered/ads/adapters/MRaidActivity;
    .restart local v2    # "duration":J
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mraidInterstitialLoaded(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V
    .locals 2
    .param p1, "mraidInterstitial"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->shouldPreload:Z

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "MRaidAdAdapter"

    const-string v1, "MRAID Ad Loaded"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 153
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->displayInterstitial()V

    goto :goto_0
.end method

.method public mraidInterstitialRejectPressed(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V
    .locals 0
    .param p1, "mraidInterstitial"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    .line 213
    return-void
.end method

.method public mraidInterstitialShow(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V
    .locals 2
    .param p1, "mraidInterstitial"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    .line 163
    const-string v0, "MRaidAdAdapter"

    const-string v1, "MRAID Ad Displayed"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->impressionBeacon:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->impressionBeacon:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->sendRequestToBeacon(Ljava/lang/String;)V

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_2

    .line 171
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->startDisplayTime:Ljava/util/Date;

    .line 173
    :cond_2
    return-void
.end method

.method public mraidNativeFeatureCallTel(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID Ad Wants to make phone call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public mraidNativeFeatureCreateCalendarEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventJSON"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID Ad Wants to create calendar event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public mraidNativeFeatureOpenBrowser(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Wants to display browser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->clickBeacon:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->clickBeacon:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->sendRequestToBeacon(Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    invoke-interface {v0, p1, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onOpenMRaidUrl(Ljava/lang/String;Landroid/app/Activity;)V

    .line 256
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 257
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->mraidInterstitialHide(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V

    .line 259
    :cond_1
    return-void
.end method

.method public mraidNativeFeatureOpenMarket(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 263
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Wants to display market: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->clickBeacon:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->clickBeacon:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->sendRequestToBeacon(Ljava/lang/String;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    invoke-interface {v0, p1, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onOpenMRaidUrl(Ljava/lang/String;Landroid/app/Activity;)V

    .line 274
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 275
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->mraidInterstitialHide(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V

    .line 277
    :cond_1
    return-void
.end method

.method public mraidNativeFeaturePlayVideo(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v2, "MRaidAdAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MRAID Ad Wants to play video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->getMRaidActivity()Lcom/fusepowered/ads/adapters/MRaidActivity;

    move-result-object v0

    .line 233
    .local v0, "displayedActivity":Lcom/fusepowered/ads/adapters/MRaidActivity;
    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v2, "cb_ms"

    iget-wide v4, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->closeButtonDelay:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 237
    const-string v2, "rti"

    iget-boolean v3, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->returnToInterstitial:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ads/adapters/MRaidActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 240
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public mraidNativeFeatureSendSms(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Wants to send SMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public mraidNativeFeatureStorePicture(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Wants to store a picture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
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
    .line 54
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    .line 58
    :cond_0
    if-nez p2, :cond_1

    .line 70
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v1, "script"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "htmlBody":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 64
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->htmlBody:Ljava/lang/String;

    .line 68
    :cond_2
    const-string v1, "beacon-click"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->clickBeacon:Ljava/lang/String;

    .line 69
    const-string v1, "beacon-impression"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->impressionBeacon:Ljava/lang/String;

    goto :goto_0
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x26
        0x0
    .end array-data
.end method

.method public setMRaidActivity(Lcom/fusepowered/ads/adapters/MRaidActivity;)V
    .locals 1
    .param p1, "mRaidActivity"    # Lcom/fusepowered/ads/adapters/MRaidActivity;

    .prologue
    .line 294
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->MRaidActivity:Ljava/lang/ref/WeakReference;

    .line 295
    return-void
.end method
