.class public Lcom/fusepowered/nx/monetization/MonetizationSDK;
.super Ljava/lang/Object;
.source "MonetizationSDK.java"


# static fields
.field private static handlerThread:Landroid/os/HandlerThread;

.field private static threadHandler:Landroid/os/Handler;


# instance fields
.field private final advertisingClientClassName:Ljava/lang/String;

.field private final advertisingInfoClassName:Ljava/lang/String;

.field private isAdvertiserIdTaskRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->isAdvertiserIdTaskRunning:Z

    .line 68
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->advertisingClientClassName:Ljava/lang/String;

    .line 69
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->advertisingInfoClassName:Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FetchAdvertiserId-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->handlerThread:Landroid/os/HandlerThread;

    .line 81
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/fusepowered/nx/monetization/MonetizationSDK;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->threadHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/monetization/MonetizationSDK;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/MonetizationSDK;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->setAdvertiserIdInfo()V

    return-void
.end method

.method private fetchAdvertiserInfoAndCreateSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    .prologue
    .line 275
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->threadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/nx/monetization/MonetizationSDK$1;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/nx/monetization/MonetizationSDK$1;-><init>(Lcom/fusepowered/nx/monetization/MonetizationSDK;Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method

.method private setAdvertiserIdInfo()V
    .locals 16

    .prologue
    const/4 v15, 0x0

    .line 318
    :try_start_0
    const-string v11, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 319
    .local v4, "advertisingIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "getAdvertisingIdInfo"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/content/Context;

    aput-object v14, v12, v13

    invoke-virtual {v4, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 320
    .local v5, "advertisingIdInfo":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v5, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 322
    .local v1, "adInfo":Ljava/lang/Object;
    const-string v11, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 323
    .local v2, "adInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "getId"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 324
    .local v8, "getIdMethod":Ljava/lang/reflect/Method;
    const-string v11, "isLimitAdTrackingEnabled"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 326
    .local v10, "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v8, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 327
    .local v7, "getId":Ljava/lang/Object;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 329
    .local v9, "isLimitAdTrackingEnabled":Ljava/lang/Object;
    instance-of v11, v7, Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 330
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 331
    .local v3, "advertiserId":Ljava/lang/String;
    invoke-static {v3}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setAdvertiserId(Ljava/lang/String;)V

    .line 334
    .end local v3    # "advertiserId":Ljava/lang/String;
    :cond_0
    instance-of v11, v9, Ljava/lang/Boolean;

    if-eqz v11, :cond_1

    .line 335
    check-cast v9, Ljava/lang/Boolean;

    .end local v9    # "isLimitAdTrackingEnabled":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setLimitAdTracking(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1    # "adInfo":Ljava/lang/Object;
    .end local v2    # "adInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "advertisingIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "advertisingIdInfo":Ljava/lang/reflect/Method;
    .end local v7    # "getId":Ljava/lang/Object;
    .end local v8    # "getIdMethod":Ljava/lang/reflect/Method;
    .end local v10    # "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v6

    .line 339
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v15}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setAdvertiserId(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method continueWithCreateSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    .prologue
    .line 300
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->isAdvertiserIdTaskRunning:Z

    .line 302
    return-void
.end method

.method public createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->isAdvertiserIdTaskRunning:Z

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->isAdvertiserIdTaskRunning:Z

    .line 264
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->fetchAdvertiserInfoAndCreateSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    goto :goto_0
.end method

.method public enableLogging(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 177
    invoke-static {p1}, Lcom/fusepowered/nx/common/Log;->enableLogging(Z)V

    .line 178
    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 358
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 359
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 365
    :goto_0
    return-object v1

    .line 361
    :cond_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Caught exception with getUserAgent call"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/fusepowered/nx/monetization/ApplicationInputs;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputs"    # Lcom/fusepowered/nx/monetization/ApplicationInputs;

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    const-string v0, "Inputs cannot be null in MonetizationSDK.initialize()."

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inputs cannot be null in MonetizationSDK.initialize()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/ApplicationInputs;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/ApplicationInputs;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/ApplicationInputs;->getPublisherUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "applicationName"    # Ljava/lang/String;
    .param p4, "publisherUserId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    const-string v4, "nativeX"

    const-string v5, "Using NativeX MonetizationSDK version 5.4.12"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-nez p1, :cond_0

    .line 123
    const-string v3, "Context cannot be null in MonetizationSDK.initialize()."

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 124
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Context cannot be null in MonetizationSDK.initialize()."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    if-nez p3, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 128
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_4

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 129
    iget-object p3, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 134
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    if-nez p4, :cond_2

    .line 135
    const-string p4, ""

    .line 137
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 138
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid application id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "err":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 140
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .end local v0    # "err":Ljava/lang/String;
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    const-string p3, ""

    goto :goto_0

    .line 143
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    const-string v4, "@"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 144
    invoke-static {v2}, Lcom/fusepowered/nx/common/ServerConfig;->setTestEndpointEnabled(Z)V

    .line 151
    :goto_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_8

    .line 153
    .local v2, "isSDKUninitialized":Z
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setContext(Landroid/content/Context;)V

    .line 154
    invoke-static {p2}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setAppId(Ljava/lang/String;)V

    .line 155
    invoke-static {p3}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setApplicationName(Ljava/lang/String;)V

    .line 156
    invoke-static {p4}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setPublisherUserId(Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->initialize(Landroid/content/Context;)V

    .line 159
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/StringsManager;->initialize()V

    .line 161
    if-eqz v2, :cond_6

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setApplicationFilesDirectoryPath(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->createNativeXCacheDirectoryIfNotExists()V

    .line 164
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->verifyFileStatusForAllRecords()V

    .line 165
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setWebViewUserAgent(Ljava/lang/String;)V

    .line 167
    :cond_6
    return-void

    .line 146
    .end local v2    # "isSDKUninitialized":Z
    :cond_7
    invoke-static {v3}, Lcom/fusepowered/nx/common/ServerConfig;->setTestEndpointEnabled(Z)V

    goto :goto_1

    :cond_8
    move v2, v3

    .line 151
    goto :goto_2
.end method

.method monetizationSDKRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/fusepowered/nx/monetization/MonetizationSDK;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 205
    :cond_0
    sput-object v1, Lcom/fusepowered/nx/monetization/MonetizationSDK;->handlerThread:Landroid/os/HandlerThread;

    .line 206
    sput-object v1, Lcom/fusepowered/nx/monetization/MonetizationSDK;->threadHandler:Landroid/os/Handler;

    .line 207
    return-void
.end method

.method public redeemCurrency()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/fusepowered/nx/common/NetworkConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getDeviceBalance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MonetizationSDK: Exception caught in redeemCurrency()"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public redeemRewards()V
    .locals 2

    .prologue
    .line 237
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/fusepowered/nx/common/NetworkConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getDeviceBalance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MonetizationSDK: Exception caught in redeemRewards()"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->monetizationSDKRelease()V

    .line 186
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->release()V

    .line 187
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->clearSession()V

    .line 188
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->release()V

    .line 189
    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->release()V

    .line 190
    invoke-static {}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->release()V

    .line 191
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->release()V

    .line 192
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->release()V

    .line 193
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/ManagementService;->release()V

    .line 194
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MonetizationSDK: Exception caught while releasing the managers"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
