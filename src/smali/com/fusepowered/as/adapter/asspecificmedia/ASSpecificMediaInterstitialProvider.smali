.class public Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;
.super Ljava/lang/Object;
.source "ASSpecificMediaInterstitialProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# instance fields
.field private asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    return-object v0
.end method

.method public static getInstance(Ljava/util/Properties;)Lcom/fusepowered/as/adapter/Provider;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    const-string v0, "com.vindicogroup.android.vindico.AdFacade"

    invoke-static {v0}, Lcom/fusepowered/as/utils/ReflectionUtils;->canFindClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not find class.  failing over"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "vindico SDK requires API 15+ calls.  Current API is %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    new-instance v0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method


# virtual methods
.method public requestAd()V
    .locals 5

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lcom/vindicogroup/android/vindico/Vindico;

    invoke-direct {v0}, Lcom/vindicogroup/android/vindico/Vindico;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 48
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-virtual {v2}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getLocationId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vindico/common/AdType;->Video:Lcom/vindico/common/AdType;

    new-instance v4, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider$1;

    invoke-direct {v4, p0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider$1;-><init>(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vindicogroup/android/vindico/Vindico;->getAd(Landroid/content/Context;Ljava/lang/String;Lcom/vindico/common/AdType;Lcom/vindicogroup/android/vindico/Vindico$IAdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 78
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto :goto_0
.end method
