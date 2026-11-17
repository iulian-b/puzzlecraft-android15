.class public Lcom/fusepowered/ads/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/fusepowered/ads/adapters/AdAdapterListener;
.implements Lcom/fusepowered/ads/AdLoader$AdLoaderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/AdManager$AdTrackingReporter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdManager"

.field private static availableAdProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adCheckRequest:Lcom/fusepowered/ads/AdCheckRequest;

.field private adLoaderTask:Lcom/fusepowered/ads/AdLoader;

.field private adZoneDisplayCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private adZoneName:Ljava/lang/String;

.field private adZones:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/ads/AdZone;",
            ">;"
        }
    .end annotation
.end field

.field private allProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private currentAdZone:Lcom/fusepowered/ads/AdZone;

.field private currentDialog:Landroid/app/AlertDialog;

.field private displayRequest:Lcom/fusepowered/ads/DisplayRequest;

.field private handler:Landroid/os/Handler;

.field private listener:Lcom/fusepowered/ads/AdManagerListener;

.field private final reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;


# direct methods
.method public constructor <init>([Lcom/fusepowered/api/model/AdProviderConfig;Ljava/util/HashMap;Lcom/fusepowered/ads/AdManager$AdTrackingReporter;)V
    .locals 1
    .param p1, "providers"    # [Lcom/fusepowered/api/model/AdProviderConfig;
    .param p3, "reporter"    # Lcom/fusepowered/ads/AdManager$AdTrackingReporter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fusepowered/api/model/AdProviderConfig;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/ads/AdZone;",
            ">;",
            "Lcom/fusepowered/ads/AdManager$AdTrackingReporter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    new-instance v0, Lcom/fusepowered/ads/AdProviderFactory;

    invoke-direct {v0}, Lcom/fusepowered/ads/AdProviderFactory;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fusepowered/ads/AdManager;-><init>([Lcom/fusepowered/api/model/AdProviderConfig;Ljava/util/HashMap;Lcom/fusepowered/ads/AdManager$AdTrackingReporter;Lcom/fusepowered/ads/AdProviderFactory;)V

    .line 62
    return-void
.end method

.method public constructor <init>([Lcom/fusepowered/api/model/AdProviderConfig;Ljava/util/HashMap;Lcom/fusepowered/ads/AdManager$AdTrackingReporter;Lcom/fusepowered/ads/AdProviderFactory;)V
    .locals 9
    .param p1, "providers"    # [Lcom/fusepowered/api/model/AdProviderConfig;
    .param p3, "reporter"    # Lcom/fusepowered/ads/AdManager$AdTrackingReporter;
    .param p4, "providerFactory"    # Lcom/fusepowered/ads/AdProviderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fusepowered/api/model/AdProviderConfig;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/ads/AdZone;",
            ">;",
            "Lcom/fusepowered/ads/AdManager$AdTrackingReporter;",
            "Lcom/fusepowered/ads/AdProviderFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    .line 65
    iput-object p3, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    .line 66
    if-eqz p2, :cond_1

    .end local p2    # "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    :goto_0
    iput-object p2, p0, Lcom/fusepowered/ads/AdManager;->adZones:Ljava/util/HashMap;

    .line 67
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/fusepowered/ads/AdManager;->adZoneDisplayCount:Ljava/util/HashMap;

    .line 68
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/fusepowered/ads/AdManager;->handler:Landroid/os/Handler;

    .line 70
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v5, "providersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    if-eqz p1, :cond_3

    .line 72
    move-object v0, p1

    .local v0, "arr$":[Lcom/fusepowered/api/model/AdProviderConfig;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 73
    .local v4, "providerConfig":Lcom/fusepowered/api/model/AdProviderConfig;
    iget-boolean v6, v4, Lcom/fusepowered/api/model/AdProviderConfig;->isEnabled:Z

    if-nez v6, :cond_2

    .line 74
    const-string v6, "AdManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping ad provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "arr$":[Lcom/fusepowered/api/model/AdProviderConfig;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "providerConfig":Lcom/fusepowered/api/model/AdProviderConfig;
    .end local v5    # "providersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    .restart local p2    # "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 77
    .restart local v0    # "arr$":[Lcom/fusepowered/api/model/AdProviderConfig;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "providerConfig":Lcom/fusepowered/api/model/AdProviderConfig;
    .restart local v5    # "providersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    :cond_2
    invoke-virtual {p4, v4}, Lcom/fusepowered/ads/AdProviderFactory;->createAdProvider(Lcom/fusepowered/api/model/AdProviderConfig;)Lcom/fusepowered/ads/adapters/AdAdapter;

    move-result-object v3

    .line 78
    .local v3, "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v3, p0}, Lcom/fusepowered/ads/adapters/AdAdapter;->setListener(Lcom/fusepowered/ads/adapters/AdAdapterListener;)V

    .line 80
    iget v6, v4, Lcom/fusepowered/api/model/AdProviderConfig;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 84
    .end local v0    # "arr$":[Lcom/fusepowered/api/model/AdProviderConfig;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    .end local v4    # "providerConfig":Lcom/fusepowered/api/model/AdProviderConfig;
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v6, Lcom/fusepowered/ads/AdManager;->availableAdProviders:Ljava/util/ArrayList;

    .line 85
    iput-object v5, p0, Lcom/fusepowered/ads/AdManager;->allProviders:Ljava/util/Map;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdCheckRequest;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adCheckRequest:Lcom/fusepowered/ads/AdCheckRequest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/AdCheckRequest;)Lcom/fusepowered/ads/AdCheckRequest;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;
    .param p1, "x1"    # Lcom/fusepowered/ads/AdCheckRequest;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fusepowered/ads/AdManager;->adCheckRequest:Lcom/fusepowered/ads/AdCheckRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fusepowered/ads/AdManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fusepowered/ads/AdManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fusepowered/ads/AdManager;->currentDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdZone;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->currentAdZone:Lcom/fusepowered/ads/AdZone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdManager$AdTrackingReporter;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/DisplayRequest;Lcom/fusepowered/ads/adapters/AdAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;
    .param p1, "x1"    # Lcom/fusepowered/ads/DisplayRequest;
    .param p2, "x2"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/AdManager;->attemptToDisplayAd(Lcom/fusepowered/ads/DisplayRequest;Lcom/fusepowered/ads/adapters/AdAdapter;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/fusepowered/ads/AdManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adZoneName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/DisplayRequest;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    return-object v0
.end method

.method static synthetic access$802(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/DisplayRequest;)Lcom/fusepowered/ads/DisplayRequest;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/ads/AdManager;
    .param p1, "x1"    # Lcom/fusepowered/ads/DisplayRequest;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    return-object p1
.end method

.method private attemptToDisplayAd(Lcom/fusepowered/ads/DisplayRequest;Lcom/fusepowered/ads/adapters/AdAdapter;)Z
    .locals 8
    .param p1, "displayRequest"    # Lcom/fusepowered/ads/DisplayRequest;
    .param p2, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    const/4 v2, 0x0

    .line 472
    invoke-virtual {p1, p2}, Lcom/fusepowered/ads/DisplayRequest;->onAttemptToDisplayProvider(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 473
    const-string v3, "AdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to display ad with provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :try_start_0
    invoke-virtual {p2}, Lcom/fusepowered/ads/adapters/AdAdapter;->displayAd()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 483
    .local v0, "didDisplay":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 484
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p2}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v4

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportAdDisplayRequested(II)V

    .line 485
    invoke-virtual {p1, v2}, Lcom/fusepowered/ads/DisplayRequest;->setIsWaitingToDisplayAd(Z)V

    .line 486
    const/4 v2, 0x1

    .line 490
    :goto_1
    return v2

    .line 478
    .end local v0    # "didDisplay":Z
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 480
    .restart local v0    # "didDisplay":Z
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p2}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v4

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v5

    invoke-virtual {p1}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v6

    sget-object v7, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportShowAdFailed(IIFLcom/fusepowered/util/FuseProviderError;)V

    goto :goto_0

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, "AdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdAdapter.displayAd() return false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private countDisplayRequestForZone(Lcom/fusepowered/ads/AdZone;)Z
    .locals 4
    .param p1, "zone"    # Lcom/fusepowered/ads/AdZone;

    .prologue
    .line 372
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->adZoneDisplayCount:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/fusepowered/ads/AdZone;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 373
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/Integer;

    .end local v0    # "count":Ljava/lang/Integer;
    iget v2, p1, Lcom/fusepowered/ads/AdZone;->frequency:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 379
    .restart local v0    # "count":Ljava/lang/Integer;
    :goto_0
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->adZoneDisplayCount:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/fusepowered/ads/AdZone;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/fusepowered/ads/AdManager;->shouldDisplayAdForZoneWithCount(Lcom/fusepowered/ads/AdZone;I)Z

    move-result v2

    return v2

    .line 376
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .end local v0    # "count":Ljava/lang/Integer;
    .local v1, "count":Ljava/lang/Integer;
    move-object v0, v1

    .end local v1    # "count":Ljava/lang/Integer;
    .restart local v0    # "count":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private currentZoneHasRewardedObject()Z
    .locals 3

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v0

    .line 466
    .local v0, "currentzone":Lcom/fusepowered/ads/AdZone;
    iget-object v2, v0, Lcom/fusepowered/ads/AdZone;->rewardedObject:Lcom/fusepowered/RewardedObject;

    .line 467
    .local v2, "rewardedObject":Lcom/fusepowered/RewardedObject;
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 468
    .local v1, "isValid":Z
    :goto_0
    return v1

    .line 467
    .end local v1    # "isValid":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAdProvidersForWaterfall(Lcom/fusepowered/ads/Waterfall;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "waterfall"    # Lcom/fusepowered/ads/Waterfall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/ads/Waterfall;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/fusepowered/ads/Waterfall;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v5, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    invoke-virtual {p1}, Lcom/fusepowered/ads/Waterfall;->getOrderedProviders()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 167
    .local v4, "providerId":I
    iget-object v6, p0, Lcom/fusepowered/ads/AdManager;->allProviders:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 168
    .local v3, "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    .end local v4    # "providerId":I
    :cond_1
    return-object v5
.end method

.method public static getAvailableAdProviders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/fusepowered/ads/AdManager;->availableAdProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getCheckAdErrorForProviders(Ljava/util/ArrayList;)Lcom/fusepowered/util/FuseCheckAdError;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;)",
            "Lcom/fusepowered/util/FuseCheckAdError;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    const/4 v0, 0x0

    .line 224
    .local v0, "available":Z
    const/4 v1, 0x0

    .line 225
    .local v1, "hasRTN":Z
    const/4 v3, 0x0

    .line 226
    .local v3, "nofill":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 227
    .local v4, "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    iget-boolean v5, v4, Lcom/fusepowered/ads/adapters/AdAdapter;->isRTN:Z

    if-eqz v5, :cond_1

    .line 228
    const/4 v1, 0x1

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v4}, Lcom/fusepowered/ads/adapters/AdAdapter;->isAdAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 230
    const-string v5, "AdManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAdAvailable() found available provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/fusepowered/ads/adapters/AdAdapter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    .line 238
    .end local v4    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    :cond_2
    if-eqz v0, :cond_4

    .line 239
    const/4 v5, 0x0

    .line 249
    :goto_1
    return-object v5

    .line 233
    .restart local v4    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    :cond_3
    iget-object v5, v4, Lcom/fusepowered/ads/adapters/AdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    if-eqz v5, :cond_0

    .line 234
    const/4 v3, 0x1

    goto :goto_0

    .line 240
    .end local v4    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    :cond_4
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v5

    iget-boolean v5, v5, Lcom/fusepowered/ads/AdZone;->enabled:Z

    if-nez v5, :cond_5

    .line 241
    sget-object v5, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_DISABLED:Lcom/fusepowered/util/FuseCheckAdError;

    goto :goto_1

    .line 242
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 243
    sget-object v5, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_EMPTY:Lcom/fusepowered/util/FuseCheckAdError;

    goto :goto_1

    .line 244
    :cond_6
    if-eqz v1, :cond_7

    .line 245
    sget-object v5, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_NO_FILL_RTN:Lcom/fusepowered/util/FuseCheckAdError;

    goto :goto_1

    .line 246
    :cond_7
    if-eqz v3, :cond_8

    .line 247
    sget-object v5, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_NO_FILL:Lcom/fusepowered/util/FuseCheckAdError;

    goto :goto_1

    .line 249
    :cond_8
    sget-object v5, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_TIMEOUT:Lcom/fusepowered/util/FuseCheckAdError;

    goto :goto_1
.end method

.method private internalDisplayAd(Lcom/fusepowered/ads/DisplayRequest;)Z
    .locals 14
    .param p1, "displayRequest"    # Lcom/fusepowered/ads/DisplayRequest;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 395
    invoke-virtual {p1}, Lcom/fusepowered/ads/DisplayRequest;->getAdAdapters()Ljava/util/ArrayList;

    move-result-object v3

    .line 397
    .local v3, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    iget-object v10, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v11

    invoke-interface {v10, v9, v11}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportAdDisplayRequested(II)V

    .line 399
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 400
    .local v2, "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/AdAdapter;->isAdAvailable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 402
    iget-boolean v10, v2, Lcom/fusepowered/ads/adapters/AdAdapter;->isRewarded:Z

    if-eqz v10, :cond_1

    iget-boolean v10, p1, Lcom/fusepowered/ads/DisplayRequest;->hasShownPreroll:Z

    if-nez v10, :cond_1

    iget-boolean v10, p1, Lcom/fusepowered/ads/DisplayRequest;->shouldShowPreroll:Z

    if-eqz v10, :cond_1

    invoke-direct {p0}, Lcom/fusepowered/ads/AdManager;->currentZoneHasRewardedObject()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/fusepowered/ads/AdManager;->currentAdZone:Lcom/fusepowered/ads/AdZone;

    iget-object v10, v10, Lcom/fusepowered/ads/AdZone;->rewardedObject:Lcom/fusepowered/RewardedObject;

    invoke-virtual {v10}, Lcom/fusepowered/RewardedObject;->hasPreRollMessage()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 403
    const-string v10, "AdManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Showing rewarded preroll for provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v5

    .line 406
    .local v5, "zone":Lcom/fusepowered/ads/AdZone;
    new-instance v0, Lcom/fusepowered/ads/AdManager$2;

    invoke-direct {v0, p0, p1, v2}, Lcom/fusepowered/ads/AdManager$2;-><init>(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/DisplayRequest;Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 418
    .local v0, "acceptListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/fusepowered/ads/AdManager$3;

    invoke-direct {v4, p0, v2, p1}, Lcom/fusepowered/ads/AdManager$3;-><init>(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/ads/DisplayRequest;)V

    .line 430
    .local v4, "rejectListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p1, v9}, Lcom/fusepowered/ads/DisplayRequest;->setIsWaitingToDisplayAd(Z)V

    .line 431
    new-instance v10, Landroid/app/AlertDialog$Builder;

    sget-object v11, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    iget-object v11, v5, Lcom/fusepowered/ads/AdZone;->rewardedObject:Lcom/fusepowered/RewardedObject;

    iget-object v11, v11, Lcom/fusepowered/RewardedObject;->preRollMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    iget-object v11, p1, Lcom/fusepowered/ads/DisplayRequest;->prerollYesButtonText:Ljava/lang/String;

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    iget-object v11, p1, Lcom/fusepowered/ads/DisplayRequest;->prerollNoButtonText:Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/fusepowered/ads/AdManager;->currentDialog:Landroid/app/AlertDialog;

    .line 436
    iget-object v10, p0, Lcom/fusepowered/ads/AdManager;->currentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 437
    iget-object v9, p0, Lcom/fusepowered/ads/AdManager;->currentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 460
    .end local v0    # "acceptListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    .end local v4    # "rejectListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v5    # "zone":Lcom/fusepowered/ads/AdZone;
    :goto_0
    return v8

    .line 442
    .restart local v2    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/fusepowered/ads/AdManager;->attemptToDisplayAd(Lcom/fusepowered/ads/DisplayRequest;Lcom/fusepowered/ads/adapters/AdAdapter;)Z

    move-result v8

    goto :goto_0

    .line 447
    .end local v2    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    :cond_2
    invoke-virtual {p1}, Lcom/fusepowered/ads/DisplayRequest;->getTimeIntervalUntilTimeout()J

    move-result-wide v6

    .line 448
    .local v6, "timeout":J
    iget-wide v10, p1, Lcom/fusepowered/ads/DisplayRequest;->timeout:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    .line 449
    invoke-virtual {p1, v8}, Lcom/fusepowered/ads/DisplayRequest;->setIsWaitingToDisplayAd(Z)V

    .line 450
    invoke-virtual {p1}, Lcom/fusepowered/ads/DisplayRequest;->getAdAdapters()Ljava/util/ArrayList;

    move-result-object v8

    iget-wide v10, p1, Lcom/fusepowered/ads/DisplayRequest;->providerTimeout:J

    invoke-direct {p0, v8, v10, v11, v9}, Lcom/fusepowered/ads/AdManager;->loadAdProviders(Ljava/util/ArrayList;JZ)V

    .line 452
    iget-object v8, p0, Lcom/fusepowered/ads/AdManager;->handler:Landroid/os/Handler;

    new-instance v10, Lcom/fusepowered/ads/AdManager$4;

    invoke-direct {v10, p0, p1}, Lcom/fusepowered/ads/AdManager$4;-><init>(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/DisplayRequest;)V

    invoke-virtual {v8, v10, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    move v8, v9

    .line 460
    goto :goto_0
.end method

.method private loadAdProviders(Ljava/util/ArrayList;JZ)V
    .locals 8
    .param p2, "intervalBetweenProviders"    # J
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    invoke-virtual {v0}, Lcom/fusepowered/ads/AdLoader;->stop()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    .line 198
    :cond_0
    new-instance v1, Lcom/fusepowered/ads/AdLoader;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/fusepowered/ads/AdLoader;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;JZLcom/fusepowered/ads/AdLoader$AdLoaderListener;)V

    iput-object v1, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    .line 199
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    invoke-virtual {v0}, Lcom/fusepowered/ads/AdLoader;->start()V

    .line 200
    return-void
.end method

.method private resetDisplayRequestCountForZone(Lcom/fusepowered/ads/AdZone;)V
    .locals 3
    .param p1, "zone"    # Lcom/fusepowered/ads/AdZone;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adZoneDisplayCount:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/fusepowered/ads/AdZone;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method private shouldDisplayAdForZoneWithCount(Lcom/fusepowered/ads/AdZone;I)Z
    .locals 4
    .param p1, "zone"    # Lcom/fusepowered/ads/AdZone;
    .param p2, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 385
    const-string v1, "AdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/fusepowered/ads/AdZone;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/fusepowered/ads/AdZone;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/fusepowered/ads/AdZone;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget v1, p1, Lcom/fusepowered/ads/AdZone;->frequency:I

    if-gtz v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/fusepowered/ads/AdZone;->frequency:I

    if-lt p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public _getAdZones()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adZones:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public _getProviders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 880
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->allProviders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 882
    .local v2, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->allProviders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 883
    .local v0, "i":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->allProviders:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/ads/adapters/AdAdapter;

    invoke-virtual {v3}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 886
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    return-object v2
.end method

.method public _getProvidersInWaterfall(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "zone"    # Ljava/lang/String;

    .prologue
    .line 899
    :try_start_0
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 900
    .local v4, "json":Lorg/json/JSONStringer;
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 901
    iget-object v7, p0, Lcom/fusepowered/ads/AdManager;->adZones:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fusepowered/ads/AdZone;

    iget-object v7, v7, Lcom/fusepowered/ads/AdZone;->waterfall:Lcom/fusepowered/ads/Waterfall;

    invoke-virtual {v7}, Lcom/fusepowered/ads/Waterfall;->getOrderedProviders()[I

    move-result-object v1

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget v7, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 902
    .local v6, "p":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/fusepowered/ads/AdManager;->allProviders:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 903
    .local v0, "a":Lcom/fusepowered/ads/adapters/AdAdapter;
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 904
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 905
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 906
    const-string v7, "canLoad"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/AdAdapter;->isCapableOfLoading()Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 907
    const-string v7, "isAvailable"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/AdAdapter;->isAdAvailable()Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 908
    const-string v7, "error"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v8

    iget-object v7, v0, Lcom/fusepowered/ads/adapters/AdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    if-nez v7, :cond_0

    const-string v7, ""

    :goto_1
    invoke-virtual {v8, v7}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 909
    const-string v7, "shouldPreload"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-boolean v8, v0, Lcom/fusepowered/ads/adapters/AdAdapter;->shouldPreload:Z

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 910
    const-string v7, "shouldValidateSchema"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-boolean v8, v0, Lcom/fusepowered/ads/adapters/AdAdapter;->shouldValidateSchema:Z

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 911
    const-string v7, "isMraid"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-boolean v8, v0, Lcom/fusepowered/ads/adapters/AdAdapter;->isMraid:Z

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 912
    const-string v7, "isRewarded"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-boolean v8, v0, Lcom/fusepowered/ads/adapters/AdAdapter;->isRewarded:Z

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 913
    const-string v7, "isVast"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-boolean v8, v0, Lcom/fusepowered/ads/adapters/AdAdapter;->isVast:Z

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 914
    const-string v7, "isVast"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-boolean v8, v0, Lcom/fusepowered/ads/adapters/AdAdapter;->isVideo:Z

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 915
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 901
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 908
    :cond_0
    iget-object v7, v0, Lcom/fusepowered/ads/adapters/AdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    invoke-virtual {v7}, Lcom/fusepowered/util/FuseProviderError;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 917
    .end local v0    # "a":Lcom/fusepowered/ads/adapters/AdAdapter;
    .end local v6    # "p":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 918
    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 920
    .end local v1    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "json":Lorg/json/JSONStringer;
    .end local v5    # "len$":I
    :goto_2
    return-object v7

    .line 919
    :catch_0
    move-exception v2

    .line 920
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "{}"

    goto :goto_2
.end method

.method public _getWaterfall(Ljava/lang/String;)[I
    .locals 1
    .param p1, "zone"    # Ljava/lang/String;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adZones:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/AdZone;

    iget-object v0, v0, Lcom/fusepowered/ads/AdZone;->waterfall:Lcom/fusepowered/ads/Waterfall;

    invoke-virtual {v0}, Lcom/fusepowered/ads/Waterfall;->getOrderedProviders()[I

    move-result-object v0

    return-object v0
.end method

.method public checkAdAvailableAsync(JLcom/fusepowered/util/FuseCallback;)Z
    .locals 3
    .param p1, "timeoutMillis"    # J
    .param p3, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/ads/AdManager$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/fusepowered/ads/AdManager$1;-><init>(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/util/FuseCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public displayAd(JJLjava/util/HashMap;)Z
    .locals 19
    .param p1, "showAdWithinMillis"    # J
    .param p3, "providerLoadTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 291
    .local p5, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v3, :cond_1

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v3}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v3

    const/high16 v4, 0x42700000    # 60.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 296
    const-string v3, "Aborting displayAd: Already displaying an ad"

    invoke-static {v3}, Lcom/fusepowered/log/FuseLog;->TOAST(Ljava/lang/String;)V

    .line 297
    const/4 v10, 0x0

    .line 364
    :cond_0
    :goto_0
    return v10

    .line 301
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v17

    .line 304
    .local v17, "zone":Lcom/fusepowered/ads/AdZone;
    if-nez v17, :cond_2

    .line 305
    const-string v3, "AdManager"

    const-string v4, "No ad zones available, aborting displayAd()"

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v3, "No ad zones available"

    invoke-static {v3}, Lcom/fusepowered/log/FuseLog;->TOAST(Ljava/lang/String;)V

    .line 307
    const/4 v10, 0x0

    goto :goto_0

    .line 310
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/AdManager;->countDisplayRequestForZone(Lcom/fusepowered/ads/AdZone;)Z

    move-result v13

    .line 312
    .local v13, "shouldDisplayAdBaseOnFrequency":Z
    if-nez v13, :cond_3

    .line 313
    const-string v3, "AdManager"

    const-string v4, "Skipping display ad based on frequency"

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v10, 0x0

    goto :goto_0

    .line 318
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/fusepowered/ads/AdZone;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/fusepowered/ads/AdZone;->waterfall:Lcom/fusepowered/ads/Waterfall;

    invoke-virtual {v4}, Lcom/fusepowered/ads/Waterfall;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/log/FuseLog;->TOAST(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/fusepowered/ads/AdZone;->waterfall:Lcom/fusepowered/ads/Waterfall;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/fusepowered/ads/AdManager;->getAdProvidersForWaterfall(Lcom/fusepowered/ads/Waterfall;)Ljava/util/ArrayList;

    move-result-object v5

    .line 323
    .local v5, "zoneProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    const/4 v15, 0x1

    .line 324
    .local v15, "showPreroll":Z
    const/4 v14, 0x1

    .line 325
    .local v14, "showPostroll":Z
    const-string v16, "Yes please!"

    .line 326
    .local v16, "yesText":Ljava/lang/String;
    const-string v12, "No thanks"

    .line 327
    .local v12, "noText":Ljava/lang/String;
    const-string v2, "Continue"

    .line 328
    .local v2, "continueText":Ljava/lang/String;
    const/4 v11, 0x0

    .line 330
    .local v11, "manuallyHandleAdUrls":Z
    if-eqz p5, :cond_9

    .line 331
    :try_start_0
    const-string v3, "FuseRewardedAdOptionKey_ShowPreRoll"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 332
    const-string v3, "FuseRewardedAdOptionKey_ShowPreRoll"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 334
    :cond_4
    const-string v3, "FuseRewardedAdOptionKey_ShowPostRoll"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 335
    const-string v3, "FuseRewardedAdOptionKey_ShowPostRoll"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 337
    :cond_5
    const-string v3, "FuseRewardedOptionKey_PreRollYesButtonText"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 338
    const-string v3, "FuseRewardedOptionKey_PreRollYesButtonText"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 340
    :cond_6
    const-string v3, "FuseRewardedOptionKey_PreRollNoButtonText"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 341
    const-string v3, "FuseRewardedOptionKey_PreRollNoButtonText"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 343
    :cond_7
    const-string v3, "FuseRewardedOptionKey_PostRollContinueButtonText"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 344
    const-string v3, "FuseRewardedOptionKey_PostRollContinueButtonText"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 346
    :cond_8
    const-string v3, "FuseSDKOption_HandleAdURLs"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 350
    :cond_9
    :goto_1
    new-instance v3, Lcom/fusepowered/ads/DisplayRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fusepowered/ads/AdManager;->adZoneName:Ljava/lang/String;

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/fusepowered/ads/DisplayRequest;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JJ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iput-boolean v15, v3, Lcom/fusepowered/ads/DisplayRequest;->shouldShowPreroll:Z

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iput-boolean v14, v3, Lcom/fusepowered/ads/DisplayRequest;->shouldShowPostroll:Z

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/fusepowered/ads/DisplayRequest;->prerollYesButtonText:Ljava/lang/String;

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iput-object v12, v3, Lcom/fusepowered/ads/DisplayRequest;->prerollNoButtonText:Ljava/lang/String;

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iput-object v2, v3, Lcom/fusepowered/ads/DisplayRequest;->postrollContinueButtonText:Ljava/lang/String;

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iput-boolean v11, v3, Lcom/fusepowered/ads/DisplayRequest;->manuallyHandleAdUrls:Z

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/fusepowered/ads/AdManager;->internalDisplayAd(Lcom/fusepowered/ads/DisplayRequest;)Z

    move-result v10

    .line 360
    .local v10, "didDisplayAd":Z
    if-eqz v10, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v4

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportCheckAdSuccess(IF)V

    goto/16 :goto_0

    .line 348
    .end local v10    # "didDisplayAd":Z
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getAdZone(Ljava/lang/String;)Lcom/fusepowered/ads/AdZone;
    .locals 3
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->adZones:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/AdZone;

    .line 148
    .local v0, "zone":Lcom/fusepowered/ads/AdZone;
    if-nez v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->adZones:Ljava/util/HashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/ads/AdZone;

    .line 151
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getCurrentAdZone()Lcom/fusepowered/ads/AdZone;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adZones:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->adZoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/AdZone;

    iput-object v0, p0, Lcom/fusepowered/ads/AdManager;->currentAdZone:Lcom/fusepowered/ads/AdZone;

    .line 140
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->currentAdZone:Lcom/fusepowered/ads/AdZone;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adZones:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/AdZone;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->currentAdZone:Lcom/fusepowered/ads/AdZone;

    goto :goto_0
.end method

.method public getCurrentAdZoneId()I
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v0

    .line 156
    .local v0, "zone":Lcom/fusepowered/ads/AdZone;
    if-nez v0, :cond_0

    .line 157
    const/4 v1, 0x0

    .line 159
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/fusepowered/ads/AdZone;->id:I

    goto :goto_0
.end method

.method public getListener()Lcom/fusepowered/ads/AdManagerListener;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    return-object v0
.end method

.method public getProvidersRequiringAds()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v0

    .line 849
    .local v0, "adZone":Lcom/fusepowered/ads/AdZone;
    if-nez v0, :cond_1

    .line 850
    const/4 v4, 0x0

    .line 862
    :cond_0
    return-object v4

    .line 853
    :cond_1
    iget-object v5, v0, Lcom/fusepowered/ads/AdZone;->waterfall:Lcom/fusepowered/ads/Waterfall;

    invoke-direct {p0, v5}, Lcom/fusepowered/ads/AdManager;->getAdProvidersForWaterfall(Lcom/fusepowered/ads/Waterfall;)Ljava/util/ArrayList;

    move-result-object v3

    .line 855
    .local v3, "providersInAdZone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v4, "requiredProviderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 857
    .local v2, "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    iget-boolean v5, v2, Lcom/fusepowered/ads/adapters/AdAdapter;->isMraid:Z

    if-nez v5, :cond_3

    iget-boolean v5, v2, Lcom/fusepowered/ads/adapters/AdAdapter;->isFuseAd:Z

    if-nez v5, :cond_3

    iget-boolean v5, v2, Lcom/fusepowered/ads/adapters/AdAdapter;->isVast:Z

    if-eqz v5, :cond_2

    :cond_3
    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/AdAdapter;->isCapableOfLoading()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/AdAdapter;->isAdAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 858
    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hasActiveDisplayRequest()Z
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v0}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdAvailable()Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->isAdAvailableWithError()Lcom/fusepowered/util/FuseCheckAdError;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdAvailableWithError()Lcom/fusepowered/util/FuseCheckAdError;
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v0

    .line 212
    .local v0, "zone":Lcom/fusepowered/ads/AdZone;
    iget-boolean v2, v0, Lcom/fusepowered/ads/AdZone;->enabled:Z

    if-nez v2, :cond_0

    .line 213
    sget-object v2, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_DISABLED:Lcom/fusepowered/util/FuseCheckAdError;

    .line 219
    :goto_0
    return-object v2

    .line 214
    :cond_0
    if-nez v0, :cond_1

    .line 215
    sget-object v2, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_EMPTY:Lcom/fusepowered/util/FuseCheckAdError;

    goto :goto_0

    .line 218
    :cond_1
    iget-object v2, v0, Lcom/fusepowered/ads/AdZone;->waterfall:Lcom/fusepowered/ads/Waterfall;

    invoke-direct {p0, v2}, Lcom/fusepowered/ads/AdManager;->getAdProvidersForWaterfall(Lcom/fusepowered/ads/Waterfall;)Ljava/util/ArrayList;

    move-result-object v1

    .line 219
    .local v1, "zoneProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    invoke-direct {p0, v1}, Lcom/fusepowered/ads/AdManager;->getCheckAdErrorForProviders(Ljava/util/ArrayList;)Lcom/fusepowered/util/FuseCheckAdError;

    move-result-object v2

    goto :goto_0
.end method

.method public loadAdsForCurrentAdZone()V
    .locals 3

    .prologue
    .line 179
    const-wide/16 v0, 0xbb8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/fusepowered/ads/AdManager;->loadAdsForCurrentAdZone(JZ)V

    .line 180
    return-void
.end method

.method public loadAdsForCurrentAdZone(JZ)V
    .locals 5
    .param p1, "intervalBetweenProviders"    # J
    .param p3, "force"    # Z

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v0

    .line 184
    .local v0, "adZone":Lcom/fusepowered/ads/AdZone;
    if-nez v0, :cond_0

    .line 185
    const-string v2, "AdManager"

    const-string v3, "Tried to load ads, no zone configurations are present"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v2, v0, Lcom/fusepowered/ads/AdZone;->waterfall:Lcom/fusepowered/ads/Waterfall;

    invoke-direct {p0, v2}, Lcom/fusepowered/ads/AdManager;->getAdProvidersForWaterfall(Lcom/fusepowered/ads/Waterfall;)Ljava/util/ArrayList;

    move-result-object v1

    .line 189
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/fusepowered/ads/AdManager;->loadAdProviders(Ljava/util/ArrayList;JZ)V

    goto :goto_0
.end method

.method public onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 7
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v3

    .line 510
    .local v3, "zone":Lcom/fusepowered/ads/AdZone;
    const/4 v1, 0x0

    .line 511
    .local v1, "inAdZone":Z
    if-eqz v3, :cond_0

    .line 512
    iget-object v4, v3, Lcom/fusepowered/ads/AdZone;->waterfall:Lcom/fusepowered/ads/Waterfall;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/ads/Waterfall;->contains(I)Z

    move-result v1

    .line 515
    :cond_0
    const-string v4, "AdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad Available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", In current Ad Zone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-eqz v1, :cond_3

    .line 518
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 520
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->doesAdLoadedActuallyMeanSomething()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v4, p1}, Lcom/fusepowered/ads/DisplayRequest;->shouldStopLoadingWithProvider(Lcom/fusepowered/ads/adapters/AdAdapter;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_1
    const/4 v2, 0x1

    .line 522
    .local v2, "shouldStopLoading":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 523
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->adCheckRequest:Lcom/fusepowered/ads/AdCheckRequest;

    if-eqz v4, :cond_2

    .line 524
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->adCheckRequest:Lcom/fusepowered/ads/AdCheckRequest;

    invoke-virtual {v4}, Lcom/fusepowered/ads/AdCheckRequest;->onAdAvailable()V

    .line 526
    :cond_2
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    invoke-virtual {v4}, Lcom/fusepowered/ads/AdLoader;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 527
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    iget v5, v3, Lcom/fusepowered/ads/AdZone;->id:I

    iget-object v6, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    invoke-virtual {v6}, Lcom/fusepowered/ads/AdLoader;->getDurationInSeconds()F

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportCheckAdSuccess(IF)V

    .line 528
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    invoke-virtual {v4}, Lcom/fusepowered/ads/AdLoader;->stop()V

    .line 532
    .end local v2    # "shouldStopLoading":Z
    :cond_3
    monitor-enter p0

    .line 533
    :try_start_0
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v4}, Lcom/fusepowered/ads/DisplayRequest;->isWaitingToDisplayAd()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 534
    if-eqz v1, :cond_9

    .line 535
    const-string v4, "AdManager"

    const-string v5, "Ad became available while waiting to display and is in current ad zone"

    invoke-static {v4, v5}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-direct {p0, v4}, Lcom/fusepowered/ads/AdManager;->internalDisplayAd(Lcom/fusepowered/ads/DisplayRequest;)Z

    .line 541
    :cond_4
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    if-eqz v4, :cond_5

    .line 544
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v5

    invoke-interface {v4, v5, v1}, Lcom/fusepowered/ads/AdManagerListener;->adIsReady(IZ)V

    .line 547
    :cond_5
    const/4 v0, 0x0

    .line 548
    .local v0, "duration":F
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v4, :cond_6

    .line 549
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v4}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 552
    :cond_6
    iget-boolean v4, p1, Lcom/fusepowered/ads/adapters/AdAdapter;->isRTN:Z

    if-nez v4, :cond_7

    .line 553
    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v5

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v6

    invoke-interface {v4, v5, v6, v0}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportProviderLoadSuccess(IIF)V

    .line 555
    :cond_7
    return-void

    .line 520
    .end local v0    # "duration":F
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 538
    :cond_9
    :try_start_1
    const-string v4, "AdManager"

    const-string v5, "Ad became available while waiting to display but provider is not in current ad zone"

    invoke-static {v4, v5}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 541
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onAdCheckRequestFinished(Lcom/fusepowered/ads/AdCheckRequest;Z)V
    .locals 0
    .param p1, "adCheckRequest"    # Lcom/fusepowered/ads/AdCheckRequest;
    .param p2, "available"    # Z

    .prologue
    .line 872
    return-void
.end method

.method public onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 8
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 586
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    .line 588
    .local v1, "providerId":I
    const-string v0, "AdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ad Clicked: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v3, 0x0

    .line 591
    .local v3, "duration":F
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v0}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v3

    .line 595
    :cond_0
    const/4 v4, -0x1

    .line 596
    .local v4, "assetId":I
    const/4 v5, -0x1

    .line 598
    .local v5, "campaignId":I
    iget-boolean v0, p1, Lcom/fusepowered/ads/adapters/AdAdapter;->isFuseAd:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/fusepowered/ads/FuseInternalAdAdapter;

    if-eqz v0, :cond_1

    move-object v6, p1

    .line 599
    check-cast v6, Lcom/fusepowered/ads/FuseInternalAdAdapter;

    .line 600
    .local v6, "fuseAdAdapter":Lcom/fusepowered/ads/FuseInternalAdAdapter;
    invoke-interface {v6}, Lcom/fusepowered/ads/FuseInternalAdAdapter;->getAssetId()I

    move-result v4

    .line 601
    invoke-interface {v6}, Lcom/fusepowered/ads/FuseInternalAdAdapter;->getCampaignId()I

    move-result v5

    .line 603
    .end local v6    # "fuseAdAdapter":Lcom/fusepowered/ads/FuseInternalAdAdapter;
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v2

    invoke-interface/range {v0 .. v5}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportAdClicked(IIFII)V

    .line 605
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    if-eqz v0, :cond_2

    .line 606
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/fusepowered/ads/AdManagerListener;->adWasClicked(I)V

    .line 608
    :cond_2
    return-void
.end method

.method public onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 6
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 615
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v2}, Lcom/fusepowered/ads/DisplayRequest;->getDisplayedAd()Lcom/fusepowered/ads/adapters/AdAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Aerserv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iget-boolean v2, v2, Lcom/fusepowered/ads/DisplayRequest;->hasFiredAdClosed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iget-boolean v2, v2, Lcom/fusepowered/ads/DisplayRequest;->isShowingRewardPostRollMessage:Z

    if-nez v2, :cond_0

    .line 625
    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->currentDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 630
    :cond_3
    if-nez p1, :cond_4

    .line 631
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v2}, Lcom/fusepowered/ads/DisplayRequest;->getDisplayedAd()Lcom/fusepowered/ads/adapters/AdAdapter;

    move-result-object p1

    .line 637
    :cond_4
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    .line 638
    .local v1, "providerId":I
    :goto_1
    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad Closed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "duration":F
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_5

    .line 642
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/fusepowered/ads/DisplayRequest;->hasFiredAdClosed:Z

    .line 643
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v2}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 646
    :cond_5
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v3

    invoke-interface {v2, v1, v3, v0}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportAdClosed(IIF)V

    .line 647
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    if-eqz v2, :cond_6

    .line 648
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->adZoneName:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/fusepowered/ads/AdManagerListener;->adDidClose(ILjava/lang/String;)V

    .line 650
    :cond_6
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/fusepowered/ads/AdManager$5;

    invoke-direct {v3, p0}, Lcom/fusepowered/ads/AdManager$5;-><init>(Lcom/fusepowered/ads/AdManager;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 637
    .end local v0    # "duration":F
    .end local v1    # "providerId":I
    :cond_7
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onAdCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 5
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 673
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    .line 675
    .local v1, "providerId":I
    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad Completed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, "duration":F
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_0

    .line 679
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v2}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v3

    invoke-interface {v2, v1, v3, v0}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportAdCompleted(IIF)V

    .line 683
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    if-eqz v2, :cond_1

    .line 684
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v3

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v4

    iget-object v4, v4, Lcom/fusepowered/ads/AdZone;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/fusepowered/ads/AdManagerListener;->adDidComplete(ILjava/lang/String;)V

    .line 686
    :cond_1
    return-void
