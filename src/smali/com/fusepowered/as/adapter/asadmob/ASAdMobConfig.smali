.class public Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;
.super Ljava/lang/Object;
.source "ASAdMobConfig.java"


# instance fields
.field private adMobAdUnitId:Ljava/lang/String;

.field private adMobDeviceId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private controllerId:Ljava/lang/String;

.field private isDebug:Z

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->context:Landroid/content/Context;

    .line 66
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain controllerId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->controllerId:Ljava/lang/String;

    .line 72
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain providerAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    .line 78
    iget-object v2, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->controllerId:Ljava/lang/String;

    invoke-static {v2}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->getProviderListener(Ljava/lang/String;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 80
    iget-object v2, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    if-nez v2, :cond_3

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not locate provider listener. Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ASAdMob"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "AdMobAdUnitID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->adMobAdUnitId:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->adMobAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->adMobAdUnitId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 88
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'AdMobAdUnitID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->makeUpperCaseMD5AndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->adMobDeviceId:Ljava/lang/String;

    .line 94
    const-string v0, "isDebug"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 95
    iput-boolean v1, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->isDebug:Z

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_6
    const-string v0, "isDebug"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->isDebug:Z

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private makeUpperCaseMD5AndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const/4 v0, 0x0

    .line 113
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 120
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 121
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 123
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 124
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :catch_0
    move-exception v1

    .line 116
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAdMobAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->adMobAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdMobDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->adMobDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getControllerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->controllerId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDebug()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->isDebug:Z

    return v0
.end method

.method public getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadmob/ASAdMobConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    return-object v0
.end method
