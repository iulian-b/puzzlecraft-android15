.class public Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;
.super Ljava/lang/Object;
.source "ThirdPartyProviderAd.java"

# interfaces
.implements Lcom/fusepowered/as/model/ad/ProviderAd;


# instance fields
.field private transient data:Lorg/json/JSONObject;

.field private isShowAdCommandRequiredOnPreload:Z

.field private providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->isShowAdCommandRequiredOnPreload:Z

    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provider name cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    iput-object p1, p0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->providerName:Ljava/lang/String;

    .line 24
    const-string v0, "ASAdColony"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->isShowAdCommandRequiredOnPreload:Z

    .line 31
    :cond_2
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iput-object v0, p0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->data:Lorg/json/JSONObject;

    .line 44
    :goto_0
    return-void

    .line 39
    :cond_3
    iput-object p2, p0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->data:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an error creating ThirdPartyAd as could not parse json"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdType()Lcom/fusepowered/as/model/ad/AdType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->THIRD_PARTY:Lcom/fusepowered/as/model/ad/AdType;

    return-object v0
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIsShowAdCommandRequiredOnPreload()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->isShowAdCommandRequiredOnPreload:Z

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->providerName:Ljava/lang/String;

    return-object v0
.end method