.end method

.method public onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 1
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/ads/AdManager;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/OfferObject;)V

    .line 560
    return-void
.end method

.method public onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/OfferObject;)V
    .locals 8
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;
    .param p2, "offer"    # Lcom/fusepowered/OfferObject;

    .prologue
    .line 563
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    .line 564
    .local v1, "providerId":I
    const-string v0, "AdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad Displayed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v7

    .line 567
    .local v7, "zone":Lcom/fusepowered/ads/AdZone;
    invoke-direct {p0, v7}, Lcom/fusepowered/ads/AdManager;->resetDisplayRequestCountForZone(Lcom/fusepowered/ads/AdZone;)V

    .line 569
    const/4 v4, -0x1

    .line 570
    .local v4, "assetId":I
    const/4 v5, -0x1

    .line 572
    .local v5, "campaignId":I
    iget-boolean v0, p1, Lcom/fusepowered/ads/adapters/AdAdapter;->isFuseAd:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/fusepowered/ads/FuseInternalAdAdapter;

    if-eqz v0, :cond_0

    move-object v6, p1

    .line 573
    check-cast v6, Lcom/fusepowered/ads/FuseInternalAdAdapter;

    .line 574
    .local v6, "fuseAdAdapter":Lcom/fusepowered/ads/FuseInternalAdAdapter;
    invoke-interface {v6}, Lcom/fusepowered/ads/FuseInternalAdAdapter;->getAssetId()I

    move-result v4

    .line 575
    invoke-interface {v6}, Lcom/fusepowered/ads/FuseInternalAdAdapter;->getCampaignId()I

    move-result v5

    .line 577
    .end local v6    # "fuseAdAdapter":Lcom/fusepowered/ads/FuseInternalAdAdapter;
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v2

    if-eqz p2, :cond_2

    iget v3, p2, Lcom/fusepowered/OfferObject;->id:I

    :goto_0
    invoke-interface/range {v0 .. v5}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportAdViewed(IIIII)V

    .line 579
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/fusepowered/ads/AdManagerListener;->adDidDisplay(I)V

    .line 582
    :cond_1
    return-void

    .line 577
    :cond_2
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public onAdFailedToDisplay(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 5
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 713
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    .line 715
    .local v1, "providerId":I
    const/4 v0, 0x0

    .line 716
    .local v0, "duration":F
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v2}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 723
    :cond_0
    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not display ad from provider, skipping:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_1

    .line 725
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v2, p1}, Lcom/fusepowered/ads/DisplayRequest;->onAdProviderFailedToDisplay(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 726
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-direct {p0, v2}, Lcom/fusepowered/ads/AdManager;->internalDisplayAd(Lcom/fusepowered/ads/DisplayRequest;)Z

    .line 729
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v3

    iget-object v4, p1, Lcom/fusepowered/ads/adapters/AdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    invoke-interface {v2, v1, v3, v0, v4}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportShowAdFailed(IIFLcom/fusepowered/util/FuseProviderError;)V

    .line 730
    return-void
.end method

.method public onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 5
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 690
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    .line 692
    .local v1, "providerId":I
    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad Failed To Load: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "duration":F
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v2}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 699
    :cond_0
    iget-boolean v2, p1, Lcom/fusepowered/ads/adapters/AdAdapter;->isRTN:Z

    if-nez v2, :cond_1

    .line 700
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v3

    iget-object v4, p1, Lcom/fusepowered/ads/adapters/AdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    invoke-interface {v2, v1, v3, v0, v4}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportProviderLoadFail(IIFLcom/fusepowered/util/FuseProviderError;)V

    .line 702
    :cond_1
    return-void
