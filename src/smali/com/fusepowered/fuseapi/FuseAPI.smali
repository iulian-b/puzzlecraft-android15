.class public Lcom/fusepowered/fuseapi/FuseAPI;
.super Ljava/lang/Object;
.source "FuseAPI.java"


# static fields
.field public static FuseAPI:Lcom/fusepowered/fuseapi/FuseAPI; = null

.field private static final TAG:Ljava/lang/String; = "FuseAPI"

.field public static _ss:Z

.field public static accountAlias:Ljava/lang/String;

.field private static adManager:Lcom/fusepowered/ads/AdManager;

.field public static adToDisplay:Lcom/fusepowered/util/Ad;

.field public static appName:Ljava/lang/String;

.field public static appNameDisplay:Ljava/lang/String;

.field public static appdata:Landroid/content/SharedPreferences;

.field private static bridge:Lcom/fusepowered/FuseNativeBridge;

.field private static builder:Landroid/app/AlertDialog$Builder;

.field public static checkingAd:Z

.field private static commonParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field public static deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

.field private static displayNotifications:Z

.field private static displayingAd:Z

.field public static drawerIconID:I

.field public static fuseCallback:Lcom/fusepowered/util/FuseCallback;

.field public static gameDataReqId:I

.field public static gameInfo:Lcom/fusepowered/util/GameInfo;

.field public static gcmContext:Landroid/content/Context;

.field public static iconID:I

.field public static id:I

.field private static internalLoggingChecked:Z

.field public static loadThread:Ljava/lang/Thread;

.field public static mainActivity:Landroid/app/Activity;

.field public static notificationID:Ljava/lang/String;

.field private static numPlays:I

.field private static optOut:Z

.field public static overrideSuspend:Z

.field public static packageName:Ljava/lang/String;

.field private static platformString:Ljava/lang/String;

.field public static registered:Z

.field public static registrationID:Ljava/lang/String;

.field public static registrationIDToSendAfterStartSession:Ljava/lang/String;

.field public static responseValues:Lcom/fusepowered/util/ResponseValues;

.field private static sDetector:Lcom/fusepowered/crashlog/CrashDetector;

.field public static sLastGCMSenderId:Ljava/lang/String;

.field public static final sdkVersion:Lcom/fusepowered/ads/APIVersion;

.field public static showingFuseNotifications:Z

.field public static showingManditoryMessage:Z

.field public static showingMoreGames:Z

.field private static suspended:Z

.field private static theUserIDThatWasRegisteredWithSetRewardedVideoUserIDAndThatWeNeedToUseInReportRewardedVideoCompleted:Ljava/lang/String;

.field public static useSSL:Ljava/lang/Boolean;

.field public static userAgent:Ljava/lang/String;

.field public static waitForLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->registered:Z

    .line 104
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingManditoryMessage:Z

    .line 105
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingFuseNotifications:Z

    .line 106
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications:Z

    .line 107
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    .line 108
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->overrideSuspend:Z

    .line 110
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->waitForLoad:Z

    .line 111
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 124
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->useSSL:Ljava/lang/Boolean;

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->theUserIDThatWasRegisteredWithSetRewardedVideoUserIDAndThatWeNeedToUseInReportRewardedVideoCompleted:Ljava/lang/String;

    .line 449
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->internalLoggingChecked:Z

    .line 4376
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->sdkVersion:Lcom/fusepowered/ads/APIVersion;

    .line 4387
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->_ss:Z

    return-void

    .line 4376
    :array_0
    .array-data 4
        0x2
        0x2
        0x0
    .end array-data
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sput-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    .line 131
    new-instance v0, Lcom/fusepowered/util/DeviceInfoFactory;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/util/DeviceInfoFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    .line 132
    new-instance v0, Lcom/fusepowered/util/ResponseValues;

    invoke-direct {v0}, Lcom/fusepowered/util/ResponseValues;-><init>()V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    .line 134
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sput-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    .line 138
    new-instance v0, Lcom/fusepowered/util/DeviceInfoFactory;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/util/DeviceInfoFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    .line 139
    new-instance v0, Lcom/fusepowered/util/ResponseValues;

    invoke-direct {v0}, Lcom/fusepowered/util/ResponseValues;-><init>()V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    .line 141
    return-void
.end method

