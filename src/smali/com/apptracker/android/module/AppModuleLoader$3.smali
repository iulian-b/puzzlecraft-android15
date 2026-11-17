.class Lcom/apptracker/android/module/AppModuleLoader$3;
.super Ljava/lang/Object;
.source "x"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppAd;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/apptracker/android/module/AppModuleLoader;


# direct methods
.method constructor <init>(Lcom/apptracker/android/module/AppModuleLoader;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppModuleLoader;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleLoader$3;->m:Lcom/apptracker/android/module/AppModuleLoader;

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1298
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "~\u000ea\u001fk\u000f}=jF.\u001ff\u0019m\u0017.\u0015}\\c\u0013j\tb\u0019.\u0010a\u001dj\u0019jF"

    invoke-static {v2}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apptracker/android/module/AppModuleLoader$3;->m:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v2}, Lcom/apptracker/android/module/AppModuleLoader;->B(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/module/AppModuleControllerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppModuleControllerBase;->isModuleLoaded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$3;->m:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->B(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/module/AppModuleControllerBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppModuleControllerBase;->isModuleLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$3;->m:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->B(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/module/AppModuleControllerBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppModuleControllerBase;->isModuleFailed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$3;->m:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->B(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/module/AppModuleControllerBase;

    move-result-object v0

    const-string v1, "connection timeout"

    invoke-virtual {v0, v1}, Lcom/apptracker/android/module/AppModuleControllerBase;->onAppModuleFailed(Ljava/lang/String;)V

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$3;->m:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->B(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/module/AppModuleControllerBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppModuleControllerBase;->destroyModule()V

    .line 1247
    :cond_1
    return-void
.end method