.end method

.method public onAdLoaderFinished(I)V
    .locals 4
    .param p1, "numProvidersLoadedSuccessfully"    # I

    .prologue
    .line 831
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    if-eqz v1, :cond_2

    .line 833
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    invoke-virtual {v1}, Lcom/fusepowered/ads/AdLoader;->getAdapterList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fusepowered/ads/AdManager;->getCheckAdErrorForProviders(Ljava/util/ArrayList;)Lcom/fusepowered/util/FuseCheckAdError;

    move-result-object v0

    .line 834
    .local v0, "error":Lcom/fusepowered/util/FuseCheckAdError;
    if-eqz p1, :cond_0

    sget-object v1, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_NO_FILL_RTN:Lcom/fusepowered/util/FuseCheckAdError;

    if-ne v0, v1, :cond_3

    .line 835
    :cond_0
    if-nez v0, :cond_1

    .line 836
    sget-object v0, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_NO_FILL:Lcom/fusepowered/util/FuseCheckAdError;

    .line 838
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    invoke-virtual {v3}, Lcom/fusepowered/ads/AdLoader;->getDurationInSeconds()F

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportCheckAdFail(IFLcom/fusepowered/util/FuseCheckAdError;)V

    .line 844
    .end local v0    # "error":Lcom/fusepowered/util/FuseCheckAdError;
    :cond_2
    :goto_0
    return-void

    .line 839
    .restart local v0    # "error":Lcom/fusepowered/util/FuseCheckAdError;
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    invoke-virtual {v1}, Lcom/fusepowered/ads/AdLoader;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 841
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->adLoaderTask:Lcom/fusepowered/ads/AdLoader;

    invoke-virtual {v3}, Lcom/fusepowered/ads/AdLoader;->getDurationInSeconds()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportCheckAdSuccess(IF)V

    goto :goto_0
