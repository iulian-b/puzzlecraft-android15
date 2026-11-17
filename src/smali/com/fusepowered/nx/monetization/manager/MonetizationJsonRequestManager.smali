.class public Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;
.super Lcom/fusepowered/nx/common/JsonRequestManager;
.source "MonetizationJsonRequestManager.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/DeviceManager;->getDeviceInstance(Landroid/content/Context;)Lcom/fusepowered/nx/common/Device;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/common/JsonRequestManager;-><init>(Lcom/fusepowered/nx/common/Device;)V

    .line 44
    return-void
.end method

.method private getSession(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/business/Session;
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Lcom/fusepowered/nx/monetization/business/Session;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/business/Session;-><init>()V

    .line 122
    .local v0, "session":Lcom/fusepowered/nx/monetization/business/Session;
    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/business/Session;->setSessionId(Ljava/lang/String;)V

    .line 123
    return-object v0
.end method


# virtual methods
.method public getActionTakenRequest(I)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/DeviceManager;->getDeviceInstance(Landroid/content/Context;)Lcom/fusepowered/nx/common/Device;

    move-result-object v0

    .line 147
    .local v0, "device":Lcom/fusepowered/nx/common/Device;
    new-instance v2, Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;

    invoke-direct {v2}, Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;-><init>()V

    .line 148
    .local v2, "request":Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->generateUdidJsonCollection()Lcom/fusepowered/nx/common/UDIDs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;->setUdids(Lcom/fusepowered/nx/common/UDIDs;)V

    .line 149
    invoke-virtual {v2, p1}, Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;->setActionId(I)V

    .line 150
    invoke-virtual {v0}, Lcom/fusepowered/nx/common/Device;->isHackedAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;->setIsHacked(Ljava/lang/String;)V

    .line 152
    new-instance v3, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v3}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 157
    .end local v0    # "device":Lcom/fusepowered/nx/common/Device;
    .end local v2    # "request":Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;
    :goto_0
    return-object v3

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AdvertiserJsonRequestManager: Unexpected exception caught in getActionTakenBody()."

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAvailableDeviceBalanceRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->getAvailableDeviceBalanceRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAvailableDeviceBalanceRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceRequestData;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceRequestData;-><init>()V

    .line 110
    .local v1, "request":Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceRequestData;
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->getSession(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/business/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceRequestData;->setSession(Lcom/fusepowered/nx/monetization/business/Session;)V

    .line 111
    new-instance v2, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v2}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 116
    .end local v1    # "request":Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceRequestData;
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MonetizationJsonRequestManager: Unexpected exception caught in getAvailableDeviceBalanceRequest()"

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCreateSessionRequest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getPublisherUserId()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "pubUserId":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->getCreateSessionRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getCreateSessionRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "pubUserId"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/fusepowered/nx/common/NetworkConnectionManager;

    move-result-object v5

    .line 57
    .local v5, "ncm":Lcom/fusepowered/nx/common/NetworkConnectionManager;
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->getDevice()Lcom/fusepowered/nx/common/Device;

    move-result-object v2

    .line 59
    .local v2, "device":Lcom/fusepowered/nx/common/Device;
    new-instance v1, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;-><init>()V

    .line 60
    .local v1, "createSessionRequest":Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->generateUdidJsonCollection()Lcom/fusepowered/nx/common/UDIDs;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setUdids(Lcom/fusepowered/nx/common/UDIDs;)V

    .line 61
    invoke-virtual {v2}, Lcom/fusepowered/nx/common/Device;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setDeviceGenerationInfo(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Lcom/fusepowered/nx/common/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setOsVersion(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->isOnWiFi()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setOnCellular(Ljava/lang/Boolean;)V

    .line 64
    invoke-virtual {v2}, Lcom/fusepowered/nx/common/Device;->isHacked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setHacked(Ljava/lang/Boolean;)V

    .line 65
    invoke-virtual {v2}, Lcom/fusepowered/nx/common/Device;->isUsingSdk()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setUsingSDK(Ljava/lang/Boolean;)V

    .line 66
    const-string v6, "5.4.12"

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setSDKVersion(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setAppId(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, p2}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setPublisherUserId(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->isOfferCacheAvailable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setOfferCacheAvailable(Ljava/lang/Boolean;)V

    .line 70
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->isLimitAdTracking()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setAdvertiserTrackingEnabled(Ljava/lang/Boolean;)V

    .line 71
    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setBuildType()V

    .line 72
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getWebViewUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setWebViewUserAgent(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "deviceLanguageCode":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 76
    invoke-virtual {v1, v3}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setDeviceLanguageCode(Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "appLanguageCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setAppLanguageCode(Ljava/lang/String;)V

    .line 85
    :cond_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasPreviousSessionId()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->getPreviousSessionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->setPreviousSessionId(Ljava/lang/String;)V

    .line 89
    :cond_2
    new-instance v6, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v6}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v6, v1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 94
    .end local v0    # "appLanguageCode":Ljava/lang/String;
    .end local v1    # "createSessionRequest":Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;
    .end local v2    # "device":Lcom/fusepowered/nx/common/Device;
    .end local v3    # "deviceLanguageCode":Ljava/lang/String;
    .end local v5    # "ncm":Lcom/fusepowered/nx/common/NetworkConnectionManager;
    :goto_1
    return-object v6

    .line 70
    .restart local v1    # "createSessionRequest":Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;
    .restart local v2    # "device":Lcom/fusepowered/nx/common/Device;
    .restart local v5    # "ncm":Lcom/fusepowered/nx/common/NetworkConnectionManager;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 90
    .end local v1    # "createSessionRequest":Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;
    .end local v2    # "device":Lcom/fusepowered/nx/common/Device;
    .end local v5    # "ncm":Lcom/fusepowered/nx/common/NetworkConnectionManager;
    :catch_0
    move-exception v4

    .line 91
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "MonetizationJsonRequestManager: Unexpected exception caught in getCreateSessionRequest()"

    invoke-static {v6}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getRedeemCurrencyRequest([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "payoutIds"    # [Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceRequestData;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceRequestData;-><init>()V

    .line 129
    .local v1, "request":Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceRequestData;
    invoke-direct {p0, p2}, Lcom/fusepowered/nx/monetization/manager/MonetizationJsonRequestManager;->getSession(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/business/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceRequestData;->setSession(Lcom/fusepowered/nx/monetization/business/Session;)V

    .line 130
    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceRequestData;->setPayoutIds([Ljava/lang/String;)V

    .line 131
    new-instance v2, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v2}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 136
    .end local v1    # "request":Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceRequestData;
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MonetizationJsonRequestManager: Unexpected exception caught in getRedeemCurrencyRequest()"

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    const/4 v2, 0x0

    goto :goto_0
.end method
