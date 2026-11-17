.class public Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;
.super Ljava/lang/Object;
.source "ASAerServConfig.java"


# instance fields
.field private context:Landroid/content/Context;

.field private controllerId:Ljava/lang/String;

.field private isDebug:Z

.field private providerAd:Lcom/fusepowered/as/model/ad/ProviderAd;

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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->context:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->controllerId:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->controllerId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain controllerId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->controllerId:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->getProviderListener(Ljava/lang/String;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 60
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not locate provider listener. Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/ProviderAd;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->providerAd:Lcom/fusepowered/as/model/ad/ProviderAd;

    .line 65
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->providerAd:Lcom/fusepowered/as/model/ad/ProviderAd;

    if-nez v0, :cond_3

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain providerAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    const-string v0, "isDebug"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "isDebug"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->isDebug:Z

    .line 70
    return-void

    .line 69
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getControllerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->controllerId:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderAd()Lcom/fusepowered/as/model/ad/ProviderAd;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->providerAd:Lcom/fusepowered/as/model/ad/ProviderAd;

    return-object v0
.end method

.method public getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->isDebug:Z

    return v0
.end method