.method public static _getAdZones()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4394
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v0}, Lcom/fusepowered/ads/AdManager;->_getAdZones()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _getProviders()Ljava/util/Map;
    .locals 1
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
    .line 4390
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v0}, Lcom/fusepowered/ads/AdManager;->_getProviders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static _getProvidersInWaterfall(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "zone"    # Ljava/lang/String;

    .prologue
    .line 4401
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ads/AdManager;->_getProvidersInWaterfall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _getWaterfall(Ljava/lang/String;)[I
    .locals 1
    .param p0, "zone"    # Ljava/lang/String;

    .prologue
    .line 4398
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ads/AdManager;->_getWaterfall(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static _overrideZone(Ljava/lang/String;[I)V
    .locals 0
    .param p0, "zone"    # Ljava/lang/String;
    .param p1, "waterfall"    # [I

    .prologue
    .line 4405
    return-void
.end method

.method public static acceptFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4073
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4075
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4077
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4078
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4079
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4080
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4082
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_ACCEPT_FRIEND:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4084
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4085
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 70
    sput-boolean p0, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications:Z

    return p0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 70
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->theUserIDThatWasRegisteredWithSetRewardedVideoUserIDAndThatWeNeedToUseInReportRewardedVideoCompleted:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGetAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGetAd(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->notificationView(I)V

    return-void
.end method

.method static synthetic access$700(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->notificationClick(I)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->openWebPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->showNextMessage(I)V

    return-void
.end method

.method public static adClick()V
    .locals 0

    .prologue
    .line 1512
    return-void
.end method

.method public static adConfigReceived()V
    .locals 0

    .prologue
    .line 1490
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateAdManagerSettings()V

    .line 1491
    return-void
.end method

.method public static adDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1494
    const-string v0, "FuseAPI"

    const-string v1, "Ad dismissed, resetting displayingAd flag"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    .line 1500
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    if-eqz v0, :cond_0

    .line 1505
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    invoke-virtual {v0, v2}, Lcom/fusepowered/util/Ad;->setDisplayed(Z)V

    .line 1510
    :cond_0
    return-void
.end method

.method public static addFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3998
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4000
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4002
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4003
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4004
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4005
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4006
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4007
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_ADD_FRIEND:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4010
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4011
    return-void
.end method

.method private static buildDataPayloadJSON(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "objectMapKey"    # Ljava/lang/String;
    .param p1, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;

    .prologue
    .line 2938
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2939
    .local v6, "paramJson":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2942
    .local v0, "dataPayload":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/fusepowered/util/GameKeyValuePairs;->getMapForKey(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 2944
    .local v5, "objectMapEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2945
    .local v4, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2947
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2948
    const-string v7, "k"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2949
    const-string v7, "v"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2950
    const-string v7, "b"

    const-string v8, "0"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2951
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2961
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "objectMapEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 2962
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "FuseAPI"

    const-string v8, "buildDataPayloadJSON JSONException"

    invoke-static {v7, v8, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2963
    const/4 v6, 0x0

    .line 2966
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v6    # "paramJson":Lorg/json/JSONObject;
    :goto_1
    return-object v6

    .line 2960
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "objectMapEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "paramJson":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v7, "data_payload"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static buildDataPayloadJSON(Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/util/GameValue;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 2905
    .local p0, "mapEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2906
    .local v5, "paramJson":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2909
    .local v0, "dataPayload":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2910
    .local v4, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2912
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2913
    const-string v7, "k"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2914
    const-string v7, "v"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fusepowered/util/GameValue;

    invoke-virtual {v6}, Lcom/fusepowered/util/GameValue;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2915
    const-string v7, "b"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fusepowered/util/GameValue;

    invoke-virtual {v6}, Lcom/fusepowered/util/GameValue;->isBinary()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    :goto_1
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2916
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2926
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;"
    :catch_0
    move-exception v1

    .line 2927
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "FuseAPI"

    const-string v7, "buildDataPayloadJSON JSONException"

    invoke-static {v6, v7, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2928
    const/4 v5, 0x0

    .line 2931
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "paramJson":Lorg/json/JSONObject;
    :goto_2
    return-object v5

    .line 2915
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;"
    .restart local v5    # "paramJson":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v6, "0"

    goto :goto_1

    .line 2925
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;"
    :cond_2
    const-string v6, "data_payload"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static checkAdAvailable(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "adZoneName"    # Ljava/lang/String;
    .param p1, "adCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    const/4 v2, 0x0

    .line 1535
    const-string v0, "FuseAPI"

    const-string v1, "Checking for available ad"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v0, :cond_0

    .line 1537
    invoke-virtual {p1, v2, v2}, Lcom/fusepowered/util/FuseCallback;->adAvailabilityResponse(II)V

    .line 1542
    :goto_0
    return-void

    .line 1540
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->preloadAdForZone(Ljava/lang/String;)V

    .line 1541
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3, p1}, Lcom/fusepowered/ads/AdManager;->checkAdAvailableAsync(JLcom/fusepowered/util/FuseCallback;)Z

    goto :goto_0
.end method

.method private static checkAndEnableLogging(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 455
    :try_start_0
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->internalLoggingChecked:Z

    if-eqz v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "awwyiss"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 460
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-static {}, Lcom/fusepowered/log/FuseLog;->enableInternalLogging()V

    .line 463
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 464
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static clearAll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2253
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v4, :cond_1

    .line 2254
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v4}, Lcom/fusepowered/util/ResponseValues;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    .line 2255
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    if-eqz v3, :cond_0

    .line 2256
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/util/Message;

    .line 2257
    .local v2, "message":Lcom/fusepowered/util/Message;
    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setDisplayed(Z)V

    goto :goto_0

    .line 2261
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "message":Lcom/fusepowered/util/Message;
    :cond_0
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v4}, Lcom/fusepowered/util/ResponseValues;->getAd()Lcom/fusepowered/util/Ad;

    move-result-object v0

    .line 2262
    .local v0, "ad":Lcom/fusepowered/util/Ad;
    if-eqz v0, :cond_1

    .line 2263
    invoke-virtual {v0, v5}, Lcom/fusepowered/util/Ad;->setDisplayed(Z)V

    .line 2266
    :cond_1
    return-void
.end method

.method public static connected()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 2374
    :try_start_0
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2375
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2376
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 2382
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 2379
    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2381
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 2382
    .local v1, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static deleteSignPost(Ljava/lang/String;I)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "signPostId"    # I

    .prologue
    .line 4355
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4356
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4360
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4361
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4362
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4363
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4364
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4365
    const-string v1, "sign_post_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4366
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_DELETE_SIGN_POST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4368
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4370
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static deleteUserChatMessage(Ljava/lang/String;I)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "messageId"    # I

    .prologue
    .line 3601
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3602
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3606
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3607
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3610
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3611
    const-string v1, "message_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3612
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_DELETE_MESSAGE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3614
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 3616
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static deviceLogin(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    const/4 v0, 0x0

    .line 3366
    sget-object v1, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v1}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_DEVICE_ID:Lcom/fusepowered/util/AccountType;

    move-object v1, p0

    move-object v3, v0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3367
    return-void
.end method

.method public static displayAd(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "adZoneName"    # Ljava/lang/String;
    .param p1, "adCallback"    # Lcom/fusepowered/util/FuseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1425
    .local p2, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v0, :cond_0

    .line 1431
    :goto_0
    return-void

    .line 1428
    :cond_0
    const-string v0, "FuseAPI"

    const-string v1, "Attempting to display ad"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ads/AdManager;->setAdZone(Ljava/lang/String;)V

    .line 1430
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x5dc

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/fusepowered/ads/AdManager;->displayAd(JJLjava/util/HashMap;)Z

    goto :goto_0
.end method

.method public static displayMoreGames(Lcom/fusepowered/activities/FuseApiBrowser;)V
    .locals 15
    .param p0, "fuseApiMoregamesBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;

    .prologue
    const/4 v14, 0x1

    .line 2527
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->connected()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2528
    sput-boolean v14, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    .line 2530
    if-nez p0, :cond_0

    .line 2531
    new-instance p0, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;

    .end local p0    # "fuseApiMoregamesBrowser":Lcom/fusepowered/activities/FuseApiBrowser;
    invoke-direct {p0}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;-><init>()V

    .line 2534
    .restart local p0    # "fuseApiMoregamesBrowser":Lcom/fusepowered/activities/FuseApiBrowser;
    :cond_0
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->moreGamesView()V

    .line 2536
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2538
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2540
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "id"

    sget v11, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    const-string v10, "timestamp"

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    const-string v10, "platform"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    const-string v10, "shown_on_play"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->gamesPlayed()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    const-string v10, "country"

    sget-object v11, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {v11}, Lcom/fusepowered/util/DeviceInfoFactory;->getCountryCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2545
    const-string v10, "language"

    sget-object v11, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {v11}, Lcom/fusepowered/util/DeviceInfoFactory;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2547
    sget-object v10, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v10

    .line 2548
    .local v4, "pixelDensity":D
    const/4 v7, 0x0

    .line 2550
    .local v7, "statusBarHeight":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2552
    .local v6, "rectgle":Landroid/graphics/Rect;
    sget-object v10, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 2554
    .local v9, "window":Landroid/view/Window;
    if-eqz v9, :cond_1

    .line 2555
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2556
    iget v0, v6, Landroid/graphics/Rect;->top:I

    .line 2557
    .local v0, "StatusBarHeight":I
    const v10, 0x1020002

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2558
    .local v2, "contentViewTop":I
    sub-int v7, v2, v0

    .line 2561
    .end local v0    # "StatusBarHeight":I
    .end local v2    # "contentViewTop":I
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fusepowered/util/FuseServer;->getMoreGamesHostUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?pd="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&sbh="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2562
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v10, v11, v3}, Lcom/fusepowered/fuseapi/MessagingTask;->generateURL(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    .line 2568
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->showFuseApiMoreGamesBrowser(Ljava/lang/String;Lcom/fusepowered/activities/FuseApiBrowser;)V

    .line 2570
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "pixelDensity":D
    .end local v6    # "rectgle":Landroid/graphics/Rect;
    .end local v7    # "statusBarHeight":I
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "window":Landroid/view/Window;
    :cond_2
    return-void
.end method

.method public static declared-synchronized displayNotifications(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p0, "alertDialogBuilder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 1902
    const-class v2, Lcom/fusepowered/fuseapi/FuseAPI;

    monitor-enter v2

    if-eqz p0, :cond_0

    .line 1903
    :try_start_0
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    .line 1910
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    .line 1912
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1913
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/fusepowered/fuseapi/FuseAPI;->showNextMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    :cond_1
    monitor-exit v2

    return-void

    .line 1902
    .end local v0    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static emailLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3347
    sget-object v0, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_EMAIL:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3348
    return-void
.end method

.method public static enableCrashDetection()V
    .locals 2

    .prologue
    .line 2465
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->sDetector:Lcom/fusepowered/crashlog/CrashDetector;

    if-nez v0, :cond_0

    .line 2466
    new-instance v0, Lcom/fusepowered/crashlog/CrashDetector;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/crashlog/CrashDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->sDetector:Lcom/fusepowered/crashlog/CrashDetector;

    .line 2468
    :cond_0
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->sDetector:Lcom/fusepowered/crashlog/CrashDetector;

    invoke-virtual {v0}, Lcom/fusepowered/crashlog/CrashDetector;->start()V

    .line 2469
    return-void
.end method

.method public static endSession()V
    .locals 4

    .prologue
    .line 760
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 762
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 763
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_END:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 769
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->clearAll()V

    .line 770
    return-void
.end method

.method public static facebookLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "facebookId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3250
    sget-object v0, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_FACEBOOK:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3251
    return-void
.end method

.method public static facebookLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "facebookId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3270
    sget-object v0, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_FACEBOOK:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3271
    return-void
.end method

.method public static friendsPushNotification(Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 729
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 731
    .local v0, "acct":Lcom/fusepowered/util/Account;
    if-nez v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 734
    :cond_0
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 736
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 737
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_SEND_PUSH_LIST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v2, "type"

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v2, "account_id"

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    const-string v2, "message"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v2, v1, v3}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    goto :goto_0
.end method

.method public static fuseLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3327
    sget-object v0, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3328
    return-void
.end method

.method public static gamecenterLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "playerID"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "fuseCallBack"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3390
    sget-object v0, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const-string v3, ""

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_GAMECENTER:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3391
    return-void
.end method

.method public static gamesPlayed()I
    .locals 1

    .prologue
    .line 2351
    sget v0, Lcom/fusepowered/fuseapi/FuseAPI;->numPlays:I

    return v0
.end method

.method public static getAdManager()Lcom/fusepowered/ads/AdManager;
    .locals 1

    .prologue
    .line 909
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    return-object v0
.end method

.method public static getAttackRobberyLog(Lcom/fusepowered/util/FuseCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4249
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4250
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->getUserTransactionLog(Lcom/fusepowered/util/FuseCallback;)V

    .line 4252
    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static getDisplayedAdAction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2248
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v2, "displayed_ad_action"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2249
    .local v0, "adAction":Ljava/lang/String;
    return-object v0
.end method

.method private static getDisplayedAdId()I
    .locals 4

    .prologue
    .line 2242
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v2, "displayed_ad_id"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2243
    .local v0, "adId":I
    return v0
.end method

.method public static getEnemiesList(IILcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "range"    # I
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4293
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4297
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4298
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4299
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4300
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4301
    const-string v1, "user_level"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4302
    const-string v1, "range"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4303
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_ENEMIES_LIST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4306
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4307
    return-void
.end method

.method public static getFriendGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p3, "friendFuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3076
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFriendGameData(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Ljava/lang/String;)I
    .locals 2
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p2, "friendFuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3063
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1, p2}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFriendGameDataCollection(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p2, "friendFuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3088
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1, p2}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameDataCollection(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;ZLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3973
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getFriendsList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getFuseID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3225
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 3227
    .local v0, "account":Lcom/fusepowered/util/Account;
    if-eqz v0, :cond_0

    .line 3228
    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getFuseId()Ljava/lang/String;

    move-result-object v1

    .line 3231
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getGCMSenderId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 672
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->sLastGCMSenderId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 673
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->sLastGCMSenderId:Ljava/lang/String;

    .line 679
    .local v1, "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-object v2

    .line 676
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_0
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->FuseAPI:Lcom/fusepowered/fuseapi/FuseAPI;

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    const-string v4, "GCMData"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 677
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    const-string v3, "GCMSenderId"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getGameConfiguration()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3898
    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 3899
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3901
    .local v1, "k":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3903
    .local v4, "rtn":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3904
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3905
    .local v2, "key":Ljava/lang/String;
    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3907
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3910
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public static getGameConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3856
    const-string v0, "GAME CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is the game config k "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3857
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3051
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getGameData(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;)I
    .locals 2
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3007
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getGameData(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Z)I
    .locals 1
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p2, "isCollection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Z)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3015
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->getGameData(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Z)I

    move-result v0

    return v0
.end method

.method public static getGameDataCollection(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;)Ljava/util/HashMap;
    .locals 2
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3026
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameDataCollection(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;ZLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getGameValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3826
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getGameConfigurationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalAttackRobberyLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4241
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4242
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getUserTransactionLogs()Ljava/util/ArrayList;

    move-result-object v0

    .line 4245
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static getLocalEnemiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4310
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getEnemiesList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getMailFromServer(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3678
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3679
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3683
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3684
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3685
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3686
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3687
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_MAIL:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3688
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3690
    if-nez p1, :cond_0

    .line 3691
    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    .line 3694
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 3696
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public static getMailList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3671
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0, p0}, Lcom/fusepowered/util/ResponseValues;->getMailList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getMailListFriendFromServer(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 0
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3661
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->getMailFromServer(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 3662
    return-void
.end method

.method public static getMailListFromServer(Lcom/fusepowered/util/FuseCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3649
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getFuseID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getMailFromServer(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 3650
    return-void
.end method

.method private static getMyGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;ZLjava/lang/String;)I
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p3, "isFriend"    # Z
    .param p4, "friendFuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Z",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3102
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v7

    .line 3104
    .local v7, "account":Lcom/fusepowered/util/Account;
    if-eqz v7, :cond_3

    .line 3105
    invoke-virtual {v7}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v8

    .line 3107
    .local v8, "accountId":Ljava/lang/String;
    invoke-static {v8}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    if-ne v8, v0, :cond_1

    .line 3108
    :cond_0
    sget-object v0, Lcom/fusepowered/FuseError;->BAD_DATA:Lcom/fusepowered/FuseError;

    sget v1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-virtual {p2, v0, v1}, Lcom/fusepowered/util/FuseCallback;->setFuseGameDataError(Lcom/fusepowered/FuseError;I)V

    .line 3129
    .end local v8    # "accountId":Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    :goto_1
    return v9

    .line 3113
    .restart local v8    # "accountId":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 3114
    sget-object v0, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    invoke-virtual {v0}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    .line 3115
    .local v3, "accountType":I
    move-object v2, p4

    .line 3121
    .local v2, "finalAccountId":Ljava/lang/String;
    :goto_2
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGetGameDataRequest(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IZLcom/fusepowered/util/FuseCallback;Z)I

    move-result v9

    .line 3123
    .local v9, "reqID":I
    goto :goto_1

    .line 3117
    .end local v2    # "finalAccountId":Ljava/lang/String;
    .end local v3    # "accountType":I
    .end local v9    # "reqID":I
    :cond_2
    invoke-virtual {v7}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    .line 3118
    .restart local v3    # "accountType":I
    move-object v2, v8

    .restart local v2    # "finalAccountId":Ljava/lang/String;
    goto :goto_2

    .line 3126
    .end local v2    # "finalAccountId":Ljava/lang/String;
    .end local v3    # "accountType":I
    .end local v8    # "accountId":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/fusepowered/FuseError;->BAD_DATA:Lcom/fusepowered/FuseError;

    sget v1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-virtual {p2, v0, v1}, Lcom/fusepowered/util/FuseCallback;->setFuseGameDataError(Lcom/fusepowered/FuseError;I)V

    goto :goto_0
.end method

.method private static getMyGameDataCollection(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;ZLjava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p3, "isFriend"    # Z
    .param p4, "friendFuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3140
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v4}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v7

    .line 3141
    .local v7, "account":Lcom/fusepowered/util/Account;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3143
    .local v11, "reqIDs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    .line 3144
    invoke-virtual {v7}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v8

    .line 3146
    .local v8, "accountId":Ljava/lang/String;
    invoke-static {v8}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "0"

    if-ne v8, v4, :cond_2

    .line 3147
    :cond_0
    sget-object v4, Lcom/fusepowered/FuseError;->BAD_DATA:Lcom/fusepowered/FuseError;

    sget v5, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-virtual {p2, v4, v5}, Lcom/fusepowered/util/FuseCallback;->setFuseGameDataError(Lcom/fusepowered/FuseError;I)V

    .line 3175
    .end local v8    # "accountId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v11

    .line 3152
    .restart local v8    # "accountId":Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_3

    .line 3153
    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    invoke-virtual {v4}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    .line 3154
    .local v3, "accountType":I
    move-object/from16 v2, p4

    .line 3160
    .local v2, "finalAccountId":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3161
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 3164
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3165
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3166
    .local v0, "masterKey":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v6, 0x1

    :goto_3
    move v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGetGameDataRequest(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IZLcom/fusepowered/util/FuseCallback;Z)I

    move-result v10

    .line 3168
    .local v10, "reqID":I
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3156
    .end local v0    # "masterKey":Ljava/lang/String;
    .end local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "finalAccountId":Ljava/lang/String;
    .end local v3    # "accountType":I
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "reqID":I
    :cond_3
    invoke-virtual {v7}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    .line 3157
    .restart local v3    # "accountType":I
    move-object v2, v8

    .restart local v2    # "finalAccountId":Ljava/lang/String;
    goto :goto_1

    .line 3166
    .restart local v0    # "masterKey":Ljava/lang/String;
    .restart local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 3172
    .end local v0    # "masterKey":Ljava/lang/String;
    .end local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "finalAccountId":Ljava/lang/String;
    .end local v3    # "accountType":I
    .end local v8    # "accountId":Ljava/lang/String;
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    sget-object v4, Lcom/fusepowered/FuseError;->BAD_DATA:Lcom/fusepowered/FuseError;

    sget v5, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-virtual {p2, v4, v5}, Lcom/fusepowered/util/FuseCallback;->setFuseGameDataError(Lcom/fusepowered/FuseError;I)V

    goto :goto_0
.end method

.method private static getNotificationSkipCount(I)I
    .locals 3
    .param p0, "messageId"    # I

    .prologue
    .line 2192
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_skip_count_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getNotificationViewCount(I)I
    .locals 3
    .param p0, "messageId"    # I

    .prologue
    .line 2183
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_view_count_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOriginalAccountAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3453
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->accountAlias:Ljava/lang/String;

    return-object v0
.end method

.method public static getOriginalAccountId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3433
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 3435
    .local v0, "account":Lcom/fusepowered/util/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getOriginalAccountType()I
    .locals 2

    .prologue
    .line 3481
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 3483
    .local v0, "account":Lcom/fusepowered/util/Account;
    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v1

    return v1
.end method

.method public static getPlatformString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->platformString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 224
    const-string v0, "nativeandroid"

    .line 226
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->platformString:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "gender"    # I
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "accountType"    # Lcom/fusepowered/util/AccountType;
    .param p5, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3398
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3402
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3403
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3405
    if-eqz p0, :cond_0

    .line 3406
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3411
    :goto_0
    const-string v1, "account_alias"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3412
    const-string v1, "type"

    invoke-virtual {p4}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3413
    const-string v1, "gender"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3414
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3415
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_ID:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3417
    sput-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->accountAlias:Ljava/lang/String;

    .line 3418
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p5}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 3419
    return-void

    .line 3408
    :cond_0
    const-string v1, "account_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getRewardedInfoForZone(Ljava/lang/String;)Lcom/fusepowered/RewardedInfo;
    .locals 3
    .param p0, "zone"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1584
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v2, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-object v1

    .line 1587
    :cond_1
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v2, p0}, Lcom/fusepowered/ads/AdManager;->getAdZone(Ljava/lang/String;)Lcom/fusepowered/ads/AdZone;

    move-result-object v2

    iget-object v0, v2, Lcom/fusepowered/ads/AdZone;->rewardedObject:Lcom/fusepowered/RewardedObject;

    .line 1588
    .local v0, "object":Lcom/fusepowered/RewardedObject;
    if-eqz v0, :cond_0

    .line 1589
    invoke-virtual {v0}, Lcom/fusepowered/RewardedObject;->getInfo()Lcom/fusepowered/RewardedInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSignPost(Ljava/lang/String;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;

    .prologue
    .line 4337
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4338
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4342
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4343
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4344
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4345
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4346
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4347
    const-string v1, "language_index"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {v2}, Lcom/fusepowered/util/DeviceInfoFactory;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4348
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_SIGN_POSTS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4350
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4352
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static getUserChatList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3585
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0, p0}, Lcom/fusepowered/util/ResponseValues;->getChatMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserChatListFromServer(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3551
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3552
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3556
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3557
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3558
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3559
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3560
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3561
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_MESSAGE_LIST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3563
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 3565
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static getUserTransactionLog(Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4255
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4256
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4260
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4261
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4262
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4263
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4264
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_USER_TRANSACTION_LOG:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4267
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4269
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static googlePlayLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "fuseCallBack"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3385
    const/4 v0, 0x0

    sget-object v1, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v1}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_GOOGLE_PLAY:Lcom/fusepowered/util/AccountType;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3386
    return-void
.end method

.method private static incrementGameDataRequestId(Ljava/lang/String;)I
    .locals 4
    .param p0, "gameId"    # Ljava/lang/String;

    .prologue
    .line 2224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "game_data_request_id_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2225
    .local v0, "property":Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 2226
    .local v1, "request_id":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    .line 2227
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    invoke-static {v2, v0, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2229
    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    return v2
.end method

.method private static incrementRequestId(Ljava/lang/String;)V
    .locals 4
    .param p0, "gameId"    # Ljava/lang/String;

    .prologue
    .line 2212
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_id_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2213
    .local v0, "property":Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 2214
    .local v1, "request_id":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    .line 2215
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2, v0, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2216
    return-void
.end method

.method private static initializeFuseAPI(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 150
    if-nez p0, :cond_2

    .line 151
    new-instance v3, Lcom/fusepowered/fuseapi/FuseAPI;

    invoke-direct {v3, p1}, Lcom/fusepowered/fuseapi/FuseAPI;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->FuseAPI:Lcom/fusepowered/fuseapi/FuseAPI;

    .line 162
    :cond_0
    :goto_0
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->bridge:Lcom/fusepowered/FuseNativeBridge;

    if-nez v3, :cond_1

    .line 164
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "awwyiss"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    new-instance v1, Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-direct {v1}, Lcom/fusepowered/debug/FuseBridgeHandler;-><init>()V

    .line 167
    .local v1, "handler":Lcom/fusepowered/debug/FuseBridgeHandler;
    new-instance v3, Lcom/fusepowered/FuseNativeBridge;

    invoke-direct {v3, v1}, Lcom/fusepowered/FuseNativeBridge;-><init>(Lcom/fusepowered/BridgeHandler;)V

    sput-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->bridge:Lcom/fusepowered/FuseNativeBridge;

    .line 168
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->bridge:Lcom/fusepowered/FuseNativeBridge;

    invoke-virtual {v3}, Lcom/fusepowered/FuseNativeBridge;->initCore()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "resp":Ljava/lang/String;
    const-string v3, "FuseAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommonCore start response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "handler":Lcom/fusepowered/debug/FuseBridgeHandler;
    .end local v2    # "resp":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 153
    :cond_2
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v3}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 154
    :cond_3
    if-eqz p0, :cond_0

    .line 155
    new-instance v3, Lcom/fusepowered/fuseapi/FuseAPI;

    invoke-direct {v3, p0}, Lcom/fusepowered/fuseapi/FuseAPI;-><init>(Landroid/app/Activity;)V

    sput-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->FuseAPI:Lcom/fusepowered/fuseapi/FuseAPI;

    goto :goto_0

    .line 158
    :cond_4
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->updateFuseAPI(Landroid/app/Activity;)V

    goto :goto_0

    .line 172
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static isAdAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "adZoneName"    # Ljava/lang/String;

    .prologue
    .line 1554
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v1, :cond_0

    .line 1555
    const/4 v0, 0x0

    .line 1559
    :goto_0
    return v0

    .line 1557
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v1, p0}, Lcom/fusepowered/ads/AdManager;->setAdZone(Ljava/lang/String;)V

    .line 1558
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v1}, Lcom/fusepowered/ads/AdManager;->isAdAvailable()Z

    move-result v0

    .line 1559
    .local v0, "isAvailable":Z
    goto :goto_0
.end method

.method private static isFuseChildActivityOnDisplay()Z
    .locals 4

    .prologue
    .line 897
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "child_activity_displayed_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v3}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 898
    .local v0, "isChildActivityOnDisplay":Z
    return v0
.end method

.method public static isNotificationAvailable()Z
    .locals 2

    .prologue
    .line 1925
    const/4 v0, 0x0

    .line 1926
    .local v0, "isAvailable":Z
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1928
    const/4 v0, 0x1

    .line 1930
    :cond_0
    return v0
.end method

.method public static isOptOut()Z
    .locals 1

    .prologue
    .line 2457
    sget-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    return v0
.end method

.method private static declared-synchronized isPreviousNotificationDisplayed(I)Z
    .locals 5
    .param p0, "nextMessageIndexToDisplay"    # I

    .prologue
    .line 1975
    const-class v4, Lcom/fusepowered/fuseapi/FuseAPI;

    monitor-enter v4

    const/4 v2, 0x0

    .line 1976
    .local v2, "previousNotificationDisplayed":Z
    if-lez p0, :cond_0

    .line 1977
    :try_start_0
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v3}, Lcom/fusepowered/util/ResponseValues;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    .line 1978
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    add-int/lit8 v3, p0, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/util/Message;

    .line 1979
    .local v1, "previousMessage":Lcom/fusepowered/util/Message;
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->isDisplayed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1981
    .end local v0    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    .end local v1    # "previousMessage":Lcom/fusepowered/util/Message;
    :cond_0
    monitor-exit v4

    return v2

    .line 1975
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static isTabletUI()Z
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 1375
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1376
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v8, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v3, v8

    float-to-double v0, v3

    .line 1377
    .local v0, "height":D
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v8, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v3, v8

    float-to-double v6, v3

    .line 1379
    .local v6, "width":D
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 1380
    .local v4, "screenSize":D
    const-wide/high16 v8, 0x401a000000000000L    # 6.5

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static libraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2362
    const-string v0, "2.2.0"

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 4373
    const-string v0, "FUSE AIR"

    invoke-static {v0, p0}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4374
    return-void
.end method

.method private static logUserTransactions(Ljava/lang/String;Lcom/fusepowered/util/FuseAttackRobberyEventType;ZII)V
    .locals 4
    .param p0, "targetFuseId"    # Ljava/lang/String;
    .param p1, "eventType"    # Lcom/fusepowered/util/FuseAttackRobberyEventType;
    .param p2, "wasWon"    # Z
    .param p3, "amountWon"    # I
    .param p4, "amountLost"    # I

    .prologue
    .line 4272
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4273
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4277
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4278
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4279
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4280
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4281
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4282
    const-string v1, "user_event_type"

    invoke-virtual {p1}, Lcom/fusepowered/util/FuseAttackRobberyEventType;->getEventCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4283
    const-string v2, "outcome"

    if-eqz p2, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4284
    const-string v1, "outcome_amount_won"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4285
    const-string v1, "outcome_amount_lost"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4286
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_LOG_USER_TRANSACTION:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4288
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4290
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 4283
    .restart local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public static migrateFriends(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4127
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4131
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4132
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4133
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4134
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4135
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MIGRATE_FRIENDS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4139
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4141
    return-void
.end method

.method private static moreGamesView()V
    .locals 4

    .prologue
    .line 2576
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 2577
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2579
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2581
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2583
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_VIEW:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2587
    :cond_0
    return-void
.end method

.method private static notificationClick(I)V
    .locals 4
    .param p0, "messageId"    # I

    .prologue
    .line 1960
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 1961
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1963
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1965
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    const-string v1, "message_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NOTIFICATION_CLICK:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1972
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static notificationView(I)V
    .locals 4
    .param p0, "messageId"    # I

    .prologue
    .line 1937
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 1938
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->setNotificationViewed(I)V

    .line 1940
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1942
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1944
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    const-string v1, "message_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    const-string v1, "shown_on_play"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->gamesPlayed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1954
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static openWebPage(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2270
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2271
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2272
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2274
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2278
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2275
    :catch_0
    move-exception v0

    .line 2276
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public static postSignPost(Ljava/lang/String;II)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "messageId"    # I
    .param p2, "stickerId"    # I

    .prologue
    .line 4318
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4319
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4323
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4324
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4325
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4326
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4327
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4328
    const-string v1, "message_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4329
    const-string v1, "sticker_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4330
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SET_SIGN_POST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4332
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4334
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static postUserChatMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3502
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3503
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3507
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3508
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3509
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3510
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3511
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3512
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3513
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_POST_MESSAGE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3515
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 3517
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static preloadAdForZone(Ljava/lang/String;)V
    .locals 1
    .param p0, "adZoneName"    # Ljava/lang/String;

    .prologue
    .line 1417
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v0, :cond_0

    .line 1422
    :goto_0
    return-void

    .line 1420
    :cond_0
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ads/AdManager;->setAdZone(Ljava/lang/String;)V

    .line 1421
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v0}, Lcom/fusepowered/ads/AdManager;->loadAdsForCurrentAdZone()V

    goto :goto_0
.end method

.method public static recordGCM()V
    .locals 2

    .prologue
    .line 1632
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->notificationID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->recordGCM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    return-void
.end method

.method public static recordGCM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "regId"    # Ljava/lang/String;
    .param p1, "notId"    # Ljava/lang/String;

    .prologue
    .line 1637
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1638
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1640
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_PUSH_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1646
    const-string v1, "GCM"

    const-string v2, "Recording a user action after receiveing a GCM Message!"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    return-void
.end method

.method public static registerAge(I)V
    .locals 4
    .param p0, "age"    # I

    .prologue
    .line 2616
    if-gez p0, :cond_0

    .line 2617
    const-string v1, "FuseAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Age: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".  Must be >= 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    :goto_0
    return-void

    .line 2620
    :cond_0
    const-string v1, "FuseAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering Age: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2626
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2627
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    const-string v1, "age"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2629
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_AGE_UPDATE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2631
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    goto :goto_0
.end method

.method public static registerBirthday(III)V
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    const/4 v6, 0x1

    .line 2636
    if-gez p0, :cond_0

    .line 2637
    const-string v2, "FuseAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Year: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".  Must be >= 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    :goto_0
    return-void

    .line 2641
    :cond_0
    if-lt p1, v6, :cond_1

    const/16 v2, 0xc

    if-le p1, v2, :cond_2

    .line 2642
    :cond_1
    const-string v2, "FuseAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Month: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".  Must be between 1 and 12"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2646
    :cond_2
    if-lt p2, v6, :cond_3

    const/16 v2, 0x1f

    if-le p2, v2, :cond_4

    .line 2647
    :cond_3
    const-string v2, "FuseAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Day: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".  Must be between 1 and 31"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2651
    :cond_4
    const-string v2, "FuseAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering Birthday year: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", month: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", day: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2655
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2657
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2658
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2660
    const-string v2, "%04d-%02d-%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2662
    .local v0, "birthday":Ljava/lang/String;
    const-string v2, "birthdate"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2663
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_AGE_UPDATE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2665
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v2, v1, v3}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    goto/16 :goto_0
.end method

.method public static registerCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p0, "crashInfo"    # Ljava/lang/String;
    .param p1, "crashName"    # Ljava/lang/String;
    .param p2, "stack"    # Ljava/lang/String;
    .param p3, "crashTime"    # J

    .prologue
    .line 2484
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/fusepowered/fuseapi/FuseAPI;->registerCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 2485
    return-void
.end method

.method public static registerCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 7
    .param p0, "crashInfo"    # Ljava/lang/String;
    .param p1, "crashName"    # Ljava/lang/String;
    .param p2, "stack"    # Ljava/lang/String;
    .param p3, "crashTime"    # J
    .param p5, "logs"    # [Ljava/lang/String;

    .prologue
    .line 2487
    sget-boolean v4, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v4, :cond_2

    .line 2488
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2490
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2492
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "id"

    sget v5, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    const-string v4, "crash_info"

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    const-string v4, "crash_name"

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    const-string v4, "stack"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    const-string v4, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2499
    .local v2, "logBuilder":Ljava/lang/StringBuilder;
    if-eqz p5, :cond_1

    .line 2500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p5

    if-ge v0, v4, :cond_1

    .line 2501
    aget-object v1, p5, v0

    .line 2502
    .local v1, "log":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    array-length v4, p5

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 2504
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2508
    .end local v0    # "i":I
    .end local v1    # "log":Ljava/lang/String;
    :cond_1
    const-string v4, "logs"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2509
    const-string v4, "action"

    sget-object v5, Lcom/fusepowered/util/ActionType;->ACTION_GAME_CRASH:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v5}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v4, v3, v5}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2513
    .end local v2    # "logBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public static registerCurrency(II)V
    .locals 0
    .param p0, "currencyType"    # I
    .param p1, "balance"    # I

    .prologue
    .line 4170
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->sendRegisterResource(II)V

    .line 4171
    return-void
.end method

.method public static registerCustomEvent(ILjava/lang/String;)V
    .locals 4
    .param p0, "eventId"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4408
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4412
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4413
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4414
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_CUSTOM_EVENT:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4415
    const-string v1, "event_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4416
    const-string v1, "event_val"

    if-eqz p1, :cond_0

    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4418
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4419
    return-void

    .line 4416
    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public static registerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/fusepowered/util/FuseEvent;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param_name"    # Ljava/lang/String;
    .param p2, "param_value"    # Ljava/lang/String;
    .param p3, "variable_name"    # Ljava/lang/String;
    .param p4, "variable_value"    # Ljava/lang/Number;

    .prologue
    .line 1804
    const/4 v1, 0x0

    .line 1805
    .local v1, "noMoreVars":Z
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1806
    :cond_0
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    .line 1856
    :goto_0
    return-object v3

    .line 1808
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1809
    :cond_2
    const/4 v1, 0x1

    .line 1811
    :cond_3
    if-nez p2, :cond_4

    .line 1812
    if-nez v1, :cond_5

    .line 1813
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1814
    :cond_4
    if-eqz v1, :cond_5

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 1815
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1818
    :cond_5
    if-nez p3, :cond_7

    .line 1819
    const/4 v1, 0x1

    .line 1827
    :cond_6
    :goto_1
    if-nez p4, :cond_9

    .line 1828
    if-nez v1, :cond_a

    .line 1829
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1821
    :cond_7
    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 1822
    const/4 v1, 0x1

    goto :goto_1

    .line 1823
    :cond_8
    if-eqz v1, :cond_6

    .line 1824
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1830
    :cond_9
    if-eqz v1, :cond_a

    .line 1831
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1833
    :cond_a
    sget-boolean v3, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v3, :cond_b

    .line 1834
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1836
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1839
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    sget v4, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1840
    const-string v3, "timestamp"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1841
    const-string v3, "e1"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1842
    const-string v3, "e2"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1843
    const-string v3, "e3"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1844
    const-string v3, "e4"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1845
    const-string v3, "v"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1847
    const-string v3, "action"

    sget-object v4, Lcom/fusepowered/util/ActionType;->ACTION_ANALYTICS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v4}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 1856
    .end local v2    # "params":Lorg/json/JSONObject;
    :cond_b
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_OK:Lcom/fusepowered/util/FuseEvent;

    goto/16 :goto_0

    .line 1848
    .restart local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1849
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "FuseAPI"

    const-string v4, "sendEvent JSONException"

    invoke-static {v3, v4, v0}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1850
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_BAD_VAL:Lcom/fusepowered/util/FuseEvent;

    goto/16 :goto_0
.end method

.method public static registerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fusepowered/util/FuseEvent;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param_name"    # Ljava/lang/String;
    .param p2, "param_value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/fusepowered/util/FuseEvent;"
        }
    .end annotation

    .prologue
    .line 1730
    .local p3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Number;>;"
    const/4 v2, 0x0

    .line 1731
    .local v2, "noMoreVars":Z
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1732
    :cond_0
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    .line 1775
    :goto_0
    return-object v4

    .line 1734
    :cond_1
    if-eqz p1, :cond_2

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 1735
    :cond_2
    const/4 v2, 0x1

    .line 1737
    :cond_3
    if-nez p2, :cond_4

    .line 1738
    if-nez v2, :cond_5

    .line 1739
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1740
    :cond_4
    if-eqz v2, :cond_5

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 1741
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1744
    :cond_5
    if-eqz p3, :cond_6

    .line 1745
    if-eqz v2, :cond_6

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_6

    .line 1746
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1749
    :cond_6
    sget-boolean v4, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v4, :cond_8

    .line 1750
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1752
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1755
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    sget v5, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1756
    const-string v4, "timestamp"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1757
    const-string v4, "e1"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1758
    const-string v4, "e2"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1759
    const-string v4, "e3"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1761
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_7

    .line 1762
    invoke-static {p3}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1763
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v4, "dictionary"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1766
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    :cond_7
    const-string v4, "action"

    sget-object v5, Lcom/fusepowered/util/ActionType;->ACTION_ANALYTICS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v5}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v6}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 1775
    .end local v3    # "params":Lorg/json/JSONObject;
    :cond_8
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_OK:Lcom/fusepowered/util/FuseEvent;

    goto/16 :goto_0

    .line 1767
    .restart local v3    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1768
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "FuseAPI"

    const-string v5, "sendEvent JSONException"

    invoke-static {v4, v5, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1769
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_BAD_VAL:Lcom/fusepowered/util/FuseEvent;

    goto/16 :goto_0
.end method

.method public static registerEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 1672
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1673
    return-void
.end method

.method public static registerEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1698
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1699
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, v3}, Lcom/fusepowered/fuseapi/FuseAPI;->registerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1703
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static registerFlurryClick()V
    .locals 2

    .prologue
    .line 4192
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->sendRegisterResource(II)V

    .line 4193
    return-void
.end method

.method public static registerFlurryView()V
    .locals 2

    .prologue
    .line 4181
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->sendRegisterResource(II)V

    .line 4182
    return-void
.end method

.method public static registerGCM(Ljava/lang/String;)V
    .locals 4
    .param p0, "newRegistrationID"    # Ljava/lang/String;

    .prologue
    .line 1613
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1615
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    .line 1616
    const-string v1, "token"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_TOKEN_RECEIVED:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1620
    const/4 v1, 0x0

    sput-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->registrationIDToSendAfterStartSession:Ljava/lang/String;

    .line 1621
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1626
    :goto_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v1, :cond_0

    .line 1627
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v1, p0}, Lcom/fusepowered/util/FuseCallback;->didRecieveGCMRegistrationToken(Ljava/lang/String;)V

    .line 1629
    :cond_0
    return-void

    .line 1623
    :cond_1
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->registrationIDToSendAfterStartSession:Ljava/lang/String;

    goto :goto_0
.end method

.method public static registerGender(I)V
    .locals 4
    .param p0, "gender"    # I

    .prologue
    .line 2688
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2690
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2692
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2693
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2694
    const-string v1, "gender"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GENDER_UPDATE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2697
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->setGender(I)V

    .line 2699
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2700
    return-void
.end method

.method public static registerInAppPurchase(Lcom/fusepowered/util/VerifiedPurchase;DLjava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 5
    .param p0, "verifiedPurchase"    # Lcom/fusepowered/util/VerifiedPurchase;
    .param p1, "price"    # D
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "cb"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 2317
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 2318
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2321
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    const-string v1, "content_id"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    const-string v1, "order_id"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    const-string v1, "developer_payload"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    const-string v1, "purchase_state"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getPurchaseState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    const-string v1, "purchase_time"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getPurchaseTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    const-string v1, "purchase_token"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_INAPP_PURCHASE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    const-string v1, "price"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2332
    const-string v1, "currency"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    const-string v1, "purchased_on_play"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->gamesPlayed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2335
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p4}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2337
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static registerInAppPurchase(Lcom/fusepowered/util/VerifiedPurchase;Lcom/fusepowered/util/FuseCallback;)V
    .locals 3
    .param p0, "verifiedPurchase"    # Lcom/fusepowered/util/VerifiedPurchase;
    .param p1, "cb"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 2293
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->registerInAppPurchase(Lcom/fusepowered/util/VerifiedPurchase;DLjava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 2294
    return-void
.end method

.method public static registerLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 4157
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendRegisterResource(II)V

    .line 4158
    return-void
.end method

.method public static registerParentalConsent(Z)V
    .locals 4
    .param p0, "consent"    # Z

    .prologue
    .line 2603
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2607
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2608
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    const-string v2, "consent"

    if-eqz p0, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_PARENTAL_CONSENT:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2612
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2613
    return-void

    .line 2609
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public static registerTapjoyReward(I)V
    .locals 1
    .param p0, "amount"    # I

    .prologue
    .line 4204
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendRegisterResource(II)V

    .line 4205
    return-void
.end method

.method public static registerVirtualGoodsPurchase(III)V
    .locals 4
    .param p0, "virtualgoodID"    # I
    .param p1, "currencyAmount"    # I
    .param p2, "currencyID"    # I

    .prologue
    .line 4422
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4426
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4427
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4428
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_VIRTUAL_GOODS_PURCHASE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4429
    const-string v1, "vg_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4430
    const-string v1, "amount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4431
    const-string v1, "currency_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4433
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4434
    return-void
.end method

.method public static rejectFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4110
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4114
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4115
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4116
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4117
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4118
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4119
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REJECT_FRIEND:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4121
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4122
    return-void
.end method

.method public static removeFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4035
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4039
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4040
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4041
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4042
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4043
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4044
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REMOVE_FRIEND:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4047
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4048
    return-void
.end method

.method private static resetDisplayedAdDetails()V
    .locals 2

    .prologue
    .line 2233
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->setDisplayedAdDetails(ILjava/lang/String;)V

    .line 2234
    return-void
.end method

.method private static resetFuseChildActivityOnDisplay()V
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->setFuseChildActivityOnDisplay(Z)V

    .line 894
    return-void
.end method

.method private static resetGameDataRequestId()V
    .locals 3

    .prologue
    .line 2219
    const/4 v0, 0x0

    sput v0, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    .line 2220
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game_data_request_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2221
    return-void
.end method

.method private static resetRequestId()V
    .locals 3

    .prologue
    .line 2207
    const/4 v0, 0x0

    sput v0, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    .line 2208
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2209
    return-void
.end method

.method public static resumeSession(Landroid/app/Activity;Lcom/fusepowered/util/FuseCallback;)V
    .locals 7
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    const/4 v6, 0x0

    .line 835
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    .line 838
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v2}, Lcom/fusepowered/ads/AdManager;->hasActiveDisplayRequest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    const-string v2, "FuseAPI"

    const-string v3, "AdManager has active display request, ignoring resume session"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v2, p0}, Lcom/fusepowered/ads/AdManager;->onResume(Landroid/app/Activity;)V

    .line 841
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fusepowered/ads/AdManager;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->isFuseChildActivityOnDisplay()Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->suspended:Z

    if-eqz v2, :cond_3

    .line 847
    sget-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    if-eqz v2, :cond_2

    .line 848
    sput-boolean v6, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    goto :goto_0

    .line 851
    :cond_2
    const-string v2, "RESUME SESSION"

    const-string v3, "Sending a resume...."

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 854
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 855
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_RESUME_SESSION:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    const-string v2, "wifi"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/fuseapi/NetworkService;->isWifiConnection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/fusepowered/location/LocationService;->getLastKnownLocation(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 862
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v2, v1, v3}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 864
    sput-boolean v6, Lcom/fusepowered/fuseapi/FuseAPI;->suspended:Z

    .line 867
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    sget-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingManditoryMessage:Z

    if-eqz v2, :cond_4

    .line 868
    const-string v2, "MANDITORY MESSAGE"

    const-string v3, "REDISPLAY THE UPDATE MESSAGE"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 870
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 871
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 874
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_4
    sget-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications:Z

    if-eqz v2, :cond_0

    .line 875
    invoke-static {v6}, Lcom/fusepowered/fuseapi/FuseAPI;->showNextMessage(I)V

    goto/16 :goto_0
.end method

.method public static sendAttack(Ljava/lang/String;ZII)V
    .locals 1
    .param p0, "attackedFuseId"    # Ljava/lang/String;
    .param p1, "wasWon"    # Z
    .param p2, "amountWon"    # I
    .param p3, "amountLost"    # I

    .prologue
    .line 4229
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4230
    sget-object v0, Lcom/fusepowered/util/FuseAttackRobberyEventType;->FUSE_ATTACK:Lcom/fusepowered/util/FuseAttackRobberyEventType;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->logUserTransactions(Ljava/lang/String;Lcom/fusepowered/util/FuseAttackRobberyEventType;ZII)V

    .line 4232
    :cond_0
    return-void
.end method

.method public static sendCachedCrashes()V
    .locals 1

    .prologue
    .line 2471
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->sDetector:Lcom/fusepowered/crashlog/CrashDetector;

    if-eqz v0, :cond_0

    .line 2472
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->sDetector:Lcom/fusepowered/crashlog/CrashDetector;

    invoke-virtual {v0}, Lcom/fusepowered/crashlog/CrashDetector;->sendCachedCrashes()V

    .line 2474
    :cond_0
    return-void
.end method

.method private static sendEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1864
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v3, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v3, :cond_1

    .line 1865
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1867
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1870
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    sget v4, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1871
    const-string v3, "timestamp"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1872
    const-string v3, "event"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1873
    const-string v3, "action"

    sget-object v4, Lcom/fusepowered/util/ActionType;->ACTION_ANALYTICS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v4}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1875
    if-eqz p1, :cond_0

    .line 1876
    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1877
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v3, "dictionary"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    :cond_0
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 1886
    .end local v2    # "params":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 1879
    .restart local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1880
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "FuseAPI"

    const-string v4, "sendEvent JSONException"

    invoke-static {v3, v4, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendFuseAdSkip(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    .line 1595
    const-string v1, "FuseAPI"

    const-string v2, "send Fuse Ad Skip"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v1, "FuseAPI"

    const-string v2, "Skipping ad display, resetting displayingAd flag"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    .line 1599
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1602
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FUSE_AD_SKIP:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    const-string v1, "state"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1609
    return-void
.end method

.method private static sendGameDataMap(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)I
    .locals 6
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "paramJson"    # Lorg/json/JSONObject;
    .param p3, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p4, "doSendNow"    # Z

    .prologue
    .line 2864
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2865
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->incrementGameDataRequestId(Ljava/lang/String;)I

    move-result v1

    .line 2868
    .local v1, "reqID":I
    :try_start_0
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2869
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2870
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_SET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2872
    const-string v2, "reqID"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2874
    if-eqz p0, :cond_0

    .line 2875
    const-string v2, "friend"

    const-string v3, "1"

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2876
    const-string v2, "account_id"

    invoke-virtual {p2, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2877
    const-string v2, "type"

    sget-object v3, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    invoke-virtual {v3}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2883
    :goto_0
    invoke-static {p1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2884
    const-string v2, "fuse_object_key"

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2895
    :goto_1
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v2, p2, p3, p4}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 2898
    .end local v1    # "reqID":I
    :goto_2
    return v1

    .line 2879
    .restart local v1    # "reqID":I
    :cond_0
    :try_start_1
    const-string v2, "account_id"

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2880
    const-string v2, "type"

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2888
    :catch_0
    move-exception v0

    .line 2889
    .local v0, "je":Lorg/json/JSONException;
    const-string v2, "FuseAPI"

    const-string v3, "sendGameDataMap JSONException"

    invoke-static {v2, v3, v0}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2892
    const/4 v1, 0x0

    goto :goto_2

    .line 2886
    .end local v0    # "je":Lorg/json/JSONException;
    :cond_1
    :try_start_2
    const-string v2, "fuse_object_key"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private static sendGameDataRequest(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p3, "fuseId"    # Ljava/lang/String;

    .prologue
    .line 2810
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2811
    invoke-virtual {p1}, Lcom/fusepowered/util/GameKeyValuePairs;->getMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2812
    invoke-virtual {p1}, Lcom/fusepowered/util/GameKeyValuePairs;->getMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/fuseapi/FuseAPI;->buildDataPayloadJSON(Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2814
    .local v0, "paramJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 2815
    const/4 v1, 0x1

    invoke-static {p3, p0, v0, p2, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGameDataMap(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)I

    move-result v1

    .line 2820
    .end local v0    # "paramJson":Lorg/json/JSONObject;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static sendGameDataRequestCollection(Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p0, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p2, "fuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/util/GameKeyValuePairs;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2827
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2837
    .local v6, "reqIDs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v7}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2838
    invoke-virtual {p0}, Lcom/fusepowered/util/GameKeyValuePairs;->getObjectMapKeys()Ljava/util/Set;

    move-result-object v3

    .line 2840
    .local v3, "objectMapKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2841
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2843
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2844
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2845
    .local v2, "objectMapKey":Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->buildDataPayloadJSON(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2847
    .local v4, "paramJson":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 2848
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x1

    .line 2849
    .local v0, "doSendNow":Z
    :goto_1
    invoke-static {p2, v2, v4, p1, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGameDataMap(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)I

    move-result v5

    .line 2851
    .local v5, "reqID":I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2848
    .end local v0    # "doSendNow":Z
    .end local v5    # "reqID":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2857
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "objectMapKey":Ljava/lang/String;
    .end local v3    # "objectMapKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "paramJson":Lorg/json/JSONObject;
    :cond_2
    return-object v6
.end method

.method private static sendGetAd(Ljava/lang/String;)V
    .locals 1
    .param p0, "lastRequestedAdZoneName"    # Ljava/lang/String;

    .prologue
    .line 1437
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGetAd(Ljava/lang/String;I)V

    .line 1438
    return-void
.end method

.method private static sendGetAd(Ljava/lang/String;I)V
    .locals 12
    .param p0, "lastRequestedAdZoneName"    # Ljava/lang/String;
    .param p1, "lastKnownProviderId"    # I

    .prologue
    .line 1440
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1442
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1444
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "wifi"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/fusepowered/fuseapi/NetworkService;->isWifiConnection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    const-string v8, "id"

    sget v9, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    const-string v8, "timestamp"

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    const-string v8, "action"

    sget-object v9, Lcom/fusepowered/util/ActionType;->ACTION_GET_AD:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v9}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const-string v8, "o"

    sget-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/fusepowered/ads/OrientationProvider;->getOrientation(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    const-string v8, "tz"

    invoke-static {}, Lcom/fusepowered/util/Timezone;->getTimezoneAbbreviation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    const-string v8, "tzo"

    invoke-static {}, Lcom/fusepowered/util/Timezone;->getTimezoneOffset()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    if-eqz p0, :cond_0

    .line 1452
    const-string v8, "zone_name"

    invoke-virtual {v2, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1455
    .local v3, "r":Landroid/graphics/Rect;
    sget-object v8, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 1456
    .local v6, "w":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1459
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1460
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v8, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1461
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1462
    .local v1, "height":I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1465
    .local v7, "width":I
    const-string v8, "w"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    const-string v8, "h"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    const-string v8, "t"

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    const-string v8, "b"

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    const-string v8, "need"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    sget-object v8, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-eqz v8, :cond_2

    .line 1473
    sget-object v8, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v8}, Lcom/fusepowered/ads/AdManager;->getProvidersRequiringAds()Ljava/util/ArrayList;

    move-result-object v4

    .line 1474
    .local v4, "requiredIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_2

    .line 1476
    if-lez p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1477
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    :cond_1
    const-string v8, ","

    invoke-static {v4, v8}, Lcom/fusepowered/util/StringUtil;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1481
    .local v5, "requiredIdsAsString":Ljava/lang/String;
    const-string v8, "need"

    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    .end local v4    # "requiredIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "requiredIdsAsString":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v8, v2, v9}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1487
    return-void
.end method

.method private static sendGetGameDataRequest(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IZLcom/fusepowered/util/FuseCallback;Z)I
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "accountType"    # I
    .param p4, "friendsRequest"    # Z
    .param p5, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p6, "sendNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/fusepowered/util/FuseCallback;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 3182
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3184
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->incrementGameDataRequestId(Ljava/lang/String;)I

    move-result v1

    .line 3186
    .local v1, "reqID":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3188
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3189
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3190
    const-string v2, "account_id"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3191
    const-string v2, "type"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3192
    const-string v3, "friend"

    if-eqz p4, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3193
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_GET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3194
    const-string v2, "reqID"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3196
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3197
    const-string v2, "fuse_object_key"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3202
    :goto_1
    const-string v2, "fuse_object_keys"

    invoke-static {p1}, Lcom/fusepowered/util/StringUtil;->commaSeparatedArray(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3204
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v2, v0, p5, p6}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 3206
    return v1

    .line 3192
    :cond_0
    const-string v2, "0"

    goto :goto_0

    .line 3199
    :cond_1
    const-string v2, "fuse_object_key"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static sendMail(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)I
    .locals 3
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    const/4 v0, 0x0

    .line 3727
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3728
    const/4 v1, 0x1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/fusepowered/fuseapi/FuseAPI;->sendMailWithGift(Ljava/lang/String;Ljava/lang/String;IILcom/fusepowered/util/FuseCallback;)I

    move-result v0

    .line 3731
    :cond_0
    return v0
.end method

.method public static sendMailWithGift(Ljava/lang/String;Ljava/lang/String;IILcom/fusepowered/util/FuseCallback;)I
    .locals 6
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "giftId"    # I
    .param p3, "giftAmount"    # I
    .param p4, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3765
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3766
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3768
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->incrementGameDataRequestId(Ljava/lang/String;)I

    move-result v1

    .line 3770
    .local v1, "reqID":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3772
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3773
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3774
    const-string v2, "account_id"

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3775
    const-string v2, "type"

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3776
    const-string v2, "fuse_id"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3777
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3778
    const-string v2, "gift_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3779
    const-string v2, "gift_amount"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3780
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_SEND_MAIL:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3781
    const-string v2, "reqID"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3783
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v2, v0, v3}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 3788
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "reqID":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static sendRegisterResource(II)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "value"    # I

    .prologue
    .line 4211
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4215
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4216
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4217
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_RESOURCE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4218
    const-string v1, "type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4219
    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4221
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4222
    return-void
.end method

.method public static sendRobbery(Ljava/lang/String;ZII)V
    .locals 1
    .param p0, "robbedFuseId"    # Ljava/lang/String;
    .param p1, "wasWon"    # Z
    .param p2, "amountWon"    # I
    .param p3, "amountLost"    # I

    .prologue
    .line 4235
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4236
    sget-object v0, Lcom/fusepowered/util/FuseAttackRobberyEventType;->FUSE_ROBBERY:Lcom/fusepowered/util/FuseAttackRobberyEventType;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->logUserTransactions(Ljava/lang/String;Lcom/fusepowered/util/FuseAttackRobberyEventType;ZII)V

    .line 4238
    :cond_0
    return-void
.end method

.method public static setCallback(Lcom/fusepowered/util/FuseCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 441
    if-nez p0, :cond_0

    .line 442
    const-string v0, "FuseAPI"

    const-string v1, "Callback object may not be null"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    goto :goto_0
.end method

.method private static setDisplayedAdDetails(ILjava/lang/String;)V
    .locals 2
    .param p0, "adId"    # I
    .param p1, "adAction"    # Ljava/lang/String;

    .prologue
    .line 2237
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v1, "displayed_ad_id"

    invoke-static {v0, v1, p0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2238
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v1, "displayed_ad_action"

    invoke-static {v0, v1, p1}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    return-void
.end method

.method public static setFuseChildActivityOnDisplay(Z)V
    .locals 3
    .param p0, "isDisplayed"    # Z

    .prologue
    .line 882
    const-string v1, "FuseAPI"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child activity display changed, setting displayingAd to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    sput-boolean p0, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    .line 889
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child_activity_displayed_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 890
    return-void

    .line 882
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static setGameData(Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;)I
    .locals 1
    .param p0, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 2744
    const-string v0, ""

    invoke-static {v0, p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->setGameData(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;)I

    move-result v0

    return v0
.end method

.method public static setGameData(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 2769
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGameDataRequest(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setGameData(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;)I
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p3, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 2783
    invoke-static {p1, p2, p3, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGameDataRequest(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setGameDataCollection(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;)Ljava/util/HashMap;
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fusepowered/util/GameKeyValuePairs;",
            "Lcom/fusepowered/util/FuseCallback;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2795
    invoke-static {p1, p2, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGameDataRequestCollection(Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static setGender(I)V
    .locals 2
    .param p0, "gender"    # I

    .prologue
    .line 2706
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v1, "gender"

    invoke-static {v0, v1, p0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2707
    return-void
.end method

.method public static setMailAsReceived(I)V
    .locals 4
    .param p0, "mailId"    # I

    .prologue
    .line 3801
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3802
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3804
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3806
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3807
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3808
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3809
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3810
    const-string v1, "mail_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3811
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MARK_MAIL_AS_READ:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3813
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 3815
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static setNotificationSkipped(I)V
    .locals 4
    .param p0, "messageId"    # I

    .prologue
    .line 2196
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getNotificationSkipCount(I)I

    move-result v0

    .line 2197
    .local v0, "notificationSkipCount":I
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification_skip_count_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2198
    return-void
.end method

.method private static setNotificationViewed(I)V
    .locals 4
    .param p0, "messageId"    # I

    .prologue
    .line 2187
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getNotificationViewCount(I)I

    move-result v0

    .line 2188
    .local v0, "notificationViewCount":I
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification_view_count_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2189
    return-void
.end method

.method private static setNumPlays(Ljava/lang/String;)V
    .locals 4
    .param p0, "gameId"    # Ljava/lang/String;

    .prologue
    .line 2201
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_plays_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2202
    .local v0, "notificationViewCount":I
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fusepowered/fuseapi/FuseAPI;->numPlays:I

    .line 2203
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_plays_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->numPlays:I

    invoke-static {v1, v2, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2204
    return-void
.end method

.method private static setOptOut(I)V
    .locals 3
    .param p0, "optOutValue"    # I

    .prologue
    .line 2452
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opt_out_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2453
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    .line 2454
    return-void

    .line 2453
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p0, "platform"    # Ljava/lang/String;

    .prologue
    .line 220
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->platformString:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public static setRewardedVideoUserID(Ljava/lang/String;)V
    .locals 0
    .param p0, "userID"    # Ljava/lang/String;

    .prologue
    .line 4437
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->theUserIDThatWasRegisteredWithSetRewardedVideoUserIDAndThatWeNeedToUseInReportRewardedVideoCompleted:Ljava/lang/String;

    .line 4438
    return-void
.end method

.method public static varargs setupGCM(Landroid/content/Intent;Landroid/app/Activity;II[Ljava/lang/String;)V
    .locals 2
    .param p0, "gcm_Intent"    # Landroid/content/Intent;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "smallIconID"    # I
    .param p3, "largeIconID"    # I
    .param p4, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/fusepowered/fuseapi/FuseAPI;->setupGCM(Ljava/lang/String;Landroid/content/Context;II[Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public static varargs setupGCM(Ljava/lang/String;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 8
    .param p0, "gcm_Intent"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "smallIconID"    # I
    .param p3, "largeIconID"    # I
    .param p4, "senderIds"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 572
    if-eqz p4, :cond_0

    array-length v5, p4

    if-lez v5, :cond_0

    .line 573
    aget-object v5, p4, v6

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->sLastGCMSenderId:Ljava/lang/String;

    .line 576
    :cond_0
    if-nez p1, :cond_1

    .line 577
    const-string v5, "FUSE_GCM"

    const-string v6, "AppContext should not be null"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :goto_0
    return-void

    .line 581
    :cond_1
    if-nez p0, :cond_2

    .line 582
    const-string v5, "FUSE_GCM"

    const-string v6, "Intent should not be null"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_2
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->sLastGCMSenderId:Ljava/lang/String;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->sLastGCMSenderId:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 587
    :cond_3
    const-string v5, "FUSE_GCM"

    const-string v6, "Project number can NOT be null"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 594
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 597
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 599
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 600
    .local v3, "resID":I
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 603
    .end local v3    # "resID":I
    :cond_6
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    if-eqz v5, :cond_7

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    .line 604
    :cond_7
    const-string v5, "PUSH NOTIFICATION"

    const-string v6, "Error: The app name is null.  Stopping the registration. Push Notifications will be disabled"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_8
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    const-string v6, "[^A-Za-z0-9]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    .line 613
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_9

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 614
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    .line 617
    :cond_a
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_b

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_c

    .line 618
    :cond_b
    const-string v5, "PUSH NOTIFICATION"

    const-string v6, "Error: The package name is null.  Stopping the registration. Push Notifications will be disabled"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 621
    :cond_c
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 622
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 624
    :cond_d
    sput p2, Lcom/fusepowered/fuseapi/FuseAPI;->iconID:I

    .line 625
    if-nez p3, :cond_f

    .line 626
    sput p2, Lcom/fusepowered/fuseapi/FuseAPI;->drawerIconID:I

    .line 633
    :goto_1
    :try_start_0
    sput-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->gcmContext:Landroid/content/Context;

    .line 635
    invoke-static {p1}, Lcom/fusepowered/push/FuseGCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 638
    invoke-static {p1}, Lcom/fusepowered/push/FuseGCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 640
    invoke-static {p1}, Lcom/fusepowered/push/FuseGCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    .line 641
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    if-eqz v5, :cond_e

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 643
    :cond_e
    const-string v5, "Push Notification"

    const-string v6, "Registration is null or empty, getting the registration from the server"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-static {v5, p4}, Lcom/fusepowered/push/FuseGCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 651
    :goto_2
    const-string v5, "GCMData"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 653
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 654
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v5, "iconID"

    sget v6, Lcom/fusepowered/fuseapi/FuseAPI;->iconID:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 655
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 656
    const-string v5, "drawerIconID"

    sget v6, Lcom/fusepowered/fuseapi/FuseAPI;->drawerIconID:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 657
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 658
    const-string v5, "GCMIntent"

    invoke-interface {v1, v5, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 659
    const-string v5, "GCMSenderId"

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->sLastGCMSenderId:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 660
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 663
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Push Notification"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    sput p3, Lcom/fusepowered/fuseapi/FuseAPI;->drawerIconID:I

    goto :goto_1

    .line 648
    :cond_10
    :try_start_1
    const-string v5, "Push Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This is the Registration:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    invoke-static {v5}, Lcom/fusepowered/fuseapi/FuseAPI;->registerGCM(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static setupGCM(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;II)V
    .locals 1
    .param p0, "GCM_Project_Number"    # Ljava/lang/String;
    .param p1, "gcm_Intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "smallIconID"    # I
    .param p4, "largeIconID"    # I

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/fusepowered/fuseapi/FuseAPI;->setupGCM(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;II)V

    .line 531
    return-void
.end method

.method public static setupGCM(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;II)V
    .locals 2
    .param p0, "GCM_Project_Number"    # Ljava/lang/String;
    .param p1, "gcm_Intent"    # Ljava/lang/String;
    .param p2, "appContext"    # Landroid/content/Context;
    .param p3, "smallIconID"    # I
    .param p4, "largeIconID"    # I

    .prologue
    .line 558
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, p4, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->setupGCM(Ljava/lang/String;Landroid/content/Context;II[Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method private static declared-synchronized showDialog(Lcom/fusepowered/util/Message;I)V
    .locals 9
    .param p0, "message"    # Lcom/fusepowered/util/Message;
    .param p1, "next"    # I

    .prologue
    const/4 v8, 0x1

    .line 2031
    const-class v5, Lcom/fusepowered/fuseapi/FuseAPI;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getActionTitle()Ljava/lang/String;

    move-result-object v0

    .line 2032
    .local v0, "actionTile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getCancelTitle()Ljava/lang/String;

    move-result-object v2

    .line 2033
    .local v2, "dismissString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2034
    :cond_0
    const-string v0, "OK"

    .line 2036
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2037
    :cond_2
    const-string v2, "Cancel"

    .line 2040
    :cond_3
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2041
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2042
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2043
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2044
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2047
    const-string v4, "FUSE NOTIFICATION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "These are the message variables "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    const/4 v1, 0x0

    .line 2049
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getMandatory()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getIsUrl()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 2051
    new-instance v3, Lcom/fusepowered/fuseapi/FuseAPI$4;

    invoke-direct {v3, p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI$4;-><init>(Lcom/fusepowered/util/Message;I)V

    .line 2080
    .local v3, "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Lcom/fusepowered/fuseapi/FuseAPI$5;

    invoke-direct {v6, p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI$5;-><init>(Lcom/fusepowered/util/Message;I)V

    invoke-virtual {v4, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2169
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getIsUpgrade()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getMandatory()I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 2170
    const/4 v4, 0x1

    sput-boolean v4, Lcom/fusepowered/fuseapi/FuseAPI;->showingManditoryMessage:Z

    .line 2177
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/fusepowered/util/Message;->setDisplayed(Z)V

    .line 2178
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2179
    monitor-exit v5

    return-void

    .line 2095
    .end local v3    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getIsUrl()I

    move-result v4

    if-nez v4, :cond_6

    .line 2097
    new-instance v3, Lcom/fusepowered/fuseapi/FuseAPI$6;

    invoke-direct {v3, p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI$6;-><init>(Lcom/fusepowered/util/Message;I)V

    .line 2127
    .restart local v3    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2131
    goto :goto_0

    .line 2133
    .end local v3    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_6
    new-instance v3, Lcom/fusepowered/fuseapi/FuseAPI$7;

    invoke-direct {v3, p0}, Lcom/fusepowered/fuseapi/FuseAPI$7;-><init>(Lcom/fusepowered/util/Message;)V

    .line 2163
    .restart local v3    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2031
    .end local v0    # "actionTile":Ljava/lang/String;
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "dismissString":Ljava/lang/String;
    .end local v3    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static showFuseApiMoreGamesBrowser(Ljava/lang/String;Lcom/fusepowered/activities/FuseApiBrowser;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fuseApiMoregamesBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;

    .prologue
    .line 2593
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2595
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2596
    const-string v1, "RETURN"

    invoke-static {}, Lcom/fusepowered/util/FuseServer;->getMoreGamesCloseImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2598
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2599
    return-void
.end method

.method private static declared-synchronized showNextMessage(I)V
    .locals 8
    .param p0, "i"    # I

    .prologue
    .line 1986
    const-class v7, Lcom/fusepowered/fuseapi/FuseAPI;

    monitor-enter v7

    :try_start_0
    sget-boolean v6, Lcom/fusepowered/fuseapi/FuseAPI;->showingManditoryMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 2028
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 1990
    :cond_1
    :try_start_1
    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v6}, Lcom/fusepowered/util/ResponseValues;->getNextMessage()Lcom/fusepowered/util/Message;

    move-result-object v1

    .line 1992
    .local v1, "m":Lcom/fusepowered/util/Message;
    if-nez v1, :cond_2

    .line 1993
    const/4 v6, 0x0

    sput-boolean v6, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1986
    .end local v1    # "m":Lcom/fusepowered/util/Message;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1997
    .restart local v1    # "m":Lcom/fusepowered/util/Message;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getId()I

    move-result v2

    .line 1998
    .local v2, "messageId":I
    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->getNotificationViewCount(I)I

    move-result v5

    .line 1999
    .local v5, "notificationViewCount":I
    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->getNotificationSkipCount(I)I

    move-result v4

    .line 2001
    .local v4, "notificationSkipCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2009
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getSticky()I

    move-result v3

    .line 2011
    .local v3, "messageSticky":I
    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getShowOnView()I

    move-result v6

    if-lt v4, v6, :cond_5

    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getMax_views()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->isDisplayed()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getMax_views()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getMax_views()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2013
    :cond_4
    add-int/lit8 p0, p0, 0x1

    invoke-static {v1, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->showDialog(Lcom/fusepowered/util/Message;I)V

    goto :goto_0

    .line 2016
    :cond_5
    add-int/lit8 p0, p0, 0x1

    .line 2017
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getMax_views()I

    move-result v6

    if-ge v5, v6, :cond_7

    :cond_6
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getShowOnView()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 2022
    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->setNotificationSkipped(I)V

    .line 2024
    :cond_7
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->isDisplayed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2025
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->showNextMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static showWelcomeMessage()V
    .locals 1

    .prologue
    .line 4379
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    iget-object v0, v0, Lcom/fusepowered/util/ResponseValues;->welcomeMessage:Lcom/fusepowered/api/WelcomeMessage;

    if-eqz v0, :cond_0

    .line 4380
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    iget-object v0, v0, Lcom/fusepowered/util/ResponseValues;->welcomeMessage:Lcom/fusepowered/api/WelcomeMessage;

    invoke-virtual {v0}, Lcom/fusepowered/api/WelcomeMessage;->logItLikeItsHot()V

    .line 4382
    :cond_0
    return-void
.end method

.method public static startAdManager()V
    .locals 4

    .prologue
    .line 914
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 915
    const-string v0, "FuseAPI"

    const-string v1, "Can\'t initialize AdManager when mainActivity is null"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v0, :cond_0

    .line 923
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    iget-object v0, v0, Lcom/fusepowered/util/ResponseValues;->adProviderConfigs:[Lcom/fusepowered/api/model/AdProviderConfig;

    if-eqz v0, :cond_0

    .line 927
    new-instance v0, Lcom/fusepowered/ads/AdManager;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    iget-object v1, v1, Lcom/fusepowered/util/ResponseValues;->adProviderConfigs:[Lcom/fusepowered/api/model/AdProviderConfig;

    const/4 v2, 0x0

    new-instance v3, Lcom/fusepowered/fuseapi/FuseAPI$2;

    invoke-direct {v3}, Lcom/fusepowered/fuseapi/FuseAPI$2;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/ads/AdManager;-><init>([Lcom/fusepowered/api/model/AdProviderConfig;Ljava/util/HashMap;Lcom/fusepowered/ads/AdManager$AdTrackingReporter;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    .line 1258
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    new-instance v1, Lcom/fusepowered/fuseapi/FuseAPI$3;

    invoke-direct {v1}, Lcom/fusepowered/fuseapi/FuseAPI$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fusepowered/ads/AdManager;->setListener(Lcom/fusepowered/ads/AdManagerListener;)V

    goto :goto_0
.end method

.method public static startSession(Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Lcom/fusepowered/util/FuseCallback;)V
    .locals 22
    .param p0, "gameId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 273
    if-nez p3, :cond_0

    .line 274
    const-string v19, "FuseAPI"

    const-string v20, "startSession must be given a callback"

    invoke-static/range {v19 .. v20}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v19, Ljava/lang/NullPointerException;

    const-string v20, "startSession must be given a callback"

    invoke-direct/range {v19 .. v20}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 277
    :cond_0
    sput-object p3, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    .line 280
    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->FuseAPI:Lcom/fusepowered/fuseapi/FuseAPI;

    if-eqz v19, :cond_2

    .line 281
    invoke-static/range {p1 .. p1}, Lcom/fusepowered/fuseapi/FuseAPI;->updateFuseAPI(Landroid/app/Activity;)V

    .line 282
    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v19, :cond_1

    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual/range {v19 .. v19}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    if-eqz p3, :cond_1

    .line 283
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/FuseCallback;->sessionStartReceived()V

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x80

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 291
    .local v11, "metaData":Landroid/os/Bundle;
    const-string v19, "com.fusepowered.usessl"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 292
    .local v16, "sslEnabled":Z
    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->FuseAPI:Lcom/fusepowered/fuseapi/FuseAPI;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    sput-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->useSSL:Ljava/lang/Boolean;

    .line 293
    if-eqz v16, :cond_3

    .line 294
    const-string v19, "FuseAPI"

    const-string v20, "SSL has been enabled"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v11    # "metaData":Landroid/os/Bundle;
    .end local v16    # "sslEnabled":Z
    :cond_3
    :goto_1
    if-eqz p1, :cond_8

    .line 300
    invoke-static/range {p1 .. p1}, Lcom/fusepowered/fuseapi/FuseAPI;->checkAndEnableLogging(Landroid/content/Context;)V

    .line 305
    :cond_4
    :goto_2
    invoke-static/range {p1 .. p2}, Lcom/fusepowered/fuseapi/FuseAPI;->initializeFuseAPI(Landroid/app/Activity;Landroid/content/Context;)V

    .line 306
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->enableCrashDetection()V

    .line 308
    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v19, :cond_5

    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual/range {v19 .. v19}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_1

    .line 309
    :cond_5
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->clearAll()V

    .line 310
    invoke-static/range {p0 .. p0}, Lcom/fusepowered/fuseapi/FuseAPI;->setNumPlays(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    .line 313
    new-instance v19, Lcom/fusepowered/util/GameInfo;

    invoke-static {}, Lcom/fusepowered/util/PropertyManager;->getGameVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/util/GameInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    .line 315
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->resetRequestId()V

    .line 316
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->resetGameDataRequestId()V

    .line 317
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->resetFuseChildActivityOnDisplay()V

    .line 318
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->resetDisplayedAdDetails()V

    .line 322
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "opt_out_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    :goto_3
    sput-boolean v19, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    .line 323
    const/16 v19, 0x0

    sput-boolean v19, Lcom/fusepowered/fuseapi/FuseAPI;->suspended:Z

    .line 325
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v13, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 328
    .local v14, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, "applicationName":Ljava/lang/String;
    const-string v19, "[^A-Za-z0-9]"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 332
    .local v12, "packageName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fuse."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, "fileName":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    sput-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    .line 338
    sget-boolean v19, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-eqz v19, :cond_a

    .line 339
    const-string v19, "opt_out"

    const-string v20, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :goto_4
    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/fusepowered/location/LocationService;->getLastKnownLocation(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 377
    const-string v19, "wifi"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/fusepowered/fuseapi/NetworkService;->isWifiConnection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v19, "jb"

    sget-object v20, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/util/GameInfo;->getJailBroken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v19, "e"

    sget-object v20, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/util/GameInfo;->getJailBroken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v19, "id"

    sget v20, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v19, "timestamp"

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v19, "action"

    sget-object v20, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_START:Lcom/fusepowered/util/ActionType;

    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual/range {v19 .. v19}, Lcom/fusepowered/util/DeviceInfoFactory;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, "deviceId":Ljava/lang/String;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6

    .line 387
    const-string v19, "android_device_id"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_6
    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "android_id"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "androidId":Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 393
    const-string v19, "android_id"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_7
    move-object/from16 v4, p2

    .line 399
    .local v4, "adIdContext":Landroid/content/Context;
    new-instance v19, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v20, Lcom/fusepowered/fuseapi/FuseAPI$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v13}, Lcom/fusepowered/fuseapi/FuseAPI$1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 301
    .end local v4    # "adIdContext":Landroid/content/Context;
    .end local v5    # "androidId":Ljava/lang/String;
    .end local v6    # "applicationName":Ljava/lang/String;
    .end local v7    # "deviceId":Ljava/lang/String;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    if-eqz p2, :cond_4

    .line 302
    invoke-static/range {p2 .. p2}, Lcom/fusepowered/fuseapi/FuseAPI;->checkAndEnableLogging(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 322
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 341
    .restart local v6    # "applicationName":Ljava/lang/String;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_a
    const-string v19, "timestamp"

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v19, "opt_out"

    const-string v20, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v19, "name"

    sget-object v20, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/util/DeviceInfoFactory;->getUser()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v19, "model"

    sget-object v20, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/util/DeviceInfoFactory;->getModel()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v19, "sysver"

    sget-object v20, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/util/DeviceInfoFactory;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v19, "machine"

    sget-object v20, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/util/DeviceInfoFactory;->getHardware()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v19, "carrier"

    sget-object v20, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/util/DeviceInfoFactory;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v19, "country"

    sget-object v20, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/util/DeviceInfoFactory;->getCountryCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v19, "language"

    sget-object v20, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/util/DeviceInfoFactory;->getLanguage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v19, "o"

    sget-object v20, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-static/range {v20 .. v20}, Lcom/fusepowered/ads/OrientationProvider;->getOrientation(Landroid/content/Context;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v19, "bundle"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v19, "tz"

    invoke-static {}, Lcom/fusepowered/util/Timezone;->getTimezoneAbbreviation()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v19, "tzo"

    invoke-static {}, Lcom/fusepowered/util/Timezone;->getTimezoneOffset()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 356
    .local v15, "r":Landroid/graphics/Rect;
    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 357
    .local v17, "w":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 360
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 361
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 362
    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 363
    .local v10, "height":I
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 366
    .local v18, "width":I
    const-string v19, "w"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v19, "h"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v19, "t"

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v19, "b"

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 296
    .end local v6    # "applicationName":Ljava/lang/String;
    .end local v8    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "height":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "r":Landroid/graphics/Rect;
    .end local v17    # "w":Landroid/view/Window;
    .end local v18    # "width":I
    :catch_0
    move-exception v19

    goto/16 :goto_1
.end method

.method public static suspendSession()V
    .locals 4

    .prologue
    .line 784
    const-string v1, "SUSPEND"

    const-string v2, "Got a request to Suspend"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v1}, Lcom/fusepowered/ads/AdManager;->hasActiveDisplayRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    const-string v1, "FuseAPI"

    const-string v2, "AdManager has active display request, ignoring suspend session"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 792
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->isFuseChildActivityOnDisplay()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->suspended:Z

    if-eqz v1, :cond_3

    :cond_2
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->overrideSuspend:Z

    if-eqz v1, :cond_0

    .line 794
    :cond_3
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    if-nez v1, :cond_0

    .line 801
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 804
    .restart local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SUSPEND_SESSION:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 808
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->suspended:Z

    .line 809
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->overrideSuspend:Z

    goto :goto_0
.end method

.method public static testGCMSetup(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 482
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 484
    const-string v5, "PUSH NOTIFICATION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This is the app name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 489
    .local v3, "resID":I
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 490
    const-string v5, "PUSH NOTIFICATION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alternative App Name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .end local v3    # "resID":I
    :cond_1
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 494
    :cond_2
    const-string v5, "PUSH NOTIFICATION"

    const-string v6, "Error: The app name is null.  Stopping the registration. Push Notifications will be disabled"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_3
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appNameDisplay:Ljava/lang/String;

    .line 497
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    const-string v6, "[^A-Za-z0-9]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 500
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    .line 501
    const-string v5, "PUSH NOTIFICATION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This is the package name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 504
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    .line 505
    const-string v5, "PUSH NOTIFICATION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alternative method to get package name... This is the package name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_5
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 509
    :cond_6
    const-string v5, "PUSH NOTIFICATION"

    const-string v6, "Error: The package name is null.  Stopping the registration. Push Notifications will be disabled"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_7
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 512
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 515
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".fusepowered.push.FuseRecordGCMResponse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "intentName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v2, "receiver":Landroid/content/Intent;
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const/16 v5, 0x20

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 520
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_9

    .line 521
    const-string v5, "PUSH NOTIFICATION"

    const-string v6, "The setup is correct."

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_9
    const-string v5, "PUSH NOTIFICATION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The setup for the broadcast receiver is not working. Intent name we are looking for is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static twitterLogin(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "twitterId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3287
    const-string v1, ""

    sget-object v0, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_TWITTER:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3288
    return-void
.end method

.method public static twitterLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "twitterId"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3305
    sget-object v0, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_TWITTER:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3306
    return-void
.end method

.method public static updateAdManagerActivity(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1405
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v1, :cond_0

    .line 1414
    :goto_0
    return-void

    .line 1410
    :cond_0
    :try_start_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/fusepowered/ads/AdManager;->updateSettings(Landroid/app/Activity;Ljava/util/HashMap;[Lcom/fusepowered/api/model/AdProviderConfig;[Lcom/fusepowered/api/model/AdConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FuseAPI"

    const-string v2, "Could not update ad settings due to exception: "

    invoke-static {v1, v2, v0}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static updateAdManagerSettings()V
    .locals 6

    .prologue
    .line 1384
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v4, :cond_0

    .line 1385
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->startAdManager()V

    .line 1387
    :cond_0
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v4, :cond_1

    .line 1388
    const-string v4, "FuseAPI"

    const-string v5, "Could not initialize ad manager.  No ads will be displayed."

    invoke-static {v4, v5}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    .local v0, "adConfigs":[Lcom/fusepowered/api/model/AdConfig;
    .local v1, "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    .local v3, "providerConfigs":[Lcom/fusepowered/api/model/AdProviderConfig;
    :goto_0
    return-void

    .line 1391
    .end local v0    # "adConfigs":[Lcom/fusepowered/api/model/AdConfig;
    .end local v1    # "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    .end local v3    # "providerConfigs":[Lcom/fusepowered/api/model/AdProviderConfig;
    :cond_1
    const-string v4, "FuseAPI"

    const-string v5, "Updating Ad Manager Settings"

    invoke-static {v4, v5}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v4}, Lcom/fusepowered/util/ResponseValues;->getAdZones()Ljava/util/HashMap;

    move-result-object v1

    .line 1394
    .restart local v1    # "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    iget-object v3, v4, Lcom/fusepowered/util/ResponseValues;->adProviderConfigs:[Lcom/fusepowered/api/model/AdProviderConfig;

    .line 1395
    .restart local v3    # "providerConfigs":[Lcom/fusepowered/api/model/AdProviderConfig;
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    iget-object v0, v4, Lcom/fusepowered/util/ResponseValues;->adConfigs:[Lcom/fusepowered/api/model/AdConfig;

    .line 1398
    .restart local v0    # "adConfigs":[Lcom/fusepowered/api/model/AdConfig;
    :try_start_0
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1, v3, v0}, Lcom/fusepowered/ads/AdManager;->updateSettings(Landroid/app/Activity;Ljava/util/HashMap;[Lcom/fusepowered/api/model/AdProviderConfig;[Lcom/fusepowered/api/model/AdConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1399
    :catch_0
    move-exception v2

    .line 1400
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "FuseAPI"

    const-string v5, "Could not update ad settings due to exception: "

    invoke-static {v4, v5, v2}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static updateCommonParams()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private static updateCommonParams(Ljava/lang/String;)V
    .locals 3
    .param p0, "advertisingId"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    .line 183
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "game_ver"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "game_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "udid"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {v2}, Lcom/fusepowered/util/DeviceInfoFactory;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "mac"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {v2}, Lcom/fusepowered/util/DeviceInfoFactory;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "debug"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getDebug()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "pl"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getPl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "dt"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "session_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    :goto_0
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 199
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "session_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v0}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->incrementRequestId(Ljava/lang/String;)V

    .line 206
    if-eqz p0, :cond_2

    .line 207
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "google_aid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_2
    return-void

    .line 194
    :cond_3
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static updateFriendsListFromServer(Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3943
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3944
    const-string v1, "FuseAPI"

    const-string v2, "Cannot update friends list, user not logged in"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    :goto_0
    return-void

    .line 3947
    :cond_0
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3949
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3951
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3952
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3953
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3954
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3955
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_FRIENDS_LIST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3958
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p0}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    goto :goto_0
.end method

.method private static updateFuseAPI(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 144
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    .line 146
    new-instance v0, Lcom/fusepowered/util/DeviceInfoFactory;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/util/DeviceInfoFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    .line 147
    return-void
.end method

.method public static userOptOut(I)V
    .locals 4
    .param p0, "optOut"    # I

    .prologue
    .line 2434
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2438
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    const-string v1, "opt_out"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_USER_OPT_OUT:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2445
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->setOptOut(I)V

    .line 2446
    return-void
.end method

.method public static userPushNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "fuse_id"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 699
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 701
    .local v0, "acct":Lcom/fusepowered/util/Account;
    if-nez v0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 706
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 707
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_SEND_PUSH_USER:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v2, "type"

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v2, "account_id"

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v2, "fuse_id"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v2, v1, v3}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    goto :goto_0
.end method

.method public static utcTimeFromServer(Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 2409
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2413
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FETCH_SERVER_UTC_TIME:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    if-eqz p0, :cond_0

    .line 2418
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p0}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2422
    :goto_0
    return-void

    .line 2420
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    goto :goto_0
.end method

.method public static zoneHasIAPOffer(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zone"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1570
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v1, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v1, p0}, Lcom/fusepowered/ads/AdManager;->getAdZone(Ljava/lang/String;)Lcom/fusepowered/ads/AdZone;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/ads/AdZone;->IAPOfferObject:Lcom/fusepowered/OfferObject;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static zoneHasRewarded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zone"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1563
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v1, :cond_1

    .line 1566
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v1, p0}, Lcom/fusepowered/ads/AdManager;->getAdZone(Ljava/lang/String;)Lcom/fusepowered/ads/AdZone;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/ads/AdZone;->rewardedObject:Lcom/fusepowered/RewardedObject;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static zoneHasVirtualGoodsOffer(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zone"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1577
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    if-nez v1, :cond_1

    .line 1580
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v1, p0}, Lcom/fusepowered/ads/AdManager;->getAdZone(Ljava/lang/String;)Lcom/fusepowered/ads/AdZone;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/ads/AdZone;->virtualGoodsOfferObject:Lcom/fusepowered/OfferObject;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
