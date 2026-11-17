.class public Lcom/fusepowered/as/controller/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# static fields
.field public static final CONTROLLER_ID_KEY:Ljava/lang/String; = "controllerId"


# instance fields
.field private final CONTROLLER_ID:Ljava/lang/String;

.field private ad:Lcom/fusepowered/as/model/ad/ProviderAd;

.field private adFactoryListener:Lcom/fusepowered/as/controller/listener/AdFactoryListener;

.field private adLoaded:Z

.field private aerServAdType:Lcom/fusepowered/as/AerServAdType;

.field private context:Landroid/content/Context;

.field private executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

.field private failedMessage:Ljava/lang/String;

.field private fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

.field private fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

.field private fetchPlacementTimer:Ljava/util/Timer;

.field private hasBegunLoading:Z

.field private hasBegunShowing:Z

.field private hasTimedOut:Z

.field private isDebug:Z

.field private keyWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private placement:Lcom/fusepowered/as/model/Placement;

.field private plc:Ljava/lang/String;

.field private preload:Z

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field private timeoutInMillis:I

.field private timeoutMessage:Ljava/lang/String;

.field private viewId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/AerServConfig;Lcom/fusepowered/as/AerServAdType;Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;Lcom/fusepowered/as/controller/listener/SaveShowListener;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    .line 37
    const-string v0, "Cannot execute placement.  Ad and all fallbacks failed."

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->failedMessage:Ljava/lang/String;

    .line 40
    iput-boolean v2, p0, Lcom/fusepowered/as/controller/AdManager;->hasBegunLoading:Z

    .line 41
    iput-boolean v2, p0, Lcom/fusepowered/as/controller/AdManager;->hasBegunShowing:Z

    .line 43
    iput-boolean v2, p0, Lcom/fusepowered/as/controller/AdManager;->adLoaded:Z

    .line 45
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->fetchPlacementTimer:Ljava/util/Timer;

    .line 46
    iput-boolean v2, p0, Lcom/fusepowered/as/controller/AdManager;->hasTimedOut:Z

    .line 48
    new-instance v0, Lcom/fusepowered/as/controller/AdManager$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/controller/AdManager$1;-><init>(Lcom/fusepowered/as/controller/AdManager;)V

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

    .line 64
    new-instance v0, Lcom/fusepowered/as/controller/AdManager$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/controller/AdManager$2;-><init>(Lcom/fusepowered/as/controller/AdManager;)V

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 170
    new-instance v0, Lcom/fusepowered/as/controller/AdManager$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/controller/AdManager$3;-><init>(Lcom/fusepowered/as/controller/AdManager;)V

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

    .line 184
    new-instance v0, Lcom/fusepowered/as/controller/AdManager$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/controller/AdManager$4;-><init>(Lcom/fusepowered/as/controller/AdManager;)V

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->adFactoryListener:Lcom/fusepowered/as/controller/listener/AdFactoryListener;

    .line 200
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot instantiate AdManager with null config"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot instantiate AdManager with null facadeType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot instantiate AdManager with null executePlacementListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdManager constructed"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/fusepowered/as/AerServConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->context:Landroid/content/Context;

    .line 207
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/as/utils/UrlBuilder;->buildUserAgent(Landroid/content/Context;)V

    .line 208
    iput-object p2, p0, Lcom/fusepowered/as/controller/AdManager;->aerServAdType:Lcom/fusepowered/as/AerServAdType;

    .line 209
    iput-object p3, p0, Lcom/fusepowered/as/controller/AdManager;->executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    .line 210
    iput-object p5, p0, Lcom/fusepowered/as/controller/AdManager;->viewId:Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/fusepowered/as/AerServConfig;->isDebug()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/as/controller/AdManager;->isDebug:Z

    .line 212
    invoke-virtual {p1}, Lcom/fusepowered/as/AerServConfig;->getTimeout()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/as/controller/AdManager;->timeoutInMillis:I

    .line 213
    invoke-virtual {p1}, Lcom/fusepowered/as/AerServConfig;->getKeywords()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->keyWords:Ljava/util/List;

    .line 214
    invoke-virtual {p1}, Lcom/fusepowered/as/AerServConfig;->getPlc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->plc:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Lcom/fusepowered/as/AerServConfig;->isPreload()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/as/controller/AdManager;->preload:Z

    .line 216
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/as/AerServConfig;->getEventListener()Lcom/fusepowered/as/AerServEventListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->register(Ljava/lang/String;Lcom/fusepowered/as/AerServEventListener;)V

    .line 217
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/fusepowered/as/controller/AdManager;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->register(Ljava/lang/String;Lcom/fusepowered/as/controller/listener/ProviderListener;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The ad took longer than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v2, p0, Lcom/fusepowered/as/controller/AdManager;->timeoutInMillis:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " second(s) to load."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->timeoutMessage:Ljava/lang/String;

    .line 220
    new-instance v0, Lcom/fusepowered/as/controller/AdManager$5;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/controller/AdManager$5;-><init>(Lcom/fusepowered/as/controller/AdManager;)V

    invoke-interface {p4, v0}, Lcom/fusepowered/as/controller/listener/SaveShowListener;->onSaveShow(Lcom/fusepowered/as/controller/listener/ShowListener;)V

    .line 236
    invoke-virtual {p1}, Lcom/fusepowered/as/AerServConfig;->isPreload()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preload is set, so execute the placement now"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/fusepowered/as/controller/AdManager;->executePlacement()V

    .line 240
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/controller/AdManager;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->fetchPlacementTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fusepowered/as/controller/AdManager;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/fusepowered/as/controller/AdManager;->hasBegunLoading:Z

    return v0
.end method

.method static synthetic access$102(Lcom/fusepowered/as/controller/AdManager;Lcom/fusepowered/as/model/Placement;)Lcom/fusepowered/as/model/Placement;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fusepowered/as/controller/AdManager;->placement:Lcom/fusepowered/as/model/Placement;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fusepowered/as/controller/AdManager;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/fusepowered/as/controller/AdManager;->adLoaded:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/fusepowered/as/controller/AdManager;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/fusepowered/as/controller/AdManager;->hasTimedOut:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/fusepowered/as/controller/AdManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->timeoutMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/controller/listener/FetchPlacementListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/controller/AdManager;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fusepowered/as/controller/AdManager;->buildAd()V

    return-void
.end method

.method static synthetic access$300(Lcom/fusepowered/as/controller/AdManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/model/ad/ProviderAd;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->ad:Lcom/fusepowered/as/model/ad/ProviderAd;

    return-object v0
.end method

.method static synthetic access$502(Lcom/fusepowered/as/controller/AdManager;Lcom/fusepowered/as/model/ad/ProviderAd;)Lcom/fusepowered/as/model/ad/ProviderAd;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fusepowered/as/controller/AdManager;->ad:Lcom/fusepowered/as/model/ad/ProviderAd;

    return-object p1
.end method

.method static synthetic access$600(Lcom/fusepowered/as/controller/AdManager;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fusepowered/as/controller/AdManager;->executeFallback()V

    return-void
.end method

.method static synthetic access$700(Lcom/fusepowered/as/controller/AdManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fusepowered/as/controller/AdManager;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fusepowered/as/controller/AdManager;->showAd()V

    return-void
.end method

.method static synthetic access$902(Lcom/fusepowered/as/controller/AdManager;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/fusepowered/as/controller/AdManager;->preload:Z

    return p1
.end method

.method private buildAd()V
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->placement:Lcom/fusepowered/as/model/Placement;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buildAd called while placement is still null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->placement:Lcom/fusepowered/as/model/Placement;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/Placement;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/controller/AdManager;->placement:Lcom/fusepowered/as/model/Placement;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/Placement;->getBody()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager;->adFactoryListener:Lcom/fusepowered/as/controller/listener/AdFactoryListener;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/as/factory/AdFactory;->buildAd(Ljava/util/Map;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V

    .line 327
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->placement:Lcom/fusepowered/as/model/Placement;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/Placement;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/as/model/ad/VirtualCurrencyHelper;->isVirtualCurrencyEnabled(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->VC_READY:Lcom/fusepowered/as/AerServEvent;

    new-instance v2, Lcom/fusepowered/as/AerServVirtualCurrency;

    iget-object v3, p0, Lcom/fusepowered/as/controller/AdManager;->placement:Lcom/fusepowered/as/model/Placement;

    invoke-virtual {v3}, Lcom/fusepowered/as/model/Placement;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fusepowered/as/AerServVirtualCurrency;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;Ljava/lang/Object;)V

    .line 330
    :cond_1
    return-void
.end method

.method private executeFallback()V
    .locals 4

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/fusepowered/as/controller/AdManager;->hasTimedOut:Z

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_FAILED:Lcom/fusepowered/as/AerServEvent;

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager;->timeoutMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;Ljava/lang/Object;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->placement:Lcom/fusepowered/as/model/Placement;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/Placement;->getNextFallback()Lcom/fusepowered/as/model/fallback/Fallback;

    move-result-object v0

    .line 264
    if-nez v0, :cond_2

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No more fallbacks"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_FAILED:Lcom/fusepowered/as/AerServEvent;

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager;->failedMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->getProviderListener(Ljava/lang/String;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFinished()V

    goto :goto_0

    .line 272
    :cond_2
    invoke-interface {v0}, Lcom/fusepowered/as/model/fallback/Fallback;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/ad/AdType;->THIRD_PARTY:Lcom/fusepowered/as/model/ad/AdType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/AdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    check-cast v0, Lcom/fusepowered/as/model/fallback/ProviderFallback;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/fallback/ProviderFallback;->getAd()Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->ad:Lcom/fusepowered/as/model/ad/ProviderAd;

    .line 274
    invoke-direct {p0}, Lcom/fusepowered/as/controller/AdManager;->showAd()V

    goto :goto_0

    .line 276
    :cond_3
    new-instance v1, Lcom/fusepowered/as/controller/command/FetchAdCommand;

    check-cast v0, Lcom/fusepowered/as/model/fallback/ProxyFallback;

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager;->keyWords:Ljava/util/List;

    iget-object v3, p0, Lcom/fusepowered/as/controller/AdManager;->fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/fusepowered/as/controller/command/FetchAdCommand;-><init>(Lcom/fusepowered/as/model/fallback/ProxyFallback;Ljava/util/List;Lcom/fusepowered/as/controller/listener/FetchAdListener;)V

    invoke-virtual {v1}, Lcom/fusepowered/as/controller/command/FetchAdCommand;->execute()V

    goto :goto_0
.end method

.method private showAd()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 282
    iget-boolean v0, p0, Lcom/fusepowered/as/controller/AdManager;->hasTimedOut:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This ad has timed out"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_FAILED:Lcom/fusepowered/as/AerServEvent;

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager;->timeoutMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;Ljava/lang/Object;)V

    .line 319
    :goto_0
    return-void

    .line 289
    :cond_0
    iput-boolean v1, p0, Lcom/fusepowered/as/controller/AdManager;->adLoaded:Z

    .line 293
    iget-boolean v0, p0, Lcom/fusepowered/as/controller/AdManager;->preload:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->ad:Lcom/fusepowered/as/model/ad/ProviderAd;

    invoke-interface {v0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getIsShowAdCommandRequiredOnPreload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preload is still on so return from showAd"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->PRELOAD_READY:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/as/controller/AdManager;->hasBegunShowing:Z

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This ad has already begun to be shown so return from showAd"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->ad:Lcom/fusepowered/as/model/ad/ProviderAd;

    invoke-interface {v0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getIsShowAdCommandRequiredOnPreload()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/fusepowered/as/controller/AdManager;->preload:Z

    if-eqz v0, :cond_3

    .line 306
    iput-boolean v1, p0, Lcom/fusepowered/as/controller/AdManager;->hasBegunShowing:Z

    .line 309
    :cond_3
    new-instance v0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;

    iget-object v1, p0, Lcom/fusepowered/as/controller/AdManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager;->ad:Lcom/fusepowered/as/model/ad/ProviderAd;

    iget-object v3, p0, Lcom/fusepowered/as/controller/AdManager;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    iget-object v4, p0, Lcom/fusepowered/as/controller/AdManager;->aerServAdType:Lcom/fusepowered/as/AerServAdType;

    iget-object v5, p0, Lcom/fusepowered/as/controller/AdManager;->viewId:Ljava/lang/String;

    iget-object v6, p0, Lcom/fusepowered/as/controller/AdManager;->CONTROLLER_ID:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/fusepowered/as/controller/AdManager;->isDebug:Z

    iget-boolean v8, p0, Lcom/fusepowered/as/controller/AdManager;->preload:Z

    invoke-direct/range {v0 .. v8}, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;-><init>(Landroid/content/Context;Lcom/fusepowered/as/model/ad/ProviderAd;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/AerServAdType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->execute()V

    goto :goto_0
.end method


# virtual methods
.method public executePlacement()V
    .locals 5

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/as/controller/AdManager;->hasBegunLoading:Z

    .line 244
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager;->fetchPlacementTimer:Ljava/util/Timer;

    new-instance v1, Lcom/fusepowered/as/controller/AdManager$6;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/controller/AdManager$6;-><init>(Lcom/fusepowered/as/controller/AdManager;)V

    iget v2, p0, Lcom/fusepowered/as/controller/AdManager;->timeoutInMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 253
    new-instance v0, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;

    iget-object v1, p0, Lcom/fusepowered/as/controller/AdManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/as/controller/AdManager;->plc:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/as/controller/AdManager;->keyWords:Ljava/util/List;

    iget-object v4, p0, Lcom/fusepowered/as/controller/AdManager;->fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/fusepowered/as/controller/listener/FetchPlacementListener;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;->execute()V

    .line 254
    return-void
.end method