.end method

.method public onAdProviderDidntLoadInTime(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 5
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 777
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    .line 779
    .local v1, "providerId":I
    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad Failed To Load In Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x0

    .line 782
    .local v0, "duration":F
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_0

    .line 783
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v2}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 786
    :cond_0
    iget-boolean v2, p1, Lcom/fusepowered/ads/adapters/AdAdapter;->isRTN:Z

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/fusepowered/ads/adapters/AdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    if-nez v2, :cond_1

    .line 787
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v3

    sget-object v4, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_TIMED_OUT:Lcom/fusepowered/util/FuseProviderError;

    invoke-interface {v2, v1, v3, v0, v4}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportProviderLoadFail(IIFLcom/fusepowered/util/FuseProviderError;)V

    .line 789
    :cond_1
    return-void
.end method

.method public onAdProviderLoadRequested(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 5
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 818
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    .line 820
    .local v1, "providerId":I
    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad provider load requested: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, "duration":F
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_0

    .line 824
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v2}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 826
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v3

    invoke-interface {v2, v1, v3, v0}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportAdProviderAskedToLoad(IIF)V

    .line 827
    return-void
.end method

.method public onAdProviderNotReadyToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 6
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 800
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    .line 802
    .local v1, "providerId":I
    const-string v3, "AdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad Provider not ready to load: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "duration":F
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v3, :cond_0

    .line 806
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v3}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 809
    :cond_0
    iget-boolean v3, p1, Lcom/fusepowered/ads/adapters/AdAdapter;->isRTN:Z

    if-nez v3, :cond_1

    .line 810
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v2

    .line 811
    .local v2, "zone":I
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-interface {v3, v1, v2, v0}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportAdProviderNotReadyToLoad(IIF)V

    .line 812
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    sget-object v4, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

    invoke-interface {v3, v1, v2, v0, v4}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportProviderLoadFail(IIFLcom/fusepowered/util/FuseProviderError;)V

    .line 814
    .end local v2    # "zone":I
    :cond_1
    return-void
