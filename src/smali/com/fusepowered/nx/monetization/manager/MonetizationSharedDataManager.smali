.class public Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;
.super Ljava/lang/Object;
.source "MonetizationSharedDataManager.java"


# instance fields
.field private volatile advertiserId:Ljava/lang/String;

.field private volatile appId:Ljava/lang/String;

.field private volatile applicationFilesDirectoryPath:Ljava/lang/String;

.field private volatile applicationName:Ljava/lang/String;

.field private volatile contextInstance:Landroid/content/Context;

.field private volatile currencyListener:Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;

.field private volatile currencySupported:Z

.field private volatile limitAdTracking:Z

.field private volatile publisherUserId:Ljava/lang/String;

.field private volatile rewardListener:Lcom/fusepowered/nx/monetization/listeners/RewardListener;

.field private volatile webViewUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->currencyListener:Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;

    .line 43
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->rewardListener:Lcom/fusepowered/nx/monetization/listeners/RewardListener;

    .line 44
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->currencySupported:Z

    .line 45
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->limitAdTracking:Z

    .line 46
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->applicationFilesDirectoryPath:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->webViewUserAgent:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static checkTheme()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getTheme()Lcom/fusepowered/nx/monetization/theme/Theme;

    move-result-object v0

    .line 171
    .local v0, "theme":Lcom/fusepowered/nx/monetization/theme/Theme;
    if-nez v0, :cond_0

    .line 172
    new-instance v1, Lcom/fusepowered/nx/monetization/theme/OriginalTheme;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/theme/OriginalTheme;-><init>()V

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->setTheme(Lcom/fusepowered/nx/monetization/theme/Theme;)V

    .line 174
    :cond_0
    return-void
.end method

.method public static getAdvertiserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->advertiserId:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationFilesDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->applicationFilesDirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->contextInstance:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrencyListener()Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->currencyListener:Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;

    return-object v0
.end method

.method private static declared-synchronized getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;
    .locals 3

    .prologue
    .line 61
    const-class v2, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/ManagementService;->getInstance()Lcom/fusepowered/nx/monetization/manager/ManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/manager/ManagementService;->getMonetizationSharedDataManager()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    .line 62
    .local v0, "monetizationSharedDataManager":Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;
    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    .end local v0    # "monetizationSharedDataManager":Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;
    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;-><init>()V

    .line 64
    .restart local v0    # "monetizationSharedDataManager":Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/ManagementService;->getInstance()Lcom/fusepowered/nx/monetization/manager/ManagementService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/manager/ManagementService;->setMonetizationSharedDataManager(Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v2

    return-object v0

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getPublisherUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->publisherUserId:Ljava/lang/String;

    return-object v0
.end method

.method public static getRewardListener()Lcom/fusepowered/nx/monetization/listeners/RewardListener;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->rewardListener:Lcom/fusepowered/nx/monetization/listeners/RewardListener;

    return-object v0
.end method

.method public static getWebViewUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->webViewUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static isCurrencySupported()Z
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->currencySupported:Z

    return v0
.end method

.method public static isLimitAdTracking()Z
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->limitAdTracking:Z

    return v0
.end method

.method public static isUsingRewardListener()Z
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->rewardListener:Lcom/fusepowered/nx/monetization/listeners/RewardListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAdvertiserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "advertiserId"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->advertiserId:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->appId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static setApplicationFilesDirectoryPath(Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationFilesDirectoryPath"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->applicationFilesDirectoryPath:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public static setApplicationName(Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->applicationName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->contextInstance:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public static setCurrencyListener(Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;)V
    .locals 1
    .param p0, "currencyListener"    # Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;

    .prologue
    .line 159
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->currencyListener:Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;

    .line 160
    return-void
.end method

.method public static setCurrencySupport(Z)V
    .locals 1
    .param p0, "isSupported"    # Z

    .prologue
    .line 178
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-boolean p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->currencySupported:Z

    .line 179
    return-void
.end method

.method public static setLimitAdTracking(Z)V
    .locals 1
    .param p0, "isLimitTracking"    # Z

    .prologue
    .line 187
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-boolean p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->limitAdTracking:Z

    .line 188
    return-void
.end method

.method public static setPublisherUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "publisherUserId"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->publisherUserId:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public static setRewardListener(Lcom/fusepowered/nx/monetization/listeners/RewardListener;)V
    .locals 1
    .param p0, "rewardListener"    # Lcom/fusepowered/nx/monetization/listeners/RewardListener;

    .prologue
    .line 163
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->rewardListener:Lcom/fusepowered/nx/monetization/listeners/RewardListener;

    .line 164
    return-void
.end method

.method public static setWebViewUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p0, "webViewUserAgent"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->webViewUserAgent:Ljava/lang/String;

    .line 217
    return-void
.end method
