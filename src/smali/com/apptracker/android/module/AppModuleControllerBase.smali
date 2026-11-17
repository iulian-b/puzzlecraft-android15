.class public abstract Lcom/apptracker/android/module/AppModuleControllerBase;
.super Ljava/lang/Object;
.source "z"

# interfaces
.implements Lcom/apptracker/android/listener/AppModuleControllerListener;


# static fields
.field protected static A:Ljava/lang/String;

.field protected static G:Lcom/apptracker/android/listener/AppModuleListener;


# instance fields
.field protected d:Lcom/apptracker/android/module/AppAd;

.field protected e:Z

.field protected f:Z

.field protected g:Landroid/os/Handler;

.field protected h:Landroid/app/Activity;

.field protected k:Z

.field protected m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    sput-object v0, Lcom/apptracker/android/module/AppModuleControllerBase;->G:Lcom/apptracker/android/listener/AppModuleListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->h:Landroid/app/Activity;

    .line 44
    iput-boolean v1, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->k:Z

    .line 22
    iput-boolean v1, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->f:Z

    .line 2
    iput-boolean v1, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->m:Z

    .line 194
    iput-boolean v1, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->e:Z

    .line 166
    return-void
.end method

.method public static onCached(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Lcom/apptracker/android/listener/AppModuleListener;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1a\u0018{\u0010k\\"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B4\u00034\n2\u0006w\u0011\"\u00014\u0007$\u00111\u0017;\u000e.L"

    invoke-static {v1}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 170
    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, p1}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleCached(Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method

.method public static onLoaded(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Lcom/apptracker/android/listener/AppModuleListener;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1a\u0018{\u0010k\\"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B;\r6\u00062\u0006w\u0011\"\u00014\u0007$\u00111\u0017;\u000e.L"

    invoke-static {v1}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 5
    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0, p1}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleLoaded(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static trackClick(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Z

    .prologue
    .line 192
    const/4 v2, 0x0

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/apptracker/android/module/AppModuleControllerBase$2;

    invoke-direct {v5}, Lcom/apptracker/android/module/AppModuleControllerBase$2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/apptracker/android/request/AppRequest;->requestBatchAction(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZLcom/apptracker/android/listener/AppListener;)Z

    .line 154
    return-void
.end method

.method public static trackUrl(Ljava/lang/String;)V
    .locals 3
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Lcom/apptracker/android/request/AppRequest$AppTrackTask;

    invoke-direct {v0}, Lcom/apptracker/android/request/AppRequest$AppTrackTask;-><init>()V

    .line 221
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/apptracker/android/request/AppRequest;->launchTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 253
    return-void
.end method


# virtual methods
.method public createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 94
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 250
    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 142
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-object v1
.end method

.method public abstract destroyModule()V
.end method

.method public isModuleFailed()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->m:Z

    return v0
.end method

.method public abstract loadingModule(Landroid/content/Context;Ljava/lang/String;Lcom/apptracker/android/module/AppAd;)V
.end method

.method public onAppModuleFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->m:Z

    .line 34
    sget-object v0, Lcom/apptracker/android/module/AppModuleControllerBase;->G:Lcom/apptracker/android/listener/AppModuleListener;

    sget-object v1, Lcom/apptracker/android/module/AppModuleControllerBase;->A:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/apptracker/android/module/AppModuleLoader;->onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    return-void
.end method

.method public onClicked(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Lcom/apptracker/android/listener/AppModuleListener;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1a\u0018{\u0010k\\"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B4\u000e>\u0001<\u00073L"

    invoke-static {v1}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->h:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 21
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->g:Landroid/os/Handler;

    new-instance v1, Lcom/apptracker/android/module/AppModuleControllerBase$1;

    invoke-direct {v1, p0, p3}, Lcom/apptracker/android/module/AppModuleControllerBase$1;-><init>(Lcom/apptracker/android/module/AppModuleControllerBase;Ljava/lang/String;)V

    .line 3
    const-wide/16 v2, 0x3a98

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    invoke-interface {p1, p2}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleClicked(Ljava/lang/String;)V

    .line 54
    :cond_1
    return-void
.end method

.method public onClosed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Lcom/apptracker/android/listener/AppModuleListener;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->e:Z

    .line 63
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->h:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1a\u0018{\u0010k\\"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w\u0001;\r$\u00073L"

    invoke-static {v1}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 237
    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1, p2}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleClosed(Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public abstract setListener(Lcom/apptracker/android/listener/AppModuleListener;)V
.end method

.method public setModuleToCacheRequest(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppModuleControllerBase;->k:Z

    .line 103
    return-void
.end method
