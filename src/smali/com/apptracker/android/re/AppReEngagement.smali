.class public Lcom/apptracker/android/re/AppReEngagement;
.super Landroid/content/BroadcastReceiver;
.source "l"


# instance fields
.field m:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string v0, "APTr"

    invoke-static {p1}, Lcom/apptracker/android/re/AppWakeLock;->acquire(Landroid/content/Context;)V

    .line 210
    const-string v1, "h3H-D\u007f]-@8N:[:M\u007fN0@1N\u007f]0\t,]>[+\t,L-_6J:"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/apptracker/android/re/AppReEngagementService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    return-void
.end method
