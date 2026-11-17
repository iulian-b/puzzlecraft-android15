.class public Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;
.super Ljava/lang/Object;
.source "ASAerServInterstitialProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider$1;
    }
.end annotation


# instance fields
.field private asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

.field private properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->properties:Ljava/util/Properties;

    .line 30
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    .line 31
    return-void
.end method

.method public static getInstance(Ljava/util/Properties;)Lcom/fusepowered/as/adapter/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method


# virtual methods
.method public requestAd()V
    .locals 5

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getProviderAd()Lcom/fusepowered/as/model/ad/ProviderAd;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting ad from AerServ Interstitial Provider with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 43
    const/4 v0, 0x0

    .line 48
    sget-object v3, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider$1;->$SwitchMap$com$aerserv$sdk$model$ad$AdType:[I

    invoke-interface {v1}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/as/model/ad/AdType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 74
    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    invoke-virtual {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getControllerId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/as/AerServEvent;->AD_FAILED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v3, v4}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 75
    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    invoke-virtual {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 80
    :goto_0
    if-eqz v0, :cond_0

    .line 81
    const-string v3, "providerAd"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 82
    const-string v1, "controllerId"

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    invoke-virtual {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getControllerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 83
    const-string v1, "payload"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 84
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    :cond_0
    return-void

    .line 51
    :pswitch_0
    const-string v0, "mraidPlayVideoUrl"

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->properties:Ljava/util/Properties;

    const-string v4, "mraidPlayVideoUrl"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :pswitch_1
    const-string v0, "mraidBannerViewId"

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->properties:Ljava/util/Properties;

    const-string v4, "mraidBannerViewId"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "mraidExpandUrl"

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->properties:Ljava/util/Properties;

    const-string v4, "mraidExpandUrl"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->properties:Ljava/util/Properties;

    const-string v3, "mraidExpandCustomClose"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    const-string v3, "mraidExpandCustomClose"

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    invoke-virtual {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_4
    move-object v0, v1

    .line 66
    check-cast v0, Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VAST is a VPAID creative"

    invoke-static {v0, v3}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    invoke-virtual {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 70
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    invoke-virtual {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
