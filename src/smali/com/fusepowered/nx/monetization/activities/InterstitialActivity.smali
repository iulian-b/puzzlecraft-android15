.class public Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;
.super Landroid/app/Activity;
.source "InterstitialActivity.java"


# static fields
.field public static final INTENT_EXTRA_AD_NAME:Ljava/lang/String; = "mraidAdName"

.field public static final INTENT_EXTRA_USER_CALL:Ljava/lang/String; = "mraidUserCall"


# instance fields
.field private adName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onBackPressedMRAID()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;->adName:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 68
    return-void
.end method

.method private onCreateMRAID()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mraidAdName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;->adName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mraidUserCall"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 55
    .local v0, "userCall":Z
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mraidUserCall"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 58
    const-string v1, "onCreateMRAID():Showing interstitial ad"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;->adName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;->finish()V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 41
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;->onBackPressedMRAID()V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;->onCreateMRAID()V

    .line 36
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
