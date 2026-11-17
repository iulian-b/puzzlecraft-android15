.class public Lcom/apptracker/android/re/AppReEngagementService;
.super Landroid/app/Service;
.source "n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private synthetic G(Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 69
    :try_start_0
    const-string v0, "APTr"

    const-string v1, "x\u0001Y\u0012B\u0007NDX\u0010J\u0016_6N!E\u0003J\u0003N\tN\n_D\u0005J\u0005"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/apptracker/android/re/AppReEngagementService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    const-string v1, "pia\u007fxktn~kzj"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    const-string v1, "Y\u0001N\nL\u0005L\u0001F\u0001E\u0010J\u0008J\u0016F"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    new-instance v0, Lcom/apptracker/android/re/AppReController;

    invoke-virtual {p0}, Lcom/apptracker/android/re/AppReEngagementService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apptracker/android/re/AppReController;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v0}, Lcom/apptracker/android/re/AppReController;->loadReEngagement()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    invoke-static {}, Lcom/apptracker/android/re/AppWakeLock;->release()V

    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 185
    :try_start_1
    const-string v1, "APTr"

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-static {}, Lcom/apptracker/android/re/AppWakeLock;->release()V

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    .line 171
    invoke-static {}, Lcom/apptracker/android/re/AppWakeLock;->release()V

    .line 90
    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v0, 0x1

    .line 229
    invoke-direct {p0, p1}, Lcom/apptracker/android/re/AppReEngagementService;->G(Landroid/content/Intent;)V

    .line 202
    return v0
.end method
