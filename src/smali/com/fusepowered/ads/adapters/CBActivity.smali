.class public Lcom/fusepowered/ads/adapters/CBActivity;
.super Landroid/app/Activity;
.source "CBActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChartboostActivity"

.field public static final name:Ljava/lang/String; = "Chartboost"


# instance fields
.field private isRewarded:Z

.field private provider:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/CBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "is_rewarded"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/ads/adapters/CBActivity;->isRewarded:Z

    .line 38
    const-string v2, "instance_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 39
    .local v1, "instanceId":I
    invoke-static {v1}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->getInstance(I)Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/CBActivity;->provider:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    .line 40
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/CBActivity;->provider:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-virtual {v2, p0}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->setChartboostActivity(Landroid/app/Activity;)V

    .line 42
    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/CBActivity;->isRewarded:Z

    if-eqz v2, :cond_1

    .line 43
    const-string v2, "Default"

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "Default"

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v2, "Default"

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const-string v2, "Default"

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 63
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 28
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 29
    return-void
.end method
