.class public Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;
.super Ljava/lang/Object;
.source "ASAerServBannerProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# instance fields
.field private asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

.field private properties:Ljava/util/Properties;

.field private vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->properties:Ljava/util/Properties;

    .line 37
    const-string v0, "viewGroup"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain viewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    const-string v0, "viewGroup"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->viewGroup:Landroid/view/ViewGroup;

    .line 42
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->asAerServConfig:Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->viewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Ljava/util/Properties;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->vastPlayer:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    return-object p1
.end method

.method public static getInstance(Ljava/util/Properties;)Lcom/fusepowered/as/adapter/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method


# virtual methods
.method public requestAd()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;-><init>(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)V

    .line 125
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
