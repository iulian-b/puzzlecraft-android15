.class public Lcom/apptracker/android/track/AppAutoService;
.super Landroid/app/Service;
.source "k"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private synthetic G(Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    const-string v1, "6\u0012>\t2\u001b"

    invoke-static {v1}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->setApiKey(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/apptracker/android/track/AppAutoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->sync(Landroid/content/Context;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 210
    const-string v0, "APTr"

    const-string v1, "#\'\u0012\u0016\u0017#\r\u0004\u0007%\u0014>\u00012B8\u000c\u0015\u000b9\u0006"

    invoke-static {v1}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # I

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->enableLog(Z)V

    .line 246
    const-string v0, "APTr"

    const-string v1, "\u0016\u0012\'#\"\u0016812\u0010!\u000b4\u0007w\r91#\u0003%\u0016wOw\u00058\u000b9\u0005w\u00168B$\u00166\u0010#B$\u001b9\u0001"

    invoke-static {v1}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0, p1}, Lcom/apptracker/android/track/AppAutoService;->G(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->enableLog(Z)V

    .line 166
    const-string v0, "APTr"

    const-string v1, "#\'\u0012\u0016\u0017#\r\u0004\u0007%\u0014>\u00012B8\u000c\u0004\u00166\u0010#!8\u000f:\u00039\u0006wOw\u00058\u000b9\u0005w\u00168B$\u00166\u0010#B$\u001b9\u0001"

    invoke-static {v1}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1}, Lcom/apptracker/android/track/AppAutoService;->G(Landroid/content/Intent;)V

    .line 32
    const/4 v0, 0x3

    return v0
.end method