.end method

.method public onAdSkipped(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 5
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 660
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    .line 662
    .local v1, "providerId":I
    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad Skipped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "duration":F
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v2, :cond_0

    .line 666
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v2}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 668
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v3

    invoke-interface {v2, v1, v3, v0}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportAdSkipped(IIF)V

    .line 669
    return-void
.end method

.method public onDisplayRequestTimedOut(Lcom/fusepowered/ads/DisplayRequest;)V
    .locals 4
    .param p1, "displayRequest"    # Lcom/fusepowered/ads/DisplayRequest;

    .prologue
    .line 494
    monitor-enter p0

    .line 495
    :try_start_0
    invoke-virtual {p1}, Lcom/fusepowered/ads/DisplayRequest;->isWaitingToDisplayAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Display timed out after: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/fusepowered/ads/DisplayRequest;->timeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1}, Lcom/fusepowered/ads/DisplayRequest;->onAdDisplayTimedOut()V

    .line 498
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    iget-wide v2, p1, Lcom/fusepowered/ads/DisplayRequest;->timeout:J

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->adZoneName:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/fusepowered/ads/AdManagerListener;->adCouldNotBeDisplayedWithinTimeout(JLjava/lang/String;)V

    .line 501
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    .line 503
    :cond_1
    monitor-exit p0

    .line 504
    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNoProvidersCanLoad()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    invoke-interface {v0}, Lcom/fusepowered/ads/AdManagerListener;->noProvidersReadyToLoad()V

    .line 796
    :cond_0
    return-void
