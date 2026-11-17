.class public Lcom/apptracker/android/re/AppBootReceiverService;
.super Landroid/app/Service;
.source "j"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private synthetic G(Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 32
    :try_start_0
    new-instance v0, Lcom/apptracker/android/re/AppReController;

    invoke-virtual {p0}, Lcom/apptracker/android/re/AppBootReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apptracker/android/re/AppReController;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0}, Lcom/apptracker/android/re/AppReController;->loadReEngagement()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 231
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

    .line 210
    invoke-direct {p0, p1}, Lcom/apptracker/android/re/AppBootReceiverService;->G(Landroid/content/Intent;)V

    .line 216
    return v0
.end method
