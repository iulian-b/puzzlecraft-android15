.class public Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;
.super Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;
.source "PuzzleCraftFuseActivity.java"

# interfaces
.implements Lcom/chillingo/liboffers/OfferSessionListener;


# static fields
.field private static final AD_ZONE:Ljava/lang/String; = "41bcfabe"

.field private static final DEFAULT_GOLD_VALUE:Ljava/lang/String; = "100"

.field private static final FUSEBOXX_KEY_IS_REWARD_AVAILABLE:Ljava/lang/String; = "reward_feature_available"

.field private static final REWARD_FEATURE_AVAILABILITY_RESPONSE:Ljava/lang/String; = "no"

.field private static final TAG:Ljava/lang/String; = "FuseAPIActivity"


# instance fields
.field private mIsOfferVisible:Z

.field private mOfferSession:Lcom/chillingo/liboffers/OfferSession;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsOfferVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->setupFuseboxGameConfig()V

    return-void
.end method

.method static synthetic access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)Lcom/chillingo/liboffers/OfferSession;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mOfferSession:Lcom/chillingo/liboffers/OfferSession;

    return-object v0
.end method

.method private activateOffersUI()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$3;

    invoke-direct {v0, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$3;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method private deactivateOffersUI()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$4;

    invoke-direct {v0, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$4;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method private hasZoneReward()Z
    .locals 2

    .prologue
    .line 106
    :try_start_0
    const-string v1, "41bcfabe"

    invoke-static {v1}, Lcom/fusepowered/FuseSDK;->zoneHasRewarded(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "exc":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 109
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupFuseboxGameConfig()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 114
    invoke-static {}, Lcom/fusepowered/FuseSDK;->getGameConfiguration()Ljava/util/HashMap;

    move-result-object v0

    .line 115
    .local v0, "gameConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v2, "reward_feature_available"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const-string v2, "reward_feature_available"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "no"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v3

    .line 121
    .local v1, "tempRewardFeatureAvailable":Z
    :goto_1
    iget-boolean v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsRewardFeatureAvailable:Z

    if-eq v1, v2, :cond_2

    .line 122
    iput-boolean v3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsRefreshShopRequired:Z

    .line 124
    :cond_2
    iput-boolean v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsRewardFeatureAvailable:Z

    .line 125
    const-string v2, "FuseAPIActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is reward feature available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsRewardFeatureAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v1    # "tempRewardFeatureAvailable":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public ageVerificationCriteriaMet()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->ageVerificationCriteriaMet()V

    .line 132
    const-string v0, "universal"

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$StoreType;->STORE_TYPE_GOOGLE_PLAY:Lcom/chillingo/liboffers/OfferSession$StoreType;

    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/chillingo/liboffers/OfferSessionFactory;->getInstance(Lcom/chillingo/liboffers/OfferSessionListener;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;Landroid/content/Context;)Lcom/chillingo/liboffers/OfferSession;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mOfferSession:Lcom/chillingo/liboffers/OfferSession;

    .line 133
    return-void
.end method

.method protected checkFuseBoxxAdAvailability()V
    .locals 3

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->hasZoneReward()Z

    move-result v0

    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mAdAvailable:Z

    .line 100
    const-string v0, "FuseAPIActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start receiver adAvailabilityResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mAdAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->refreshShop()V

    .line 102
    return-void
.end method

.method protected getTermsCompilantLevel()Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    return-object v0
.end method

.method protected getTermsIsPreCoppa()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public goldValueHasChanged(I)V
    .locals 1
    .param p1, "currentGoldAmount"    # I

    .prologue
    .line 225
    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$6;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;I)V

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method protected initializeAds()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$1;

    invoke-direct {v0, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$1;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)V

    .line 71
    .local v0, "fuseSDKListenerWrapper":Lcom/fusepowered/FuseSDKListener;
    const-string v1, "a8fd0193-20eb-4b7d-997b-a1614c3f55ba"

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Lcom/fusepowered/FuseSDK;->startSession(Ljava/lang/String;Landroid/app/Activity;Lcom/fusepowered/FuseSDKListener;Ljava/util/HashMap;)V

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsFuseActive:Z

    .line 73
    return-void
.end method

.method public levelHasChanged(I)V
    .locals 1
    .param p1, "currentLevel"    # I

    .prologue
    .line 215
    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$5;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;I)V

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public offersClosed()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public offersReleased()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsFuseActive:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/fusepowered/FuseSDK;->endSession()V

    .line 31
    :cond_0
    invoke-super {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->onDestroy()V

    .line 32
    return-void
.end method

.method public onMainMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 137
    const-string v0, "FuseAPIActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMainMenuVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mOfferSession:Lcom/chillingo/liboffers/OfferSession;

    if-eqz v0, :cond_0

    .line 139
    if-eqz p1, :cond_1

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsOfferVisible:Z

    .line 141
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->activateOffersUI()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsOfferVisible:Z

    .line 144
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->deactivateOffersUI()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsFuseActive:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/fusepowered/FuseSDK;->pauseSession()V

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->deactivateOffersUI()V

    .line 49
    invoke-super {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->onPause()V

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsFuseActive:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p0}, Lcom/fusepowered/FuseSDK;->resumeSession(Landroid/app/Activity;)V

    .line 38
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->setupFuseboxGameConfig()V

    .line 40
    :cond_0
    invoke-super {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->onResume()V

    .line 41
    return-void
.end method

.method public onSurfaceViewResumed()V
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsOfferVisible:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->activateOffersUI()V

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->onSurfaceViewResumed()V

    .line 191
    return-void
.end method

.method public pauseDrawing()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public restartDrawing()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method protected showRewardAd()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$2;

    invoke-direct {v0, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$2;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public showWall()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "FuseAPIActivity"

    const-string v1, "show reward called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->mIsRewardFeatureAvailable:Z

    if-eqz v0, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->hasZoneReward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->showRewardAd()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v0, "FuseAPIActivity"

    const-string v1, "reward feature disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
