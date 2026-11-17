.class public Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;
.super Ljava/lang/Object;
.source "ASVungleInterstitialProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# static fields
.field private static instance:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

.field private static monitor:Ljava/lang/Object;


# instance fields
.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private controllerId:Ljava/lang/String;

.field private hasAdPlayed:Z

.field private hasBeenCalled:Z

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field final vunglePub:Lcom/vungle/publisher/VunglePub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->monitor:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->vunglePub:Lcom/vungle/publisher/VunglePub;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->controllerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->hasAdPlayed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->hasAdPlayed:Z

    return p1
.end method

.method public static getInstance(Ljava/util/Properties;)Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v0, "com.vungle.publisher.VunglePub"

    invoke-static {v0}, Lcom/fusepowered/as/utils/ReflectionUtils;->canFindClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not find class.  failing over"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    sget-object v1, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    invoke-direct {v0}, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;-><init>()V

    sput-object v0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    .line 98
    :cond_1
    sget-object v0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    invoke-virtual {v0, p0}, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->configure(Ljava/util/Properties;)V

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    sget-object v0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public configure(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    return-void

    .line 50
    :cond_1
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->context:Landroid/content/Context;

    .line 56
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain controllerId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_3
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->controllerId:Ljava/lang/String;

    .line 62
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'providerAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    .line 68
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->controllerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->getProviderListener(Ljava/lang/String;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 70
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    if-nez v1, :cond_5

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not locate provider listener. Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_5
    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ASVungle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->appId:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->appId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'appId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAd()V
    .locals 3

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->hasAdPlayed:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->playAd()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->hasBeenCalled:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->hasBeenCalled:Z

    .line 120
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->vunglePub:Lcom/vungle/publisher/VunglePub;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->vunglePub:Lcom/vungle/publisher/VunglePub;

    new-instance v1, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;-><init>(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->setEventListener(Lcom/vungle/publisher/EventListener;)V

    goto :goto_0
.end method
