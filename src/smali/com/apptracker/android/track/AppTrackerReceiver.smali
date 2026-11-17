.class public Lcom/apptracker/android/track/AppTrackerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "o"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 210
    const-string v0, ""

    .line 96
    :try_start_0
    const-string v0, "%\u00071\u0007%\u00102\u0010"

    invoke-static {v0}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 202
    const-string v0, "\u0010*\u0004*\u0010=\u0007==!\u0017#\u000e"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 44
    :cond_0
    :goto_0
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0*\u0004*\u0010=\u0007=BbB"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v1, "\u00162\u0007$\u001e0\u00125\u00180\u001c1"

    invoke-static {v1}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 69
    const-string v2, "\u000b!\u0011;\u0003#\u000e=\u0007)\u0007=\u0010*\u0010"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 32
    const-string v0, "%\u00071\u0007%\u00102\u0010\u0008\u0007/\u00012\u0012#\u000b8\u000c"

    invoke-static {v0}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
