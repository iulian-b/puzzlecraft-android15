.class public Lcom/fusepowered/nx/monetization/MonetizationManager;
.super Ljava/lang/Object;
.source "MonetizationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;
    }
.end annotation


# static fields
.field private static final STATELESS_SESSION_MAX_ATTEMPT_WAIT_SECONDS:I = 0xf

.field private static final STATELESS_SESSION_MAX_DURATION_SECONDS:I = 0xe10

.field private static instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

.field private static sIsStatelessMode:Ljava/lang/Boolean;

.field private static sLastStatelessSessionAttemptTimeSeconds:J

.field private static sLastStatelessSessionCreateTimeSeconds:J

.field private static final sStatelessAdSessionLock:Ljava/lang/Object;

.field private static sStatelessPlacementsAwaitingSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->sStatelessAdSessionLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->sStatelessPlacementsAwaitingSession:Ljava/util/ArrayList;

    .line 91
    sput-wide v2, Lcom/fusepowered/nx/monetization/MonetizationManager;->sLastStatelessSessionAttemptTimeSeconds:J

    .line 92
    sput-wide v2, Lcom/fusepowered/nx/monetization/MonetizationManager;->sLastStatelessSessionCreateTimeSeconds:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sput-object p0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    .line 78
    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 62
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->onStatelessCreateSessionCompleted(Z)V

    return-void
.end method

.method public static actionTaken(I)V
    .locals 1
    .param p0, "actionId"    # I

    .prologue
    .line 339
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkInstance()V

    .line 343
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->actionTaken(I)V

    goto :goto_0
.end method

.method private static checkInstance()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MonetizationManager not initialized. Please call MonetizationManager.createSession() first."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    return-void
.end method

.method private static checkPlacementName(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1318
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1319
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement name cannot be empty or null in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_1
    return-void
.end method

.method private static checkPosition(Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Ljava/lang/String;)V
    .locals 3
    .param p0, "position"    # Landroid/graphics/Rect;
    .param p1, "enumPosition"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 916
    if-eqz p1, :cond_1

    .line 922
    :cond_0
    return-void

    .line 919
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gez v0, :cond_0

    .line 920
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid placement position in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createInstance()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/fusepowered/nx/monetization/MonetizationManager;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    .line 100
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    new-instance v1, Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/MonetizationSDK;-><init>()V

    iput-object v1, v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    .line 102
    :cond_0
    return-void
.end method

.method public static createSession()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    .line 210
    return-void
.end method

.method public static createSession(Landroid/content/Context;Lcom/fusepowered/nx/monetization/ApplicationInputs;Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputs"    # Lcom/fusepowered/nx/monetization/ApplicationInputs;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    if-eqz p2, :cond_0

    .line 319
    const/4 v0, 0x0

    invoke-interface {p2, v1, v1, v0}, Lcom/fusepowered/nx/monetization/listeners/SessionListener;->createSessionCompleted(ZZLjava/lang/String;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->createInstance()V

    .line 324
    if-nez p1, :cond_2

    .line 325
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ApplicationInputs cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_2
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v0, p0, p1}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->initialize(Landroid/content/Context;Lcom/fusepowered/nx/monetization/ApplicationInputs;)V

    .line 328
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v0, p2}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    goto :goto_0
.end method

.method public static createSession(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    if-eqz p2, :cond_0

    .line 255
    const/4 v1, 0x0

    invoke-interface {p2, v2, v2, v1}, Lcom/fusepowered/nx/monetization/listeners/SessionListener;->createSessionCompleted(ZZLjava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->createInstance()V

    .line 260
    new-instance v0, Lcom/fusepowered/nx/monetization/ApplicationInputs;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/ApplicationInputs;-><init>()V

    .line 261
    .local v0, "inputs":Lcom/fusepowered/nx/monetization/ApplicationInputs;
    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/ApplicationInputs;->setAppId(Ljava/lang/String;)V

    .line 262
    sget-object v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v1, v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v1, p0, v0}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->initialize(Landroid/content/Context;Lcom/fusepowered/nx/monetization/ApplicationInputs;)V

    .line 263
    sget-object v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v1, v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v1, p2}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    goto :goto_0
.end method

.method public static createSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "publisherUserId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    .prologue
    const/4 v2, 0x0

    .line 286
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    if-eqz p3, :cond_0

    .line 288
    const/4 v1, 0x0

    invoke-interface {p3, v2, v2, v1}, Lcom/fusepowered/nx/monetization/listeners/SessionListener;->createSessionCompleted(ZZLjava/lang/String;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->createInstance()V

    .line 293
    new-instance v0, Lcom/fusepowered/nx/monetization/ApplicationInputs;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/ApplicationInputs;-><init>()V

    .line 294
    .local v0, "inputs":Lcom/fusepowered/nx/monetization/ApplicationInputs;
    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/ApplicationInputs;->setAppId(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, p2}, Lcom/fusepowered/nx/monetization/ApplicationInputs;->setPublisherUserId(Ljava/lang/String;)V

    .line 296
    sget-object v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v1, v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v1, p0, v0}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->initialize(Landroid/content/Context;Lcom/fusepowered/nx/monetization/ApplicationInputs;)V

    .line 297
    sget-object v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v1, v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v1, p3}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    goto :goto_0
