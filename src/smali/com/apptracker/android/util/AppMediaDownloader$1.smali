.class Lcom/apptracker/android/util/AppMediaDownloader$1;
.super Ljava/lang/Object;
.source "p"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/util/AppMediaDownloader;->downloadFileInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/apptracker/android/util/AppMediaDownloader;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic k:Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;

.field private final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptracker/android/util/AppMediaDownloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/util/AppMediaDownloader;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->e:Lcom/apptracker/android/util/AppMediaDownloader;

    iput-object p2, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->k:Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->e:Lcom/apptracker/android/util/AppMediaDownloader;

    iget-object v1, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/apptracker/android/util/AppMediaDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 10
    const-string v1, "APTr"

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "++\u001a\u0016\u000f?\u0003:.4\u001d5\u00064\u000b?\u000f)J=\u000b2\u0006>\u000e{\u001f)\u0006f"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->k:Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;->onCompleted(Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u000e\u0012?/*\u0006&\u0003\u000b\r8\u000c#\r.\u0006*\u0010o\u0006 \u000c*B:\u0010#_"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/apptracker/android/util/AppMediaDownloader$1;->k:Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;->onCompleted(Ljava/lang/String;)V

    goto :goto_0
.end method
