.class public Lcom/fusepowered/ads/adapters/MRaidActivity;
.super Landroid/app/Activity;
.source "MRaidActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRaidActivity"


# instance fields
.field private firstResume:Z

.field private interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

.field public isVisible:Z

.field private provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

.field private registryId:I

.field private rotateMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->firstResume:Z

    return-void
.end method

.method private getOrientationValue(I)I
    .locals 1
    .param p1, "rotateMode"    # I

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 69
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 62
    :pswitch_0
    const/16 v0, 0xe

    goto :goto_0

    .line 64
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 66
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 119
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 126
    :cond_0
    :goto_0
    const-string v0, "rti"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .line 129
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidActivity;->finish()V

    .line 132
    :cond_1
    return-void

    .line 121
    :cond_2
    if-nez p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdSkipped(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 114
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->mraidInterstitialHide(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V

    .line 115
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "registryId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->registryId:I

    .line 42
    iget v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->registryId:I

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/MRaidRegistry;->getProvider(I)Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    .line 43
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->setMRaidActivity(Lcom/fusepowered/ads/adapters/MRaidActivity;)V

    .line 48
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rotate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->rotateMode:I

    .line 49
    iget v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->rotateMode:I

    invoke-direct {p0, v0}, Lcom/fusepowered/ads/adapters/MRaidActivity;->getOrientationValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/MRaidActivity;->setRequestedOrientation(I)V

    .line 51
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->getInterstitial()Lcom/fusepowered/mraid1/MRAIDInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .line 52
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    invoke-virtual {v0, p0}, Lcom/fusepowered/mraid1/MRAIDInterstitial;->updateContext(Landroid/content/Context;)V

    .line 54
    const-string v0, "MRaidActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidActivity;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->isVisible:Z

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->isVisible:Z

    .line 78
    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->firstResume:Z

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->firstResume:Z

    .line 84
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidActivity;->finish()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    invoke-virtual {v1}, Lcom/fusepowered/mraid1/MRAIDInterstitial;->show()Z

    move-result v0

    .line 88
    .local v0, "didShow":Z
    if-nez v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/MRaidActivity;->provider:Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    invoke-virtual {v1}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->mraidInterstitialFailedToShow()V

    .line 90
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/MRaidActivity;->finish()V

    goto :goto_0
.end method