.end method

.method public static createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/fusepowered/nx/monetization/listeners/SessionListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    if-eqz p0, :cond_0

    .line 228
    const/4 v0, 0x0

    invoke-interface {p0, v1, v1, v0}, Lcom/fusepowered/nx/monetization/listeners/SessionListener;->createSessionCompleted(ZZLjava/lang/String;)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkInstance()V

    .line 233
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    goto :goto_0
.end method

.method public static disableLegacyDeviceIdentifiers(Z)V
    .locals 0
    .param p0, "disable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    return-void
.end method

.method public static final dismissAd(Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;)V
    .locals 1
    .param p0, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;

    .prologue
    .line 1289
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseInterstitial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final dismissAd(Ljava/lang/String;)V
    .locals 1
    .param p0, "customPlacement"    # Ljava/lang/String;

    .prologue
    .line 1303
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1306
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 1307
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseInterstitial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final dismissBannerAd(Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;)V
    .locals 1
    .param p0, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;

    .prologue
    .line 1260
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    :goto_0
    return-void

    .line 1263
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseBanner(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final dismissBannerAd(Ljava/lang/String;)V
    .locals 1
    .param p0, "customPlacement"    # Ljava/lang/String;

    .prologue
    .line 1274
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    :goto_0
    return-void

    .line 1277
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 1278
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseBanner(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static enableLogging(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 446
    invoke-static {p0}, Lcom/fusepowered/nx/common/Log;->enableLogging(Z)V

    .line 447
    return-void
.end method

.method public static final fetchAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 955
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/fusepowered/nx/monetization/MonetizationManager;->fetchAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 956
    return-void
.end method

.method public static final fetchAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 971
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 974
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->setOrCheckStatelessMode(Z)V

    .line 975
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 976
    new-instance v0, Lcom/fusepowered/nx/monetization/MonetizationManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/fusepowered/nx/monetization/MonetizationManager$6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final fetchAdStateless(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "placement"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p3, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 997
    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/fusepowered/nx/monetization/MonetizationManager;->fetchAdStateless(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 998
    return-void
.end method

.method public static final fetchAdStateless(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "customPlacement"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetching ad stateless:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1068
    :goto_0
    return-void

    .line 1017
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/MonetizationManager;->setOrCheckStatelessMode(Z)V

    .line 1018
    invoke-static {p2}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->createInstance()V

    .line 1022
    sget-object v4, Lcom/fusepowered/nx/monetization/MonetizationManager;->sStatelessAdSessionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1023
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in stateless session lock: fetch_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 1025
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 1027
    .local v0, "currentTimeSeconds":J
    sget-object v3, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v3, v3, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->getSessionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v3, v3, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-wide v6, Lcom/fusepowered/nx/monetization/MonetizationManager;->sLastStatelessSessionCreateTimeSeconds:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xe10

    cmp-long v3, v6, v8

    if-lez v3, :cond_4

    .line 1032
    :cond_1
    sget-wide v6, Lcom/fusepowered/nx/monetization/MonetizationManager;->sLastStatelessSessionAttemptTimeSeconds:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xf

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 1034
    sget-object v3, Lcom/fusepowered/nx/monetization/MonetizationManager;->sStatelessPlacementsAwaitingSession:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1038
    :cond_2
    sget-object v3, Lcom/fusepowered/nx/monetization/MonetizationManager;->sStatelessPlacementsAwaitingSession:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1039
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first stateless fetch, calling CreateSession: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 1040
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sput-wide v6, Lcom/fusepowered/nx/monetization/MonetizationManager;->sLastStatelessSessionAttemptTimeSeconds:J

    .line 1042
    new-instance v3, Lcom/fusepowered/nx/monetization/MonetizationManager$7;

    invoke-direct {v3}, Lcom/fusepowered/nx/monetization/MonetizationManager$7;-><init>()V

    invoke-static {p0, p1, v3}, Lcom/fusepowered/nx/monetization/MonetizationManager;->createSession(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    .line 1051
    :cond_3
    new-instance v2, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;

    invoke-direct {v2, p2, p0, p3}, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 1052
    .local v2, "newFetch":Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;
    sget-object v3, Lcom/fusepowered/nx/monetization/MonetizationManager;->sStatelessPlacementsAwaitingSession:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exiting stateless session lock: fetch_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 1055
    monitor-exit v4

    goto/16 :goto_0

    .line 1058
    .end local v0    # "currentTimeSeconds":J
    .end local v2    # "newFetch":Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1057
    .restart local v0    # "currentTimeSeconds":J
    :cond_4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exiting stateless session lock: fetch_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 1058
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1061
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session exists, calling fetch on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 1062
    new-instance v3, Lcom/fusepowered/nx/monetization/MonetizationManager$8;

    invoke-direct {v3, p0, p2, p3}, Lcom/fusepowered/nx/monetization/MonetizationManager$8;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public static final fetchBannerAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 1115
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/fusepowered/nx/monetization/MonetizationManager;->fetchBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 1116
    return-void
.end method

.method public static final fetchBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 1130
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    :goto_0
    return-void

    .line 1133
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->setOrCheckStatelessMode(Z)V

    .line 1134
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 1135
    new-instance v0, Lcom/fusepowered/nx/monetization/MonetizationManager$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/fusepowered/nx/monetization/MonetizationManager$10;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    const-string v0, "5.4.12"

    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 459
    :goto_0
    return-object v0

    .line 458
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkInstance()V

    .line 459
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->getSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static initialize(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/ApplicationInputs;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "inputs"    # Lcom/fusepowered/nx/monetization/ApplicationInputs;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->createInstance()V

    .line 160
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v0, p0, p1}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->initialize(Landroid/content/Context;Lcom/fusepowered/nx/monetization/ApplicationInputs;)V

    goto :goto_0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "publisherUserId"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->createInstance()V

    .line 191
    new-instance v0, Lcom/fusepowered/nx/monetization/ApplicationInputs;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/ApplicationInputs;-><init>()V

    .line 192
    .local v0, "inputs":Lcom/fusepowered/nx/monetization/ApplicationInputs;
    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/ApplicationInputs;->setApplicationName(Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/ApplicationInputs;->setAppId(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p3}, Lcom/fusepowered/nx/monetization/ApplicationInputs;->setPublisherUserId(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p4}, Lcom/fusepowered/nx/monetization/ApplicationInputs;->setPackageName(Ljava/lang/String;)V

    .line 196
    sget-object v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v1, v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v1, p0, v0}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->initialize(Landroid/content/Context;Lcom/fusepowered/nx/monetization/ApplicationInputs;)V

    goto :goto_0
.end method

.method public static isAdReady(Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;)Z
    .locals 1
    .param p0, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAdReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAdReady(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 577
    if-nez p0, :cond_0

    .line 578
    const-string v0, "No Placement Provided!"

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 579
    const/4 v0, 0x0

    .line 581
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isAdReady(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isAndroidVersionSupported()Z
    .locals 6

    .prologue
    const/16 v5, 0x12

    .line 121
    const/4 v2, 0x1

    .line 123
    .local v2, "isSupported":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 124
    const/4 v2, 0x0

    .line 127
    :cond_0
    new-instance v1, Lcom/fusepowered/nx/common/DeviceFriendlyNameHelper;

    invoke-direct {v1}, Lcom/fusepowered/nx/common/DeviceFriendlyNameHelper;-><init>()V

    .line 128
    .local v1, "devices":Lcom/fusepowered/nx/common/DeviceFriendlyNameHelper;
    invoke-virtual {v1}, Lcom/fusepowered/nx/common/DeviceFriendlyNameHelper;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "deviceName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MonetizationManager.isAndroidVersionSupported(): Device name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Lcom/fusepowered/nx/common/DeviceFriendlyNameHelper;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HTC One"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v3, v5, :cond_1

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MonetizationManager.isAndroidVersionSupported(): Device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OS VERSION "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isn\'t supported by the SDK."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->i(Ljava/lang/String;)V

    .line 133
    const-string v3, "No ads will be shown."

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->i(Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x0

    .line 137
    :cond_1
    return v2
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 536
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static onStatelessCreateSessionCompleted(Z)V
    .locals 8
    .param p0, "success"    # Z

    .prologue
    .line 1071
    sget-object v2, Lcom/fusepowered/nx/monetization/MonetizationManager;->sStatelessAdSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1072
    :try_start_0
    const-string v1, "in stateless session lock: onStatelessCreateSessionCompleted"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 1073
    if-eqz p0, :cond_1

    .line 1074
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sput-wide v4, Lcom/fusepowered/nx/monetization/MonetizationManager;->sLastStatelessSessionCreateTimeSeconds:J

    .line 1077
    sget-object v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->sStatelessPlacementsAwaitingSession:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;

    .line 1078
    .local v0, "fetchEntry":Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling fetch on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;->placementName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 1079
    iget-object v3, v0, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/fusepowered/nx/monetization/MonetizationManager$9;

    invoke-direct {v4, v0}, Lcom/fusepowered/nx/monetization/MonetizationManager$9;-><init>(Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1095
    .end local v0    # "fetchEntry":Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1088
    :cond_0
    :try_start_1
    sget-object v1, Lcom/fusepowered/nx/monetization/MonetizationManager;->sStatelessPlacementsAwaitingSession:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1094
    :goto_1
    const-string v1, "exiting stateless session lock: onStatelessCreateSessionCompleted"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 1095
    monitor-exit v2

    .line 1096
    return-void

    .line 1092
    :cond_1
    const-string v1, "CreateSession Stateless failed; cannot fetch placements.."

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static redeemCurrency()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkInstance()V

    .line 420
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->redeemCurrency()V

    goto :goto_0
.end method

.method public static redeemRewards()V
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkInstance()V

    .line 435
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->redeemRewards()V

    goto :goto_0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    if-nez v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->monetizationSDK:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->release()V

    .line 547
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->instance:Lcom/fusepowered/nx/monetization/MonetizationManager;

    goto :goto_0
.end method

.method public static final reloadBannerAd(Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;)V
    .locals 1
    .param p0, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;

    .prologue
    .line 1153
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->reloadBanner(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final reloadBannerAd(Ljava/lang/String;)V
    .locals 1
    .param p0, "customPlacement"    # Ljava/lang/String;

    .prologue
    .line 1167
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    :goto_0
    return-void

    .line 1170
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 1171
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->reloadBanner(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setBannerAdPosition(Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 1186
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    :goto_0
    return-void

    .line 1189
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->setBannerAdPosition(Ljava/lang/String;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public static final setBannerAdPosition(Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V
    .locals 1
    .param p0, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p1, "position"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .prologue
    .line 1204
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1207
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->setBannerAdPosition(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V

    goto :goto_0
.end method

.method public static final setBannerAdPosition(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "customPlacement"    # Ljava/lang/String;
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1244
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1247
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 1248
    invoke-static {p1, v1, p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPosition(Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Ljava/lang/String;)V

    .line 1249
    invoke-static {p0, p1, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->setAdPosition(Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V

    goto :goto_0
.end method

.method public static final setBannerAdPosition(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V
    .locals 2
    .param p0, "customPlacement"    # Ljava/lang/String;
    .param p1, "position"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .prologue
    const/4 v1, 0x0

    .line 1223
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    :goto_0
    return-void

    .line 1226
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 1227
    invoke-static {v1, p1, p0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPosition(Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Ljava/lang/String;)V

    .line 1228
    invoke-static {p0, v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->setAdPosition(Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V

    goto :goto_0
.end method

.method public static setCurrencyListener(Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;)V
    .locals 1
    .param p0, "listener"    # Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setCurrencyListener(Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;)V

    goto :goto_0
.end method

.method private static setOrCheckStatelessMode(Z)V
    .locals 3
    .param p0, "isStateless"    # Z

    .prologue
    .line 1325
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->sIsStatelessMode:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1326
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->sIsStatelessMode:Ljava/lang/Boolean;

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationManager;->sIsStatelessMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 1329
    const/4 v0, 0x5

    const-string v1, "NativeXSDK"

    const-string v2, "Do not use both regular and Stateless NativeX SDK fetch/show ad calls.  Doing so will cause breakage"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setRewardListener(Lcom/fusepowered/nx/monetization/listeners/RewardListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/fusepowered/nx/monetization/listeners/RewardListener;

    .prologue
    .line 398
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setRewardListener(Lcom/fusepowered/nx/monetization/listeners/RewardListener;)V

    goto :goto_0
.end method

.method public static setTheme(Lcom/fusepowered/nx/monetization/theme/Theme;)V
    .locals 1
    .param p0, "theme"    # Lcom/fusepowered/nx/monetization/theme/Theme;

    .prologue
    .line 523
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkInstance()V

    .line 527
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->setTheme(Lcom/fusepowered/nx/monetization/theme/Theme;)V

    goto :goto_0
.end method

.method public static final showAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;

    .prologue
    .line 595
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showAd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public static final showAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 623
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 624
    return-void
.end method

.method public static final showAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 608
    return-void
.end method

.method public static final showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 639
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 642
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->setOrCheckStatelessMode(Z)V

    .line 643
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 644
    new-instance v0, Lcom/fusepowered/nx/monetization/MonetizationManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/fusepowered/nx/monetization/MonetizationManager$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final showBannerAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 830
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 831
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placement"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p2, "position"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .prologue
    .line 811
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 812
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p2, "position"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;
    .param p3, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 849
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 850
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 777
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 778
    return-void
.end method

.method private static showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "adPosition"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;
    .param p4, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 896
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    :goto_0
    return-void

    .line 899
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->setOrCheckStatelessMode(Z)V

    .line 900
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 901
    invoke-static {p2, p3, p1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPosition(Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Ljava/lang/String;)V

    .line 902
    new-instance v0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/nx/monetization/MonetizationManager$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 868
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 869
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "position"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .prologue
    .line 794
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 795
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "position"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;
    .param p3, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 887
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 888
    return-void
.end method

.method public static final showReadyAd(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 672
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showReadyAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 673
    return-void
.end method

.method public static final showReadyAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 688
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 691
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->setOrCheckStatelessMode(Z)V

    .line 692
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 693
    new-instance v0, Lcom/fusepowered/nx/monetization/MonetizationManager$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/fusepowered/nx/monetization/MonetizationManager$2;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final showReadyAdStateless(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placement"    # Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 722
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/fusepowered/nx/monetization/MonetizationManager;->showReadyAdStateless(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    .line 723
    return-void
.end method

.method public static final showReadyAdStateless(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 738
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    :goto_0
    return-void

    .line 741
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/MonetizationManager;->setOrCheckStatelessMode(Z)V

    .line 743
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;)V

    .line 744
    new-instance v0, Lcom/fusepowered/nx/monetization/MonetizationManager$3;

    invoke-direct {v0, p1, p0, p2}, Lcom/fusepowered/nx/monetization/MonetizationManager$3;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static trackInAppPurchase(Lcom/fusepowered/nx/common/billingtracking/BillingInputs;)V
    .locals 7
    .param p0, "inputs"    # Lcom/fusepowered/nx/common/billingtracking/BillingInputs;

    .prologue
    .line 477
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/common/billingtracking/BillingInputs;->getStoreProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/nx/common/billingtracking/BillingInputs;->getStoreTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/nx/common/billingtracking/BillingInputs;->getStoreTransactionTimeUTC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fusepowered/nx/common/billingtracking/BillingInputs;->getCostPerItem()F

    move-result v3

    invoke-virtual {p0}, Lcom/fusepowered/nx/common/billingtracking/BillingInputs;->getCurrencyLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fusepowered/nx/common/billingtracking/BillingInputs;->getQuantity()I

    move-result v5

    invoke-virtual {p0}, Lcom/fusepowered/nx/common/billingtracking/BillingInputs;->getProductTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/nx/common/billingtracking/BillingCallback;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static trackInAppPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "storeProductId"    # Ljava/lang/String;
    .param p1, "storeTransactionId"    # Ljava/lang/String;
    .param p2, "storeTransactionTimeUTC"    # Ljava/lang/String;
    .param p3, "costPerItem"    # F
    .param p4, "currencyLocale"    # Ljava/lang/String;
    .param p5, "quantity"    # I
    .param p6, "productTitle"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-static {}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAndroidVersionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/fusepowered/nx/common/billingtracking/BillingCallback;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static final update(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 933
    new-instance v0, Lcom/fusepowered/nx/monetization/MonetizationManager$5;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/MonetizationManager$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 940
    return-void
.end method
