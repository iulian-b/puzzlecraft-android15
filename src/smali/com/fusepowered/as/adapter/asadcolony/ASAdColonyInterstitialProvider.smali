.class public Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;
.super Ljava/lang/Object;
.source "ASAdColonyInterstitialProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# static fields
.field private static final AD_TIMEOUT_SEC:J = 0x5L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static instance:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

.field private static monitor:Ljava/lang/Object;


# instance fields
.field private controllerId:Ljava/lang/String;

.field private hasBeenConfigured:Z

.field private isAdAvailable:Ljava/lang/Boolean;

.field private isPreload:Z

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field private zoneIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->LOG_TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->monitor:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->hasBeenConfigured:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->controllerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->isAdAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->isAdAvailable:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->isPreload:Z

    return v0
.end method

.method static synthetic access$400(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->showAd()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Ljava/util/Properties;)Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "com.jirbo.adcolony.AdColony"

    invoke-static {v0}, Lcom/fusepowered/as/utils/ReflectionUtils;->canFindClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not find class.  failing over"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    sget-object v1, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-direct {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;-><init>()V

    sput-object v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    .line 127
    :cond_1
    sget-object v2, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    const-string v0, "controllerId"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->controllerId:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-virtual {v0, p0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->configure(Ljava/util/Properties;)V

    .line 129
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    sget-object v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private showAd()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>()V

    new-instance v1, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$1;-><init>(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show()V

    .line 157
    return-void
.end method


# virtual methods
.method public configure(Ljava/util/Properties;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string v0, "isPreload"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain isPreload"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    const-string v0, "isPreload"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->isPreload:Z

    .line 63
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->controllerId:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->controllerId:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->getProviderListener(Ljava/lang/String;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 66
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not locate provider listener. Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->hasBeenConfigured:Z

    if-eqz v0, :cond_2

    .line 113
    :goto_0
    return-void

    .line 74
    :cond_2
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    const-string v0, "context"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 80
    const-string v1, "controllerId"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain controllerId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_4
    const-string v1, "providerAd"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain providerAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_5
    const-string v1, "providerAd"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    .line 90
    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ASAdColony"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "AdColonyAppID"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 93
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Ad Colony app ID cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "ASAdColony"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "AdColonyZoneIDs"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v1, v2

    .line 99
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 100
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_8
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->zoneIds:[Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->zoneIds:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->zoneIds:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_a

    .line 108
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Ad Colony zone ID cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_a
    check-cast v0, Landroid/app/Activity;

    const-string v1, "version:1.0,store:google"

    iget-object v2, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->zoneIds:[Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->hasBeenConfigured:Z

    goto/16 :goto_0
.end method

.method public requestAd()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->isAdAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;-><init>(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)V

    .line 184
    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->addAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V

    .line 188
    new-instance v1, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$3;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$3;-><init>(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V

    .line 201
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 219
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->isPreload:Z

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->controllerId:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->PRELOAD_READY:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->isAdAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->showAd()V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->isAdAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto :goto_0

    .line 214
    :cond_3
    sget-object v0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter combination: isAvaiable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->isAdAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPreload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->isPreload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controllerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->controllerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