.end method

.method public onOfferAccepted(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/OfferObject;)V
    .locals 3
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;
    .param p2, "offer"    # Lcom/fusepowered/OfferObject;

    .prologue
    .line 929
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    invoke-interface {v1, p2}, Lcom/fusepowered/ads/AdManagerListener;->userAcceptedOffer(Lcom/fusepowered/OfferObject;)V

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "duration":F
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v1}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 934
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v2

    invoke-interface {v1, v2, p2, v0}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportOfferAccepted(ILcom/fusepowered/OfferObject;F)V

    .line 936
    return-void
.end method

.method public onOfferDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/OfferObject;)V
    .locals 2
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;
    .param p2, "offer"    # Lcom/fusepowered/OfferObject;

    .prologue
    .line 950
    invoke-virtual {p2}, Lcom/fusepowered/OfferObject;->consume()V

    .line 951
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportOfferViewed(ILcom/fusepowered/OfferObject;)V

    .line 952
    return-void
.end method

.method public onOfferRejected(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/OfferObject;)V
    .locals 3
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;
    .param p2, "offer"    # Lcom/fusepowered/OfferObject;

    .prologue
    .line 940
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    invoke-interface {v1, p2}, Lcom/fusepowered/ads/AdManagerListener;->userRejectedOffer(Lcom/fusepowered/OfferObject;)V

    .line 941
    const/4 v0, 0x0

    .line 942
    .local v0, "duration":F
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v1}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v2

    invoke-interface {v1, v2, p2, v0}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportOfferRejected(ILcom/fusepowered/OfferObject;F)V

    .line 946
    return-void
