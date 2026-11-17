.class public Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;
.super Ljava/lang/Object;
.source "ASTremorInterstitialProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# instance fields
.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private controllerId:Ljava/lang/String;

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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->context:Landroid/content/Context;

    .line 48
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain controllerId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->controllerId:Ljava/lang/String;

    .line 54
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'providerAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_4
    const-string v0, "providerAd"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    .line 60
    iget-object v1, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->controllerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->getProviderListener(Ljava/lang/String;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 62
    iget-object v1, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    if-nez v1, :cond_5

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not locate provider listener. Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_5
    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ASTremor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->appId:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->appId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 69
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain key \'appId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_7
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tremorvideo/sdk/android/videoad/TremorVideo;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/tremorvideo/sdk/android/videoad/TremorVideo;->start()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;->controllerId:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Ljava/util/Properties;)Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "com.tremorvideo.sdk.android.videoad.TremorVideo"

    invoke-static {v0}, Lcom/fusepowered/as/utils/ReflectionUtils;->canFindClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not find class. failing over"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    new-instance v0, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method


# virtual methods
.method public requestAd()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider$1;-><init>(Lcom/fusepowered/as/adapter/astremor/ASTremorInterstitialProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method
