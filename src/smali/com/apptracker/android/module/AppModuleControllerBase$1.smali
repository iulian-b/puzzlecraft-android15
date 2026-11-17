.class Lcom/apptracker/android/module/AppModuleControllerBase$1;
.super Ljava/lang/Object;
.source "z"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppModuleControllerBase;->onClicked(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/apptracker/android/module/AppModuleControllerBase;

.field private final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptracker/android/module/AppModuleControllerBase;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppModuleControllerBase;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleControllerBase$1;->h:Lcom/apptracker/android/module/AppModuleControllerBase;

    iput-object p2, p0, Lcom/apptracker/android/module/AppModuleControllerBase$1;->m:Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u00055)7\u00038\u0001>\u000eaJ8\u0002>\t0J2\u0019{\u00074\u000e.\u0006>J8\u00064\u0019>\u000ea"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apptracker/android/module/AppModuleControllerBase$1;->h:Lcom/apptracker/android/module/AppModuleControllerBase;

    iget-boolean v2, v2, Lcom/apptracker/android/module/AppModuleControllerBase;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase$1;->h:Lcom/apptracker/android/module/AppModuleControllerBase;

    iget-boolean v0, v0, Lcom/apptracker/android/module/AppModuleControllerBase;->e:Z

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase$1;->h:Lcom/apptracker/android/module/AppModuleControllerBase;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppModuleControllerBase;->destroyModule()V

    .line 164
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase$1;->h:Lcom/apptracker/android/module/AppModuleControllerBase;

    iget-object v0, v0, Lcom/apptracker/android/module/AppModuleControllerBase;->h:Landroid/app/Activity;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleControllerBase$1;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppModuleLoader;->openExternalURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method