.end method

.method public onOpenMRaidUrl(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 974
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-nez v2, :cond_1

    .line 975
    const-string v2, "AdManager"

    const-string v3, "Tried to open an MRAID click through link without a valid displayRequest"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iget-boolean v2, v2, Lcom/fusepowered/ads/DisplayRequest;->manuallyHandleAdUrls:Z

    if-eqz v2, :cond_2

    .line 979
    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Passing MRAID click through link to listener instead of opening: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v2, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    invoke-interface {v2, p1}, Lcom/fusepowered/ads/AdManagerListener;->handleAdClickWithUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 982
    :cond_2
    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening MRAID click through link: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 984
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 985
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 986
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 992
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v1}, Lcom/fusepowered/ads/DisplayRequest;->getDisplayedAd()Lcom/fusepowered/ads/adapters/AdAdapter;

    move-result-object v0

    .line 994
    .local v0, "currentAdapter":Lcom/fusepowered/ads/adapters/AdAdapter;
    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/AdAdapter;->onResume()V

    .line 998
    .end local v0    # "currentAdapter":Lcom/fusepowered/ads/adapters/AdAdapter;
    :cond_0
    return-void
.end method

.method public onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 7
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    const/4 v6, 0x1

    .line 734
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/fusepowered/ads/adapters/AdAdapter;->isRewarded:Z

    if-eqz v3, :cond_1

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "duration":F
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v3, :cond_0

    .line 737
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v3}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v0

    .line 741
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v2

    .line 742
    .local v2, "zone":Lcom/fusepowered/ads/AdZone;
    iget-object v1, v2, Lcom/fusepowered/ads/AdZone;->rewardedObject:Lcom/fusepowered/RewardedObject;

    .line 743
    .local v1, "rewardedObject":Lcom/fusepowered/RewardedObject;
    invoke-direct {p0}, Lcom/fusepowered/ads/AdManager;->currentZoneHasRewardedObject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 744
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iget-boolean v3, v3, Lcom/fusepowered/ads/DisplayRequest;->hasGivenReward:Z

    if-nez v3, :cond_1

    .line 745
    const-string v3, "AdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rewarded video completed with provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iput-boolean v6, v3, Lcom/fusepowered/ads/DisplayRequest;->hasGivenReward:Z

    .line 747
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v4

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v5

    invoke-interface {v3, v4, v5, v1, v0}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportRewardedVideoCompleted(IILcom/fusepowered/RewardedObject;F)V

    .line 748
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v4

    invoke-virtual {p0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v5

    iget-object v5, v5, Lcom/fusepowered/ads/AdZone;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v1}, Lcom/fusepowered/ads/AdManagerListener;->rewardedVideoDidComplete(ILjava/lang/String;Lcom/fusepowered/RewardedObject;)V

    .line 749
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iget-boolean v3, v3, Lcom/fusepowered/ads/DisplayRequest;->shouldShowPostroll:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/fusepowered/RewardedObject;->hasPostRollMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    iget-object v3, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iput-boolean v6, v3, Lcom/fusepowered/ads/DisplayRequest;->isShowingRewardPostRollMessage:Z

    .line 751
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/fusepowered/ads/AdZone;->rewardedObject:Lcom/fusepowered/RewardedObject;

    iget-object v4, v4, Lcom/fusepowered/RewardedObject;->postRollMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/ads/AdManager;->displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iget-object v4, v4, Lcom/fusepowered/ads/DisplayRequest;->postrollContinueButtonText:Ljava/lang/String;

    new-instance v5, Lcom/fusepowered/ads/AdManager$6;

    invoke-direct {v5, p0, p1}, Lcom/fusepowered/ads/AdManager$6;-><init>(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/adapters/AdAdapter;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 765
    .end local v0    # "duration":F
    .end local v1    # "rewardedObject":Lcom/fusepowered/RewardedObject;
    .end local v2    # "zone":Lcom/fusepowered/ads/AdZone;
    :cond_1
    return-void
.end method

.method public onVastError(ILcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "adapter"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 956
    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Vast Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p2}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportVastError(II)V

    .line 958
    return-void
.end method

.method public onVastProgress(ILcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "adapter"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 962
    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Vast Progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p2}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportVastProgress(II)V

    .line 964
    return-void
.end method

.method public onVastSkip(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 968
    const-string v0, "AdManager"

    const-string v1, "Got Vast Skip"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->reporter:Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportVastSkip(I)V

    .line 970
    return-void
.end method

.method public onWillLeaveApp(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 2
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/AdManagerListener;->adWillLeaveApp(I)V

    .line 709
    :cond_0
    return-void
.end method

.method public setAdZone(Ljava/lang/String;)V
    .locals 3
    .param p1, "adZoneName"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ad zone to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fusepowered/ads/AdManager;->adZoneName:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager;->adZones:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager;->adZoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/AdZone;

    iput-object v0, p0, Lcom/fusepowered/ads/AdManager;->currentAdZone:Lcom/fusepowered/ads/AdZone;

    .line 136
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/fusepowered/ads/AdManagerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/ads/AdManagerListener;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/fusepowered/ads/AdManager;->listener:Lcom/fusepowered/ads/AdManagerListener;

    .line 769
    return-void
.end method

.method public updateSettings(Landroid/app/Activity;Ljava/util/HashMap;[Lcom/fusepowered/api/model/AdProviderConfig;[Lcom/fusepowered/api/model/AdConfig;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "providerConfigs"    # [Lcom/fusepowered/api/model/AdProviderConfig;
    .param p4, "adConfigs"    # [Lcom/fusepowered/api/model/AdConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/ads/AdZone;",
            ">;[",
            "Lcom/fusepowered/api/model/AdProviderConfig;",
            "[",
            "Lcom/fusepowered/api/model/AdConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    if-eqz p2, :cond_0

    .line 92
    iput-object p2, p0, Lcom/fusepowered/ads/AdManager;->adZones:Ljava/util/HashMap;

    .line 96
    :cond_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 98
    .local v4, "mergedProviderParameters":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p3, :cond_1

    .line 99
    move-object v1, p3

    .local v1, "arr$":[Lcom/fusepowered/api/model/AdProviderConfig;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v1, v2

    .line 100
    .local v7, "providerConfig":Lcom/fusepowered/api/model/AdProviderConfig;
    iget-object v5, v7, Lcom/fusepowered/api/model/AdProviderConfig;->providerIds:Ljava/util/HashMap;

    .line 101
    .local v5, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v8, v7, Lcom/fusepowered/api/model/AdProviderConfig;->id:I

    invoke-virtual {v4, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "arr$":[Lcom/fusepowered/api/model/AdProviderConfig;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "providerConfig":Lcom/fusepowered/api/model/AdProviderConfig;
    :cond_1
    if-eqz p4, :cond_3

    .line 106
    move-object v1, p4

    .local v1, "arr$":[Lcom/fusepowered/api/model/AdConfig;
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 107
    .local v0, "adConfig":Lcom/fusepowered/api/model/AdConfig;
    iget v8, v0, Lcom/fusepowered/api/model/AdConfig;->type:I

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 108
    .restart local v5    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 109
    iget-object v5, v0, Lcom/fusepowered/api/model/AdConfig;->values:Ljava/util/HashMap;

    .line 110
    iget v8, v0, Lcom/fusepowered/api/model/AdConfig;->type:I

    invoke-virtual {v4, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_2
    iget-object v8, v0, Lcom/fusepowered/api/model/AdConfig;->values:Ljava/util/HashMap;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 118
    .end local v0    # "adConfig":Lcom/fusepowered/api/model/AdConfig;
    .end local v1    # "arr$":[Lcom/fusepowered/api/model/AdConfig;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v8, p0, Lcom/fusepowered/ads/AdManager;->allProviders:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 119
    .local v6, "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    invoke-virtual {v6}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 120
    .restart local v5    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "AdManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating provider: ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n params:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6, p1, v5}, Lcom/fusepowered/ads/adapters/AdAdapter;->onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V

    goto :goto_3

    .line 125
    .end local v5    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    :cond_4
    const-wide/16 v8, 0xbb8

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/fusepowered/ads/AdManager;->loadAdsForCurrentAdZone(JZ)V

    .line 127
    return-void
.end method
