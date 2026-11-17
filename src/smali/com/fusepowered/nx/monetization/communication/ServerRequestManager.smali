.class public Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"


# static fields
.field public static final REQUEST_TAG:Ljava/lang/String; = "NativeXRequest"

.field private static createSessionExecuting:Z

.field private static deviceBalanceExecuting:Z

.field private static instance:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;


# instance fields
.field private jsonRequestManager:Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;

.field private responseHandler:Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->instance:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .line 64
    sput-boolean v1, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z

    .line 65
    sput-boolean v1, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->createSessionExecuting:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->responseHandler:Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;

    .line 63
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->jsonRequestManager:Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;

    .line 73
    new-instance v0, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->responseHandler:Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;

    .line 74
    new-instance v0, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->jsonRequestManager:Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;

    .line 75
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 60
    sput-boolean p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->createSessionExecuting:Z

    return p0
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->responseHandler:Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 60
    sput-boolean p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;
    .locals 2

    .prologue
    .line 83
    const-class v1, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->instance:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->instance:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .line 86
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->instance:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->instance:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .line 95
    return-void
.end method

.method private shouldExecute()Z
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public actionTaken(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 253
    :try_start_0
    const-string v1, "PublicServices/MobileTrackingApiRestV1.svc/ActionTaken/Put"

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/fusepowered/nx/common/ServerConfig;->applyConfiguration(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->jsonRequestManager:Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->getActionTakenRequest(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "requestBody":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;

    const/4 v1, 0x1

    new-instance v4, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$7;

    invoke-direct {v4, p0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$7;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)V

    new-instance v5, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$8;

    invoke-direct {v5, p0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$8;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)V

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 275
    .local v0, "request":Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;
    const-string v1, "content-type"

    const-string v4, "application/json"

    invoke-virtual {v0, v1, v4}, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "ActionTaken"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->setRequestName(Ljava/lang/String;)V

    .line 277
    const-string v1, "NativeXRequest"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)V

    .line 278
    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getRequestQueue()Lcom/fusepowered/nx/network/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/network/volley/RequestQueue;->add(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "request":Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "requestBody":Ljava/lang/String;
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v6

    .line 280
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while executing ActionTaken request."

    invoke-static {v1, v6}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createSession(Lcom/fusepowered/nx/common/OnTaskCompletedListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/fusepowered/nx/common/OnTaskCompletedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    :try_start_0
    sget-boolean v1, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->createSessionExecuting:Z

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "ServerRequestManager.createSession called, when one is already running!!"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->w(Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v1, "PublicServices/MobileTrackingApiRestV1.svc/CreateSessionV2"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/fusepowered/nx/common/ServerConfig;->applyConfiguration(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->jsonRequestManager:Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->getCreateSessionRequest()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "requestBody":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    new-instance v5, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$1;

    invoke-direct {v5, p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$1;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/common/OnTaskCompletedListener;)V

    new-instance v6, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$2;

    invoke-direct {v6, p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$2;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/common/OnTaskCompletedListener;)V

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 139
    .local v0, "request":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;>;"
    const-string v1, "CreateSession"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->setRequestName(Ljava/lang/String;)V

    .line 140
    const-string v1, "NativeXRequest"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->setTag(Ljava/lang/Object;)V

    .line 141
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->createSessionExecuting:Z

    .line 142
    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getRequestQueue()Lcom/fusepowered/nx/network/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/network/volley/RequestQueue;->add(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v0    # "request":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;>;"
    .end local v2    # "url":Ljava/lang/String;
    .end local v4    # "requestBody":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 144
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while executing CreateSession request."

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceBalance()V
    .locals 8

    .prologue
    .line 158
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->isCurrencySupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    const-string v1, "Balance disabled for this app"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->i(Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget-boolean v1, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z

    if-nez v1, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->shouldExecute()Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    const-string v1, "GetDeviceBalance request did not met the initial requirements"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v7

    .line 207
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while executing GetDeviceBalance request."

    invoke-static {v1, v7}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 172
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z

    .line 174
    const-string v1, "PublicServices/AfppApiRestV1.svc/GetAvailableDeviceBalanceV2"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/fusepowered/nx/common/ServerConfig;->applyConfiguration(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->jsonRequestManager:Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->getAvailableDeviceBalanceRequest()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "requestBody":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;

    new-instance v5, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$3;

    invoke-direct {v5, p0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$3;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)V

    new-instance v6, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$4;

    invoke-direct {v6, p0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$4;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)V

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 203
    .local v0, "request":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;>;"
    const-string v1, "GetDeviceBalance"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->setRequestName(Ljava/lang/String;)V

    .line 204
    const-string v1, "NativeXRequest"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->setTag(Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getRequestQueue()Lcom/fusepowered/nx/network/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/network/volley/RequestQueue;->add(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/Request;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getOfferCache(Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;

    .prologue
    .line 288
    :try_start_0
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->shouldExecute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    const-string v1, "GetOfferCache request did not met the initial requirements"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "sessionId":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "SessionId"

    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "PublicServices/ServiceApiRestV1.svc/Offer/CacheV2"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/fusepowered/nx/common/ServerConfig;->applyConfiguration(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/fusepowered/nx/common/Utilities;->appendParamsToUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    const/4 v4, 0x0

    new-instance v5, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$9;

    invoke-direct {v5, p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$9;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;)V

    new-instance v6, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$10;

    invoke-direct {v6, p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$10;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;)V

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 320
    .local v0, "request":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;>;"
    const-string v1, "GetOfferCache"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->setRequestName(Ljava/lang/String;)V

    .line 321
    const-string v1, "NativeXRequest"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->setTag(Ljava/lang/Object;)V

    .line 322
    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getRequestQueue()Lcom/fusepowered/nx/network/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/network/volley/RequestQueue;->add(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v0    # "request":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;>;"
    .end local v2    # "url":Ljava/lang/String;
    .end local v8    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 324
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while executing getOfferCache request."

    invoke-static {v1, v7}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getRichMedia(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;

    .prologue
    .line 333
    :try_start_0
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->shouldExecute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    const-string v1, "getRichMedia request did not met the initial requirements"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 373
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v0, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$11;

    invoke-direct {v4, p0, p2}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$11;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;)V

    new-instance v5, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$12;

    invoke-direct {v5, p0, p2}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$12;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 367
    .local v0, "request":Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;
    const-string v1, "RichMedia"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->setRequestName(Ljava/lang/String;)V

    .line 368
    const-string v1, "NativeXRequest"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)V

    .line 369
    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getRequestQueue()Lcom/fusepowered/nx/network/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/network/volley/RequestQueue;->add(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    .end local v0    # "request":Lcom/fusepowered/nx/network/volley/toolbox/StringRequest;
    :catch_0
    move-exception v6

    .line 371
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while executing getRichMedia request."

    invoke-static {v1, v6}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isCreateSessionExecuting()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->createSessionExecuting:Z

    return v0
.end method

.method public redeemCurrency(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V
    .locals 8
    .param p1, "balanceData"    # Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;

    .prologue
    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->shouldExecute()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->unRedeemedBalances:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 216
    :cond_0
    const-string v1, "RedeemCurrency request did not meet the initial requirements"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->jsonRequestManager:Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;->getUnredeemedPayoutIds()[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->getRedeemCurrencyRequest([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "requestBody":Ljava/lang/String;
    const-string v1, "PublicServices/AfppApiRestV1.svc/RedeemDeviceBalanceV2"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/fusepowered/nx/common/ServerConfig;->applyConfiguration(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;

    new-instance v5, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$5;

    invoke-direct {v5, p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$5;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V

    new-instance v6, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$6;

    invoke-direct {v6, p0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$6;-><init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)V

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 242
    .local v0, "request":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;>;"
    const-string v1, "NativeXRequest"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->setTag(Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getRequestQueue()Lcom/fusepowered/nx/network/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/network/volley/RequestQueue;->add(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v0    # "request":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;>;"
    .end local v2    # "url":Ljava/lang/String;
    .end local v4    # "requestBody":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 245
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while executing RedeemCurrency request."

    invoke-static {v1, v7}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
