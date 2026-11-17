.class public Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;
.super Ljava/lang/Object;
.source "ASSpecificMediaBannerProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# instance fields
.field private asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "viewGroup"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain viewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    const-string v0, "viewGroup"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->viewGroup:Landroid/view/ViewGroup;

    .line 34
    new-instance v0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->viewGroup:Landroid/view/ViewGroup;

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
    .line 41
    const-string v0, "com.vindicogroup.android.vindico.AdFacade"

    invoke-static {v0}, Lcom/fusepowered/as/utils/ReflectionUtils;->canFindClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not find class.  failing over"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 47
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

    .line 50
    :cond_1
    new-instance v0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method


# virtual methods
.method public requestAd()V
    .locals 5

    .prologue
    .line 60
    :try_start_0
    new-instance v0, Lcom/vindicogroup/android/vindico/Vindico;

    invoke-direct {v0}, Lcom/vindicogroup/android/vindico/Vindico;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 63
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-virtual {v2}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getLocationId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vindico/common/AdType;->Display:Lcom/vindico/common/AdType;

    new-instance v4, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider$1;

    invoke-direct {v4, p0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider$1;-><init>(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vindicogroup/android/vindico/Vindico;->getAd(Landroid/content/Context;Ljava/lang/String;Lcom/vindico/common/AdType;Lcom/vindicogroup/android/vindico/Vindico$IAdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 98
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->asSpecificMediaConfig:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto :goto_0
.end method
