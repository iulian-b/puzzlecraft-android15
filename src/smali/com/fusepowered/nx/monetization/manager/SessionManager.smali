.class public Lcom/fusepowered/nx/monetization/manager/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final SessionExpiryMS:J = 0x1b7740L

.field private static final SessionExpiryMinutes:I = 0x1e

.field private static lastSessionResponseMs:J

.field private static sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->lastSessionResponseMs:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000()Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    return-object v0
.end method

.method static synthetic access$102(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 33
    sput-wide p0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->lastSessionResponseMs:J

    return-wide p0
.end method

.method public static clearSession()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    .line 97
    return-void
.end method

.method public static createSession()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    .line 102
    return-void
.end method

.method public static createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    .locals 4
    .param p0, "listener"    # Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->isCreateSessionExecuting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const-string v1, "createSession is currently running; wait for the current request to finish before calling another!"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->w(Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasSession()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasSessionExpired()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 119
    .local v0, "createNewSession":Z
    :goto_1
    if-nez v0, :cond_5

    .line 120
    const-string v2, "Short-circuiting createSession with previous session information..."

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 123
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->getCachingFrequency()I

    move-result v2

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->restartOrStopCaching(I)V

    .line 125
    if-eqz p0, :cond_0

    .line 126
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    if-eqz v2, :cond_4

    .line 127
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasSession()Z

    move-result v1

    sget-object v2, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->isOfferwallEnabled()Z

    move-result v2

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/listeners/SessionListener;->createSessionCompleted(ZZLjava/lang/String;)V

    goto :goto_0

    .end local v0    # "createNewSession":Z
    :cond_3
    move v0, v1

    .line 117
    goto :goto_1

    .line 129
    .restart local v0    # "createNewSession":Z
    :cond_4
    const/4 v2, 0x0

    invoke-interface {p0, v1, v1, v2}, Lcom/fusepowered/nx/monetization/listeners/SessionListener;->createSessionCompleted(ZZLjava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_5
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    move-result-object v1

    new-instance v2, Lcom/fusepowered/nx/monetization/manager/SessionManager$1;

    invoke-direct {v2, p0}, Lcom/fusepowered/nx/monetization/manager/SessionManager$1;-><init>(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->createSession(Lcom/fusepowered/nx/common/OnTaskCompletedListener;)V

    goto :goto_0
.end method

.method public static getPreviousSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->getPreviousSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPreviousSessionId()Z
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->getPreviousSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasSession()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasSessionExpired()Z
    .locals 6

    .prologue
    .line 85
    sget-wide v2, Lcom/fusepowered/nx/monetization/manager/SessionManager;->lastSessionResponseMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 88
    .local v0, "currentElapsedMS":J
    sget-wide v2, Lcom/fusepowered/nx/monetization/manager/SessionManager;->lastSessionResponseMs:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 89
    const/4 v2, 0x1

    .line 92
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setSessionResponse(Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;)V
    .locals 1
    .param p0, "sessionResponse"    # Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    .prologue
    .line 70
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    if-eq v0, p0, :cond_0

    .line 71
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->clearSession()V

    .line 73
    :cond_0
    sput-object p0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    .line 74
    return-void
.end method

.method public static storeSession()V
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    .line 171
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "SessionManager: Storing current session in SharedPreferences as previous session"

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/SessionManager;->sessionResponse:Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->storePreviousSessionId(Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method
