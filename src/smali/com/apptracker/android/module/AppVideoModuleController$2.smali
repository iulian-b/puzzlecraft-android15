.class Lcom/apptracker/android/module/AppVideoModuleController$2;
.super Ljava/lang/Object;
.source "c"

# interfaces
.implements Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppVideoModuleController;->loadVideoFile(Lcom/apptracker/android/module/AppAd;Ljava/lang/String;Lcom/apptracker/android/module/AppModuleLoader;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic d:Z

.field private final synthetic h:Lcom/apptracker/android/module/AppModuleLoader;

.field private final synthetic k:Lcom/apptracker/android/module/AppAd;

.field private final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/apptracker/android/module/AppAd;Lcom/apptracker/android/module/AppModuleLoader;Z)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Lcom/apptracker/android/module/AppAd;
    .param p3, "arg2"    # Lcom/apptracker/android/module/AppModuleLoader;
    .param p4, "arg3"    # Z

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->k:Lcom/apptracker/android/module/AppAd;

    iput-object p3, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->h:Lcom/apptracker/android/module/AppModuleLoader;

    iput-boolean p4, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->d:Z

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {}, Lcom/apptracker/android/module/AppVideoModuleController;->b()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u0017"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->k:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lcom/apptracker/android/module/AppVideoModuleController;->b()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "R"

    invoke-static {v2}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->k:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_0
    if-nez p1, :cond_2

    .line 399
    const-string v0, "APTr"

    const-string v1, "|\\UPP}^N_U^XU\\C\u0019WXXUT]"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->h:Lcom/apptracker/android/module/AppModuleLoader;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->h:Lcom/apptracker/android/module/AppModuleLoader;

    const-string v1, "data error"

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/apptracker/android/module/AppModuleLoader;->onModuleCompleted(Ljava/lang/String;Z)V

    .line 723
    :cond_1
    :goto_0
    return-void

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->k:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0, p1}, Lcom/apptracker/android/module/AppAd;->setMediaLocalPath(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->k:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/apptracker/android/module/AppModuleCache;->getAdFileName(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->k:Lcom/apptracker/android/module/AppAd;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppModuleCache;->B(Ljava/io/File;Lcom/apptracker/android/module/AppAd;)Z

    .line 271
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->h:Lcom/apptracker/android/module/AppModuleLoader;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->h:Lcom/apptracker/android/module/AppModuleLoader;

    const-string v1, "ad download ok"

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppVideoModuleController$2;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/apptracker/android/module/AppModuleLoader;->onModuleCompleted(Ljava/lang/String;Z)V

    goto :goto_0
.end method
