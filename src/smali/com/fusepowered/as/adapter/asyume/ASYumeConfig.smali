.class public Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;
.super Ljava/lang/Object;
.source "ASYumeConfig.java"


# instance fields
.field private context:Landroid/content/Context;

.field private controllerId:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field private server:Ljava/lang/String;

.field private yuMeAdParams:Lcom/yume/android/sdk/YuMeAdParams;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "YuMe does not support SDK lower than 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->context:Landroid/content/Context;

    .line 64
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain controllerId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->controllerId:Ljava/lang/String;

    .line 70
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain providerAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    .line 78
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->controllerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->getProviderListener(Ljava/lang/String;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 80
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    if-nez v1, :cond_4

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not locate provider listener. Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_4
    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ASYume"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "domain"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->domain:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->domain:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 88
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'domain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_6
    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ASYume"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "server"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->server:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->server:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->server:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 95
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_8
    new-instance v0, Lcom/yume/android/sdk/YuMeAdParams;

    invoke-direct {v0}, Lcom/yume/android/sdk/YuMeAdParams;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->yuMeAdParams:Lcom/yume/android/sdk/YuMeAdParams;

    .line 99
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->yuMeAdParams:Lcom/yume/android/sdk/YuMeAdParams;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->server:Ljava/lang/String;

    iput-object v1, v0, Lcom/yume/android/sdk/YuMeAdParams;->adServerUrl:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->yuMeAdParams:Lcom/yume/android/sdk/YuMeAdParams;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->domain:Ljava/lang/String;

    iput-object v1, v0, Lcom/yume/android/sdk/YuMeAdParams;->domainId:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->yuMeAdParams:Lcom/yume/android/sdk/YuMeAdParams;

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, v0, Lcom/yume/android/sdk/YuMeAdParams;->storageSize:F

    .line 102
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->yuMeAdParams:Lcom/yume/android/sdk/YuMeAdParams;

    iput v3, v0, Lcom/yume/android/sdk/YuMeAdParams;->adTimeout:I

    .line 103
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->yuMeAdParams:Lcom/yume/android/sdk/YuMeAdParams;

    iput v3, v0, Lcom/yume/android/sdk/YuMeAdParams;->videoTimeout:I

    .line 104
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->yuMeAdParams:Lcom/yume/android/sdk/YuMeAdParams;

    sget-object v1, Lcom/yume/android/sdk/YuMeStorageMode;->EXTERNAL_STORAGE:Lcom/yume/android/sdk/YuMeStorageMode;

    iput-object v1, v0, Lcom/yume/android/sdk/YuMeAdParams;->eStorageMode:Lcom/yume/android/sdk/YuMeStorageMode;

    .line 105
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->yuMeAdParams:Lcom/yume/android/sdk/YuMeAdParams;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/yume/android/sdk/YuMeAdParams;->bSupportSurvey:Ljava/lang/Boolean;

    .line 106
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getControllerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->controllerId:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    return-object v0
.end method

.method public getYuMeAdParams()Lcom/yume/android/sdk/YuMeAdParams;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->yuMeAdParams:Lcom/yume/android/sdk/YuMeAdParams;

    return-object v0
.end method
