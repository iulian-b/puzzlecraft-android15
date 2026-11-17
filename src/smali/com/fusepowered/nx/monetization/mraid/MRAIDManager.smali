.class public Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;
.super Ljava/lang/Object;
.source "MRAIDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;
    }
.end annotation


# static fields
.field private static final MSG_EXPIRE_CONTAINER:I = 0x3eb

.field private static final MSG_EXPIRE_CONTAINER_DELAY:J = 0x2bf20L

.field private static final MSG_RELEASE_AD:I = 0x3ea

.field private static final MSG_RELEASE_AD_DELAY:J = 0x7d0L

.field private static final PARAM_CACHED_OFFERS:Ljava/lang/String; = "CachedOffers"

.field private static final PARAM_PLACEMENT_ID:Ljava/lang/String; = "placement"

.field private static final PARAM_PLACEMENT_TYPE:Ljava/lang/String; = "placementtype"

.field private static final PARAM_RESPONSE_TYPE:Ljava/lang/String; = "responseType"

.field private static final PARAM_SESSION_ID:Ljava/lang/String; = "SessionId"

.field public static final PARAM_THEME_ID:Ljava/lang/String; = "ThemeId"

.field public static final PARAM_UNIT_ID:Ljava/lang/String; = "AdUnitId"

.field private static containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

.field private static final handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

.field private static final mraidFolder:Ljava/lang/String;

.field private static runningOnUnity:Z

.field private static final sNativexVideoPlayerListener:Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->runningOnUnity:Z

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->sNativexVideoPlayerListener:Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;

    .line 632
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    return-void
.end method

