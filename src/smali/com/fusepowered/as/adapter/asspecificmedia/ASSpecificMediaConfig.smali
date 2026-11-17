.class public Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;
.super Ljava/lang/Object;
.source "ASSpecificMediaConfig.java"


# instance fields
.field private context:Landroid/content/Context;

.field private controllerId:Ljava/lang/String;

.field private locationId:Ljava/lang/String;

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->context:Landroid/content/Context;

    .line 52
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain controllerId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->controllerId:Ljava/lang/String;

    .line 58
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain providerAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    .line 64
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->controllerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->getProviderListener(Ljava/lang/String;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 66
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    if-nez v1, :cond_3

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not locate provider listener. Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ASSpecificMedia"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "locationId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->locationId:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->locationId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->locationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'locationId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_5
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'controllerId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_6
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->controllerId:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getControllerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->controllerId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->locationId:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    return-object v0
.end method
