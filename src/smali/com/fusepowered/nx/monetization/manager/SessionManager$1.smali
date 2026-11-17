.class final Lcom/fusepowered/nx/monetization/manager/SessionManager$1;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/fusepowered/nx/common/OnTaskCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/manager/SessionManager;->createSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/fusepowered/nx/monetization/listeners/SessionListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/SessionManager$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCompleted()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->access$000()Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->getCachingFrequency()I

    move-result v0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->restartOrStopCaching(I)V

    .line 145
    const-string v0, "Running GetDeviceBalanceTask"

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->i(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getDeviceBalance()V

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->access$102(J)J

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/manager/SessionManager$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->access$000()Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/manager/SessionManager$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->hasSession()Z

    move-result v1

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->access$000()Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->isOfferwallEnabled()Z

    move-result v2

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/listeners/SessionListener;->createSessionCompleted(ZZLjava/lang/String;)V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/manager/SessionManager$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/fusepowered/nx/monetization/listeners/SessionListener;->createSessionCompleted(ZZLjava/lang/String;)V

    goto :goto_0
.end method