.method public static CreateNewContainerAndAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "placementType"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p3, "position"    # Landroid/graphics/Rect;
    .param p4, "bannerPosition"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;
    .param p5, "adEventListener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;
    .param p6, "cached"    # Z

    .prologue
    .line 264
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    const-string v0, "No ads.. creating ad"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-nez v0, :cond_0

    .line 267
    const-string v0, "container holder is null.. creating MRAIDContainerHolder"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 268
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 270
    invoke-static/range {v0 .. v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->createContainer(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v7

    .line 271
    .local v7, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    if-nez p6, :cond_1

    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne p2, v0, :cond_2

    .line 272
    :cond_1
    invoke-static {v7}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->expireContainerDelayed(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 274
    :cond_2
    const/4 v0, 0x1

    .line 278
    .end local v7    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :goto_0
    return v0

    .line 276
    :cond_3
    const-string v0, "Could not create ad. No session"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v1, "No session. Unable to fetch an ad."

    invoke-static {p1, p5, v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->expireContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    return-void
.end method

.method private static cacheAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Landroid/graphics/Rect;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p3, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;
    .param p4, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 121
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->cacheAdBase(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)Z

    move-result v0

    return v0
.end method

.method private static cacheAdBase(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)Z
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "placementType"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p3, "position"    # Landroid/graphics/Rect;
    .param p4, "bannerPosition"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;
    .param p5, "adEventListener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 127
    const/4 v8, 0x0

    .line 128
    .local v8, "holder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :try_start_0
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v0, p2, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getMapDataHolder(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    move-result-object v8

    .line 132
    :cond_0
    if-nez v8, :cond_1

    .line 134
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->CreateNewContainerAndAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z

    move-result v0

    .line 170
    :goto_0
    return v0

    .line 139
    :cond_1
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_4

    .line 141
    if-eqz p5, :cond_2

    .line 142
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setOnRichMediaEventListener(Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 144
    :cond_2
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    const-string v0, "Ad already fetched"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 146
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ALREADY_FETCHED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Ad is already fetched and ready to display"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_3
    const-string v0, "Ad is fetching"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 150
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->DOWNLOADING:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Ad is being downloaded at the moment"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    :cond_4
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    const-string v0, "Caching ad"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 157
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->createContainer(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    iput-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 158
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->expireContainerDelayed(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :cond_5
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v1, "No session. Unable to fetch an ad."

    invoke-static {p1, p5, v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v7

    .line 168
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v1, "Error while creating/updating the ad"

    invoke-static {p1, p5, v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 169
    const-string v0, "Exception caught while handling ad request"

    invoke-static {v0, v7}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final cacheBanner(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 96
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {p0, p1, v0, p3, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->cacheAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public static final cacheInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 112
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->cacheAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private static createContainer(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "position"    # Landroid/graphics/Rect;
    .param p4, "adPosition"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;
    .param p5, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;
    .param p6, "cache"    # Z

    .prologue
    .line 347
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "sessionId":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;-><init>(Landroid/app/Activity;)V

    .line 349
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    invoke-virtual {v0, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setAdName(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setPlacementType(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 351
    if-eqz p3, :cond_0

    .line 352
    invoke-virtual {v0, p3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setAdPosition(Landroid/graphics/Rect;)V

    .line 354
    :cond_0
    invoke-virtual {v0, p4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setBannerPosition(Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V

    .line 355
    invoke-virtual {v0, p5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setOnRichMediaEventListener(Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 356
    invoke-virtual {v0, p6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setAdCached(Z)V

    .line 357
    invoke-static {v1, p2, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->getUrl(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->loadAdUrl(Ljava/lang/String;)V

    .line 358
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, v0, p6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->putContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Z)V

    .line 359
    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attachToActivity(Landroid/app/Activity;)V

    .line 360
    const-string v2, "Ad Created"

    invoke-static {v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    .line 361
    return-object v0
.end method

.method private static expireContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 3
    .param p0, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 319
    if-eqz p0, :cond_0

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getPlacementType()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v1, v2, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getState()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-ne v1, v2, :cond_1

    .line 324
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setAdExpired(Z)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->EXPIRED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "The ad has expired"

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 327
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unable to release expired container"

    invoke-static {p0, v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->EXPIRED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "The ad has expired"

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 331
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static expireContainerDelayed(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 4
    .param p0, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 310
    if-eqz p0, :cond_0

    .line 311
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 312
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 314
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    .locals 2
    .param p0, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p1, "event"    # Lcom/fusepowered/nx/monetization/enums/AdEvent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 419
    if-eqz p0, :cond_0

    .line 420
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to provide callback"

    invoke-static {p0, v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static fireListener(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    .locals 3
    .param p0, "placement"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;
    .param p2, "event"    # Lcom/fusepowered/nx/monetization/enums/AdEvent;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 394
    :try_start_0
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    new-instance v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;

    invoke-direct {v2, p1, p2, p3, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;-><init>(Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to provide callback"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getNativeVideoPlayerListener()Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;
    .locals 1

    .prologue
    .line 747
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->sNativexVideoPlayerListener:Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;

    return-object v0
.end method

.method private static getUrl(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)Ljava/lang/String;
    .locals 11
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .prologue
    const/4 v10, 0x0

    .line 467
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Folder url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 468
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 470
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "SessionId"

    invoke-interface {v5, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v7, "responseType"

    const-string v8, "json"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getOffersCachedList()Ljava/util/List;

    move-result-object v4

    .line 474
    .local v4, "offerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v0, "cachedOffersString":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 477
    .local v2, "offerCount":I
    const/4 v1, 0x1

    .line 478
    .local v1, "loopCount":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 479
    .local v3, "offerId":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    if-ge v1, v2, :cond_0

    .line 481
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 484
    goto :goto_0

    .line 485
    .end local v3    # "offerId":Ljava/lang/Long;
    :cond_1
    const-string v7, "CachedOffers"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .end local v0    # "cachedOffersString":Ljava/lang/StringBuilder;
    .end local v1    # "loopCount":I
    .end local v2    # "offerCount":I
    :cond_2
    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 489
    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v8, "file:///android_asset/mraid_test/mraid_test_video_page.html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v8, "http://internal.teamfreeze.com/internal.mobile.com/Richmedia/Preview/RichmediaTemplatePreview.aspx"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v8, "http://internal2.teamfreeze.com/internal.mobile.com/Richmedia/Preview/RichmediaTemplatePreview.aspx"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v8, "file:///android_asset/mraid_test/mraid_test_custom_scheme_response_time_page.html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v8, "https://dl.dropboxusercontent.com/u/15676262/AdSimulator/template.html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v8, "https://dl.dropboxusercontent.com/s/uushlgxxnf77zml/mraid_test_video_page.html?token_hash=AAF2-x1x1estOcg9hbncFPpJ4Q0MMkK47QbtOtFV0_5esQ&dl=1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 490
    :cond_3
    sget-object v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    .line 502
    .local v6, "url":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 503
    return-object v6

    .line 492
    .end local v6    # "url":Ljava/lang/String;
    :cond_4
    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/fusepowered/nx/common/ServerConfig;->applyConfiguration(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "url":Ljava/lang/String;
    goto :goto_1

    .line 495
    .end local v6    # "url":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 496
    const-string v7, "placement"

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_6
    const-string v7, "placementtype"

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v7, "Richmedia/"

    invoke-static {v7, v10}, Lcom/fusepowered/nx/common/ServerConfig;->applyConfiguration(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/fusepowered/nx/common/Utilities;->appendParamsToUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "url":Ljava/lang/String;
    goto :goto_1
.end method

.method public static hasAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Z
    .locals 3
    .param p0, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 681
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_1

    .line 682
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getMapDataHolder(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    move-result-object v0

    .line 683
    .local v0, "holder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    iget-object v2, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 685
    .end local v0    # "holder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :cond_1
    return v1
.end method

.method private static hasAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z
    .locals 3
    .param p0, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cached"    # Z
    .param p3, "fireListener"    # Z

    .prologue
    .line 693
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v1, :cond_4

    .line 695
    if-eqz p2, :cond_1

    .line 696
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v1, p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getCachedContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 700
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :goto_0
    if-eqz v0, :cond_4

    .line 701
    if-eqz p3, :cond_0

    .line 702
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isAdLoaded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 703
    if-eqz p2, :cond_2

    .line 704
    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ALREADY_FETCHED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Ad is already fetched and ready to display"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 712
    :cond_0
    :goto_1
    const/4 v1, 0x1

    .line 715
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :goto_2
    return v1

    .line 698
    :cond_1
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v1, p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .restart local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    goto :goto_0

    .line 706
    :cond_2
    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ALREADY_SHOWN:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Ad is already shown. Dismiss it in order to show another one"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 709
    :cond_3
    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->DOWNLOADING:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Ad is being downloaded at the moment"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 715
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static final hasBanner(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 647
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, p0, v1, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->hasAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasBanner(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "shouldFireListener"    # Z

    .prologue
    .line 658
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->hasAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasCachedBanner(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 669
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->hasAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasCachedBanner(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "shouldFireListener"    # Z

    .prologue
    .line 675
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->hasAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasCachedInterstitial(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 652
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->hasAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasCachedInterstitial(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "shouldFireListener"    # Z

    .prologue
    .line 664
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->hasAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasInterstitial(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 636
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, p0, v1, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->hasAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasInterstitial(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "shouldFireListener"    # Z

    .prologue
    .line 642
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->hasAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method private static isAdLoaded(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Z
    .locals 3
    .param p0, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 830
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v1, :cond_1

    .line 831
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-static {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getContainer(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 832
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isAdLoaded()Z

    move-result v1

    .line 841
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :goto_0
    return v1

    .line 835
    .restart local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_0
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v1, p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getCachedContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 836
    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isAdLoaded()Z

    move-result v1

    goto :goto_0

    .line 841
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAdReady(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Z
    .locals 3
    .param p0, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 722
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 723
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getMapDataHolder(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    move-result-object v0

    .line 724
    .local v0, "holder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    iget-object v2, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isAdLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 726
    .end local v0    # "holder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :cond_0
    return v1
.end method

.method public static isBannerLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 819
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isAdLoaded(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInterstitialLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 824
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isAdLoaded(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static final isRunningOnUnity()Z
    .locals 1

    .prologue
    .line 850
    sget-boolean v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->runningOnUnity:Z

    return v0
.end method

.method public static release()V
    .locals 2

    .prologue
    .line 453
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v0, :cond_0

    .line 454
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->release()V

    .line 455
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    .line 458
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->release()V

    .line 460
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->removeMessages(I)V

    .line 461
    return-void
.end method

.method public static final releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 1
    .param p0, "mraidContainer"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 533
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Z)V

    .line 534
    return-void
.end method

.method public static final releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Z)V
    .locals 11
    .param p0, "mraidContainer"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p1, "closeAnimation"    # Z

    .prologue
    .line 541
    if-nez p0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 546
    :cond_0
    :try_start_0
    sget-object v9, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getMD5ListUsed()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 547
    sget-object v9, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v9}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 548
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 550
    .local v2, "cachedAdsMD5List":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 551
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 552
    .local v5, "key":Ljava/lang/String;
    sget-object v9, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v9, v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 553
    .local v6, "mapDataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    const/4 v1, 0x0

    .line 555
    .local v1, "adContainer":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    iget-object v9, v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v9, :cond_3

    iget-object v9, v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eq p0, v9, :cond_3

    .line 556
    iget-object v1, v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 561
    :cond_2
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getMD5ListUsed()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 562
    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getMD5ListUsed()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 563
    .local v8, "object":Ljava/lang/Object;
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 564
    .local v7, "md5":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 584
    .end local v1    # "adContainer":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .end local v2    # "cachedAdsMD5List":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "mapDataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .end local v7    # "md5":Ljava/lang/String;
    .end local v8    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 585
    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v10, "The ad failed to dismiss."

    invoke-static {p0, v9, v10}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 586
    const-string v9, "Unable to release ad"

    invoke-static {v9, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 557
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "adContainer":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .restart local v2    # "cachedAdsMD5List":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "mapDataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :cond_3
    :try_start_1
    iget-object v9, v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eq p0, v9, :cond_2

    .line 558
    iget-object v1, v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    goto :goto_1

    .line 569
    .end local v1    # "adContainer":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "mapDataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :cond_4
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getMD5ListUsed()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->checkToUpdateStatusToReady(Ljava/util/Set;Ljava/util/Set;)V

    .line 572
    .end local v2    # "cachedAdsMD5List":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    sget-object v9, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    invoke-virtual {v9}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    if-eq v9, v10, :cond_6

    .line 573
    sget-object v9, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    const/16 v10, 0x3ea

    invoke-virtual {v9, v10, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 576
    :cond_6
    sget-object v9, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    const/16 v10, 0x3ea

    invoke-virtual {v9, v10, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 577
    sget-object v9, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v9, :cond_7

    .line 578
    sget-object v9, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v9, p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->releaseContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Z)V

    goto/16 :goto_0

    .line 582
    :cond_7
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->shouldReleaseWithCloseAnimation(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static final releaseAd(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .prologue
    .line 520
    :try_start_0
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 521
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p1, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 522
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 523
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unable to release ad"

    invoke-static {v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static releaseAdCancel(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 2
    .param p0, "mraidContainer"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 592
    if-eqz p0, :cond_0

    .line 594
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 596
    :cond_0
    return-void
.end method

.method public static releaseAdDelayed(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 4
    .param p0, "mraidContainer"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 600
    if-nez p0, :cond_0

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 605
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static final releaseBanner(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 513
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 514
    return-void
.end method

.method public static final releaseInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 508
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 509
    return-void
.end method

.method private static reloadAd(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .prologue
    .line 441
    :try_start_0
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 442
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p1, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 443
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->reload()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception caught while reloading ad"

    invoke-static {v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final reloadBanner(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 434
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->reloadAd(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 435
    return-void
.end method

.method public static final reloadInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 429
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->reloadAd(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 430
    return-void
.end method

.method public static final setAdPosition(Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V
    .locals 4
    .param p0, "adName"    # Ljava/lang/String;
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "adPosition"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .prologue
    .line 369
    :try_start_0
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 370
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-virtual {v2, v3, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 371
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_2

    .line 372
    if-eqz p2, :cond_1

    .line 373
    invoke-virtual {v0, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setBannerPosition(Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V

    .line 385
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 375
    .restart local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setAdPosition(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error setting ad position"

    invoke-static {v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_2
    :try_start_1
    const-string v2, "Error setting ad position: Invalid Id"

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static final setRunningOnUnity(Z)V
    .locals 0
    .param p0, "isUnity"    # Z

    .prologue
    .line 846
    sput-boolean p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->runningOnUnity:Z

    .line 847
    return-void
.end method

.method public static setViewTimeOut(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;J)V
    .locals 3
    .param p0, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p1, "timeout"    # J

    .prologue
    .line 286
    if-eqz p0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getPlacementType()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isAdCached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {p0, p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->updateExpirationTime(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;J)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getPlacementType()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_0

    .line 292
    invoke-static {p0, p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->updateExpirationTime(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;J)V

    goto :goto_0
.end method

.method private static showAdBase(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "placementType"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p3, "position"    # Landroid/graphics/Rect;
    .param p4, "bannerPosition"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;
    .param p5, "adEventListener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;
    .param p6, "userCall"    # Z

    .prologue
    .line 178
    const/4 v8, 0x0

    .line 179
    .local v8, "holder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :try_start_0
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v0, p2, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getMapDataHolder(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    move-result-object v8

    .line 183
    :cond_0
    if-nez v8, :cond_1

    .line 185
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->CreateNewContainerAndAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z

    move-result v0

    .line 257
    :goto_0
    return v0

    .line 189
    :cond_1
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_5

    .line 192
    if-eqz p5, :cond_2

    .line 193
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setOnRichMediaEventListener(Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 195
    :cond_2
    if-eqz p4, :cond_4

    .line 196
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setBannerPosition(Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V

    .line 200
    :goto_1
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attachToActivity(Landroid/app/Activity;)V

    .line 201
    if-eqz p6, :cond_3

    .line 202
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ALREADY_SHOWN:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Ad is already shown. Dismiss it in order to show another one"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 204
    :cond_3
    const-string v0, "Updating existing ad"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :cond_4
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setAdPosition(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 254
    :catch_0
    move-exception v7

    .line 255
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v1, "Error while creating/updating the ad"

    invoke-static {p1, p5, v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 256
    const-string v0, "Exception caught while handling ad request"

    invoke-static {v0, v7}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_b

    .line 210
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    iput-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 211
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 212
    if-eqz p5, :cond_6

    .line 213
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setOnRichMediaEventListener(Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 217
    :cond_6
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->BEFORE_DISPLAY:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Before Ad is displayed"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 219
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setAdCached(Z)V

    .line 220
    if-eqz p4, :cond_9

    .line 221
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setBannerPosition(Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V

    .line 227
    :goto_2
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getPlacementType()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_7

    .line 228
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    const/16 v1, 0x3eb

    iget-object v2, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 231
    :cond_7
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getPlacementType()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-eq v0, v1, :cond_a

    .line 232
    :cond_8
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attachToActivity(Landroid/app/Activity;)V

    .line 236
    :goto_3
    const-string v0, "Showing fetched ad"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 223
    :cond_9
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setAdPosition(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 234
    :cond_a
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fusepowered/nx/monetization/manager/ActivityManager;->startMRAIDInterstitial(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    .line 240
    :cond_b
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 241
    const-string v0, "Creating ad to show"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 242
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->createContainer(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    iput-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 243
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne p2, v0, :cond_c

    .line 244
    iget-object v0, v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->expireContainerDelayed(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 246
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 248
    :cond_d
    const-string v0, "Could not create ad. No session"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v1, "No session. Unable to fetch an ad."

    invoke-static {p1, p5, v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static final showBanner(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "adPosition"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;
    .param p4, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;
    .param p5, "userCall"    # Z

    .prologue
    .line 87
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->showAdBase(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z

    move-result v0

    return v0
.end method

.method public static final showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;
    .param p3, "userCall"    # Z

    .prologue
    const/4 v3, 0x0

    .line 104
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->showAdBase(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z

    move-result v0

    return v0
.end method

.method public static stopAlphaAnimationAndDismissAd(Ljava/lang/String;)V
    .locals 4
    .param p0, "containerName"    # Ljava/lang/String;

    .prologue
    .line 751
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 753
    :try_start_0
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getContainer(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 754
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->clearAllAlphaAnimations()V

    .line 756
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->makeContainerInvisible()V

    .line 757
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v3, "Error while creating/updating the ad"

    invoke-static {v0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 758
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v1

    .line 761
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unable to stop alpha animation"

    invoke-static {v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static trackVideoProgress(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V
    .locals 4
    .param p0, "containerName"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "progress"    # Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    .prologue
    .line 731
    :try_start_0
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 732
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getContainer(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 733
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->trackVideo(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V

    .line 735
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_75_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    if-ne p2, v2, :cond_0

    .line 737
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/AdEvent;->VIDEO_75_PERCENT_COMPLETED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v3, "Video ad has reached 75% completion"

    invoke-static {v0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v1

    .line 742
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unable to track video progress"

    invoke-static {v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static update(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 798
    if-nez p0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    :try_start_0
    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v3, :cond_0

    .line 803
    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 804
    .local v2, "holder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    iget-object v4, v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eq v4, p0, :cond_2

    .line 805
    iget-object v4, v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivityClassName()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "activityName":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 807
    iget-object v4, v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attachToActivity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 812
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v2    # "holder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :catch_0
    move-exception v1

    .line 813
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to update ads"

    invoke-static {v3, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static updateExpirationTime(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;J)V
    .locals 3
    .param p0, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p1, "timeout"    # J

    .prologue
    const/16 v2, 0x3eb

    .line 300
    if-eqz p0, :cond_0

    .line 301
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    invoke-virtual {v1, v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 302
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    invoke-virtual {v1, v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 303
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "ViewTimeout updated"

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 304
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 306
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static videoCancelled(Ljava/lang/String;)V
    .locals 3
    .param p0, "containerName"    # Ljava/lang/String;

    .prologue
    .line 768
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 770
    :try_start_0
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getContainer(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 771
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->makeContainerVisible()V

    .line 773
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireVideoCancelledEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unable to send video cancelled event."

    invoke-static {v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static videoCompleted(Ljava/lang/String;)V
    .locals 4
    .param p0, "containerName"    # Ljava/lang/String;

    .prologue
    .line 782
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_1

    .line 784
    :try_start_0
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->containerHolder:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getContainer(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 785
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->makeContainerVisible()V

    .line 789
    :cond_0
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/AdEvent;->VIDEO_COMPLETED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v3, "Video ad has completed"

    invoke-static {v0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_1
    :goto_0
    return-void

    .line 790
    :catch_0
    move-exception v1

    .line 791
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unable to send video completed event."

    invoke-static {v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
