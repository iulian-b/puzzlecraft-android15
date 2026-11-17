.class public Lcom/apptracker/android/module/AppVideoModuleController;
.super Lcom/apptracker/android/module/AppModuleControllerBase;
.source "c"


# static fields
.field private static synthetic R:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apptracker/android/module/AppAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private synthetic A:Z

.field private synthetic B:Lcom/apptracker/android/advert/AppWebView;

.field private synthetic C:Lcom/apptracker/android/advert/AppWebView;

.field private synthetic D:Lcom/apptracker/android/advert/AppVideoView;

.field private synthetic E:Landroid/content/Context;

.field private synthetic F:Z

.field private synthetic G:I

.field private synthetic H:Lcom/apptracker/android/listener/AppModuleLoaderListener;

.field private synthetic I:Z

.field private synthetic J:Z

.field private synthetic K:Z

.field private synthetic L:Z

.field private synthetic M:Landroid/widget/RelativeLayout;

.field private synthetic T:I

.field private synthetic Z:Landroid/widget/RelativeLayout;

.field a:Z

.field private synthetic b:Z

.field c:I

.field private synthetic d:Z

.field private synthetic e:Lcom/apptracker/android/advert/AppWebView;

.field private synthetic g:Z

.field private synthetic h:Z

.field private synthetic i:Z

.field private synthetic j:Z

.field l:I

.field private synthetic v:Z

.field private synthetic w:Z

.field private synthetic x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->R:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apptracker/android/listener/AppModuleLoaderListener;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/apptracker/android/listener/AppModuleLoaderListener;

    .prologue
    .line 164
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/apptracker/android/module/AppModuleControllerBase;-><init>()V

    .line 6
    iput-boolean v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->I:Z

    .line 21
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->a:Z

    .line 167
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->E:Landroid/content/Context;

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    .line 209
    iput-object p2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->H:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    .line 77
    return-void
.end method

.method static synthetic B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    return-object v0
.end method

.method private synthetic B()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->isShouldClickTrack()Z

    move-result v0

    .line 318
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->getMediaStartUrl()Ljava/lang/String;

    move-result-object v1

    .line 590
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->b:Z

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->b:Z

    .line 533
    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController;->trackUrl(Ljava/lang/String;)V

    .line 522
    :cond_0
    return-void
.end method

.method static synthetic B(Lcom/apptracker/android/module/AppVideoModuleController;Lcom/apptracker/android/advert/AppWebView;)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Lcom/apptracker/android/advert/AppWebView;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    return-void
.end method

.method static synthetic B(Lcom/apptracker/android/module/AppVideoModuleController;Z)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->A:Z

    return-void
.end method

.method static synthetic F(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppWebView;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    return-object v0
.end method

.method static synthetic F(Lcom/apptracker/android/module/AppVideoModuleController;Z)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->g:Z

    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/module/AppVideoModuleController;Lcom/apptracker/android/advert/AppVideoView;)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Lcom/apptracker/android/advert/AppVideoView;

    .prologue
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/module/AppVideoModuleController;Lcom/apptracker/android/advert/AppWebView;)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Lcom/apptracker/android/advert/AppWebView;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/module/AppVideoModuleController;Z)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->J:Z

    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/module/AppVideoModuleController;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->J:Z

    return v0
.end method

.method static synthetic J(Lcom/apptracker/android/module/AppVideoModuleController;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->j:Z

    return v0
.end method

.method static synthetic K(Lcom/apptracker/android/module/AppVideoModuleController;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->v:Z

    return v0
.end method

.method static synthetic L(Lcom/apptracker/android/module/AppVideoModuleController;Z)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->j:Z

    return-void
.end method

.method static synthetic L(Lcom/apptracker/android/module/AppVideoModuleController;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->x:Z

    return v0
.end method

.method static synthetic b(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppWebView;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    return-object v0
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->R:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/apptracker/android/module/AppVideoModuleController;Z)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->F:Z

    return-void
.end method

.method public static isPlacementDownloading(Ljava/lang/String;)Z
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 319
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->R:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .line 359
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 519
    :goto_1
    return v0

    .line 548
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "L"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 519
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 359
    goto :goto_0
.end method

.method public static isVideoDownloaded(Lcom/apptracker/android/module/AppAd;Ljava/lang/String;)Z
    .locals 4
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppAd;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppAd;->getMediaLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/apptracker/android/module/AppAd;->getMediaLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 460
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 367
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->R:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .line 455
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 432
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 459
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "L"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 455
    goto :goto_0
.end method

.method static synthetic k(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppWebView;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    return-object v0
.end method

.method static synthetic k(Lcom/apptracker/android/module/AppVideoModuleController;Z)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->v:Z

    return-void
.end method

.method public static loadVideoFile(Lcom/apptracker/android/module/AppAd;Ljava/lang/String;Lcom/apptracker/android/module/AppModuleLoader;Z)Z
    .locals 6
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppAd;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Lcom/apptracker/android/module/AppModuleLoader;
    .param p3, "arg3"    # Z

    .prologue
    .line 439
    new-instance v0, Lcom/apptracker/android/module/AppVideoModuleController$2;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/apptracker/android/module/AppVideoModuleController$2;-><init>(Ljava/lang/String;Lcom/apptracker/android/module/AppAd;Lcom/apptracker/android/module/AppModuleLoader;Z)V

    .line 1304
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1186
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/apptracker/android/module/AppModuleCache;->getVideoFileName(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v1

    .line 1399
    invoke-static {}, Lcom/apptracker/android/util/AppMediaDownloader;->getInstance()Lcom/apptracker/android/util/AppMediaDownloader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/apptracker/android/module/AppAd;->getMediaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/apptracker/android/util/AppMediaDownloader;->downloadFileInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;)Z

    .line 1273
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->R:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "L"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic m(Lcom/apptracker/android/module/AppVideoModuleController;Lcom/apptracker/android/advert/AppWebView;)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Lcom/apptracker/android/advert/AppWebView;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    return-void
.end method

.method static synthetic m(Lcom/apptracker/android/module/AppVideoModuleController;Z)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p1, "arg1"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Z

    return-void
.end method

.method static synthetic m(Lcom/apptracker/android/module/AppVideoModuleController;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->g:Z

    return v0
.end method


# virtual methods
.method B(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 864
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A\u0005]\u0005X\u0007Y\r[\u0010\u0011\u0017N\u0010x\u000fB\u0014\u007f\rF\u0001\u0003"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fY"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->loadUrl(Ljava/lang/String;)V

    .line 774
    :cond_0
    return-void
.end method

.method B(Z)Z
    .locals 4
    .param p1, "arg0"    # Z

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1379
    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    if-nez v3, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return v0

    .line 665
    :cond_1
    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v3}, Lcom/apptracker/android/advert/AppVideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    .line 1126
    if-eqz v3, :cond_0

    .line 1037
    if-nez p1, :cond_2

    move v0, v1

    .line 1264
    :goto_1
    :try_start_0
    invoke-virtual {v3, v1, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1253
    :catch_0
    move-exception v0

    const-string v1, "APTr"

    .line 1585
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    move v0, v2

    move v1, v2

    goto :goto_1
.end method

.method F()V
    .locals 5

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 350
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .local v0, "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    new-instance v2, Lcom/apptracker/android/module/AppVideoModuleController$1;

    invoke-direct {v2, p0}, Lcom/apptracker/android/module/AppVideoModuleController$1;-><init>(Lcom/apptracker/android/module/AppVideoModuleController;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    :goto_1
    return-void

    .line 351
    .end local v0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :catch_0
    move-exception v1

    .line 477
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "n\u0016Y\u000bYD\\\u000cN\n\u000b\u0010Y\u001dB\nLD_\u000b\u000b\u0016N\tD\u0012NDG\u0005R\u000b^\u0010\u000bI\u000b"

    invoke-static {v4}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, p0

    .line 350
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local v0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    goto :goto_0

    .line 479
    :catch_1
    move-exception v1

    .line 559
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u000c\u000e \u0011*7!\u000e \u0001$\u0007=B*\u0010=\r=BbB"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method F(Z)V
    .locals 3
    .param p1, "arg0"    # Z

    .prologue
    .line 905
    if-eqz p1, :cond_0

    .line 1486
    const/16 v1, 0x8

    move-object v0, p0

    .line 804
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .local v0, "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :goto_0
    iget-object v2, v0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v2, v1}, Lcom/apptracker/android/advert/AppVideoView;->setVisibility(I)V

    .line 687
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->m(Z)V

    .line 1470
    return-void

    .line 1248
    .end local v0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    .line 804
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local v0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    goto :goto_0
.end method

.method G(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0008.\u0014.\u0011,\u0010&\u0012;X,\r:\u000c;& \u0015!J"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M\u0010"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->loadUrl(Ljava/lang/String;)V

    .line 1504
    :cond_0
    return-void
.end method

.method G(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1592
    const-string v0, "\u0016*\u001a;M\'\u0016\"\u000e"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "~0mI\u0013"

    invoke-static {v0}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method G(Z)V
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 811
    if-eqz p1, :cond_0

    .line 1223
    const/16 v0, 0x8

    .line 1154
    :goto_0
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v1, v0}, Lcom/apptracker/android/advert/AppWebView;->setVisibility(I)V

    .line 1179
    return-void

    .line 875
    :cond_0
    const/4 v0, 0x0

    .line 1154
    goto :goto_0
.end method

.method G()Z
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->H:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/apptracker/android/listener/AppModuleLoaderListener;->onModuleDisplayed(Z)V

    .line 1107
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->c()Z

    move-result v0

    return v0
.end method

.method G(II)Z
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 710
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 769
    :cond_0
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0007D\nM\rL2B\u0000N\u000bd\u0012N\u0016G\u0005R0B\tN-E\u0002DDL\u000b_DB\n]\u0005G\rODB\n[\u0011_DX\u000fB\u0014\u007f\rF\u0001\u0016"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cB;\r;\u0003#2#\u000366&\u000f*_"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const/4 v0, 0x0

    .line 1564
    :goto_0
    return v0

    .line 907
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u000eJ\u0012J\u0017H\u0016B\u0014_^H\u000bE\u0002B\u0003\u0003"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "N"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M\u0010"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    .line 1202
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v2, v1}, Lcom/apptracker/android/advert/AppWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method G(Ljava/lang/String;Lcom/apptracker/android/module/AppAd;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Lcom/apptracker/android/module/AppAd;

    .prologue
    .line 1249
    invoke-virtual {p2}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/apptracker/android/module/AppModuleCache;->getAdFileName(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    .line 1373
    invoke-static {v0, p2}, Lcom/apptracker/android/module/AppModuleCache;->B(Ljava/io/File;Lcom/apptracker/android/module/AppAd;)Z

    move-result v0

    return v0
.end method

.method I()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1567
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v1, v2}, Lcom/apptracker/android/advert/AppVideoView;->setLastPausedPosition(I)V

    .line 744
    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->F(Z)V

    .line 1236
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->stopPlayback()V

    .line 1090
    iput-boolean v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->K:Z

    .line 1234
    return-void
.end method

.method J()Z
    .locals 3

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getMediaLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->k:Z

    if-eqz v0, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->H:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    const-string v1, ""

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->k:Z

    invoke-interface {v0, v1, v2}, Lcom/apptracker/android/listener/AppModuleLoaderListener;->onModuleCompleted(Ljava/lang/String;Z)V

    .line 666
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    sget-object v1, Lcom/apptracker/android/module/AppVideoModuleController;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->onCached(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V

    .line 1526
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->G()Z

    goto :goto_0
.end method

.method K()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1349
    invoke-direct {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->B()V

    .line 1284
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->start()V

    .line 1393
    iput-boolean v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->K:Z

    .line 1101
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->getLastPausedPosition()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    .line 1560
    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->G(I)V

    .line 912
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->getSkipAllowTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->getLastPausedPosition()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    .line 668
    if-ltz v0, :cond_0

    .line 1524
    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(I)V

    .line 1426
    :cond_0
    return v2
.end method

.method L(Z)V
    .locals 6
    .param p1, "arg0"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1357
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->I()V

    .line 895
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->E:Landroid/content/Context;

    invoke-static {v2}, Lcom/apptracker/android/track/AppTracker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1165
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->E:Landroid/content/Context;

    invoke-static {v2}, Lcom/apptracker/android/advert/AppWebView;->showInternetDialog(Landroid/content/Context;)V

    .line 1259
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->destroyModule()V

    .line 1570
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .end local p1    # "arg0":Z
    :goto_0
    return-void

    .line 1444
    .restart local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local p1    # "arg0":Z
    :cond_0
    invoke-virtual {p0, v3}, Lcom/apptracker/android/module/AppVideoModuleController;->k(Z)Z

    move-result v2

    .line 952
    if-nez v2, :cond_3

    .line 1327
    :try_start_0
    sget-object v2, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    sget-object v4, Lcom/apptracker/android/module/AppVideoModuleController;->A:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/apptracker/android/module/AppVideoModuleController;->onClicked(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->destroyAd()V

    .line 691
    new-instance v2, Landroid/content/Intent;

    const-string v4, ".\u000c+\u0010 \u000b+L&\u000c;\u0007!\u0016a\u0003,\u0016&\r!L\u0019+\n5"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v5}, Lcom/apptracker/android/module/AppAd;->getLandingUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1222
    const/high16 v4, 0x40080000    # 2.125f

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 786
    const/high16 v4, 0x18000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1088
    iget-object v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    .line 641
    .end local p1    # "arg0":Z
    .local v0, "arg0":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 946
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->isShouldClickTrack()Z

    move-result v2

    .line 987
    iget-object v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v4}, Lcom/apptracker/android/module/AppAd;->getMediaSkipUrl()Ljava/lang/String;

    move-result-object v4

    .line 1377
    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->A:Z

    if-nez v2, :cond_6

    .line 1491
    iput-boolean v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->A:Z

    .line 642
    invoke-static {v4}, Lcom/apptracker/android/module/AppVideoModuleController;->trackUrl(Ljava/lang/String;)V

    move-object v1, p0

    .line 1048
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .local v1, "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :goto_2
    iget-boolean v2, v1, Lcom/apptracker/android/module/AppVideoModuleController;->L:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getAllowMediaNotifier()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1055
    sget-object v2, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    if-eqz v2, :cond_1

    .line 1386
    sget-object v4, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    if-eqz p1, :cond_7

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v4, v2}, Lcom/apptracker/android/listener/AppModuleListener;->onMediaFinished(Z)V

    .line 1102
    :cond_1
    const-string v2, "y\u0001\\\u0005Y\u0000N\u0000\u000b2B\u0000N\u000b\u000b\u0002B\nB\u0017C\u0001OD[\u0008J\u001dB\nL"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 857
    :cond_2
    iput-boolean v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->L:Z

    .line 897
    iput-boolean v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->J:Z

    .line 797
    iput-boolean v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->g:Z

    .line 1518
    iput-boolean v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->v:Z

    goto/16 :goto_0

    .line 1505
    .end local v0    # "arg0":Z
    .end local v1    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local p1    # "arg0":Z
    :catch_0
    move-exception v2

    .line 1156
    const-string v4, "APTr"

    invoke-static {v4, v2}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    move v0, p1

    .line 641
    .end local p1    # "arg0":Z
    .restart local v0    # "arg0":Z
    goto :goto_1

    .line 1058
    :cond_4
    sget-object v2, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    if-eqz v2, :cond_5

    .line 746
    :cond_5
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->isShouldClickTrack()Z

    move-result v2

    .line 1527
    iget-object v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v4}, Lcom/apptracker/android/module/AppAd;->getMediaEndUrl()Ljava/lang/String;

    move-result-object v4

    .line 1112
    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->w:Z

    if-nez v2, :cond_6

    .line 1104
    iput-boolean v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->w:Z

    .line 1515
    invoke-static {v4}, Lcom/apptracker/android/module/AppVideoModuleController;->trackUrl(Ljava/lang/String;)V

    :cond_6
    move-object v1, p0

    .line 1048
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local v1    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    goto :goto_2

    :cond_7
    move v2, v3

    .line 1386
    goto :goto_3
.end method

.method L()Z
    .locals 4

    .prologue
    .line 1003
    :try_start_0
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/apptracker/android/module/AppModuleCache;->getAdFileName(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    .line 829
    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleCache;->deleteFilesByTimeStampOfAdFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1463
    :goto_0
    return v0

    .line 1520
    :catch_0
    move-exception v0

    .line 1463
    const/4 v0, 0x0

    goto :goto_0
.end method

.method M()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1397
    new-instance v1, Lcom/apptracker/android/advert/AppVideoView;

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-direct {v1, v2, v3}, Lcom/apptracker/android/advert/AppVideoView;-><init>(Landroid/content/Context;Lcom/apptracker/android/module/AppAd;)V

    iput-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    .line 1024
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    new-instance v2, Lcom/apptracker/android/module/AppVideoModuleController$3;

    invoke-direct {v2, p0}, Lcom/apptracker/android/module/AppVideoModuleController$3;-><init>(Lcom/apptracker/android/module/AppVideoModuleController;)V

    invoke-virtual {v1, v2}, Lcom/apptracker/android/advert/AppVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1318
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    new-instance v2, Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-direct {v2, p0}, Lcom/apptracker/android/module/AppVideoModuleController$4;-><init>(Lcom/apptracker/android/module/AppVideoModuleController;)V

    invoke-virtual {v1, v2}, Lcom/apptracker/android/advert/AppVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1210
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 664
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    new-instance v2, Lcom/apptracker/android/module/AppVideoModuleController$5;

    invoke-direct {v2, p0}, Lcom/apptracker/android/module/AppVideoModuleController$5;-><init>(Lcom/apptracker/android/module/AppVideoModuleController;)V

    invoke-virtual {v1, v2}, Lcom/apptracker/android/advert/AppVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1529
    :cond_0
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    new-instance v2, Lcom/apptracker/android/module/AppVideoModuleController$6;

    invoke-direct {v2, p0}, Lcom/apptracker/android/module/AppVideoModuleController$6;-><init>(Lcom/apptracker/android/module/AppVideoModuleController;)V

    invoke-virtual {v1, v2}, Lcom/apptracker/android/advert/AppVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 983
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1146
    const/4 v2, -0x1

    .line 983
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1471
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->isKeepAspectRatio()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1044
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v0, p0

    .line 638
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .local v0, "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :goto_0
    iget-object v2, v0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getMediaLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptracker/android/advert/AppVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 601
    return-void

    .line 1432
    .end local v0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :cond_1
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1257
    const/16 v2, 0xb

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 997
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1025
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v0, p0

    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local v0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    goto :goto_0
.end method

.method a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1418
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getOverlayHtml()Ljava/lang/String;

    move-result-object v2

    .line 1376
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return v0

    .line 883
    :cond_1
    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    if-nez v3, :cond_2

    .line 1068
    new-instance v3, Lcom/apptracker/android/advert/AppWebView;

    iget-object v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    invoke-direct {v3, v4, p0}, Lcom/apptracker/android/advert/AppWebView;-><init>(Landroid/app/Activity;Lcom/apptracker/android/listener/AppModuleControllerListener;)V

    iput-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    .line 1042
    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v3, v0}, Lcom/apptracker/android/advert/AppWebView;->setVisibilityControl(Z)V

    .line 850
    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v3, v0}, Lcom/apptracker/android/advert/AppWebView;->setBackgroundColor(I)V

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 721
    if-eqz v0, :cond_3

    .line 1465
    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 785
    :cond_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 682
    const/4 v3, -0x1

    .line 785
    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1453
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1554
    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/apptracker/android/advert/AppWebView;->setLoadingURL(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {p0, v0, v2}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->m(Z)V

    move v0, v1

    .line 971
    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->E:Landroid/content/Context;

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-static {v0, p0, v1}, Lcom/apptracker/android/module/AppModuleActivity;->startActivity(Landroid/content/Context;Lcom/apptracker/android/module/AppVideoModuleController;Lcom/apptracker/android/module/AppAd;)Z

    .line 1477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->i:Z

    .line 1510
    return v0
.end method

.method public controlMedia(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 401
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0001 \u000c;\u0010 \u000e\u0002\u0007+\u000b.B,\r!\u0016=\r#_"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v0, "start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    invoke-virtual {p0, v3}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Z)V

    .line 528
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->a()Z

    .line 584
    invoke-virtual {p0, v3}, Lcom/apptracker/android/module/AppVideoModuleController;->m(Z)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const-string v0, "skip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    invoke-virtual {p0, v3}, Lcom/apptracker/android/module/AppVideoModuleController;->L(Z)V

    goto :goto_0

    .line 366
    :cond_2
    const-string v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->I()V

    goto :goto_0

    .line 483
    :cond_3
    const-string v0, "mute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    invoke-virtual {p0, v3}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Z)Z

    goto :goto_0

    .line 494
    :cond_4
    const-string v0, "unmute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Z)Z

    goto :goto_0

    .line 424
    :cond_5
    const-string v0, "replay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 600
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->l()Z

    .line 511
    invoke-virtual {p0, v3}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Z)V

    goto :goto_0

    .line 490
    :cond_6
    const-string v0, "config"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iput-boolean v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->x:Z

    .line 598
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    if-eqz v0, :cond_0

    .line 328
    iput-boolean v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->j:Z

    .line 371
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 285
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->getAllowSkip()I

    move-result v1

    .line 435
    invoke-virtual {p0, v1, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->G(II)Z

    goto :goto_0
.end method

.method public destroyAd()V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->F()V

    .line 597
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->L()Z

    .line 427
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->H:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/apptracker/android/listener/AppModuleLoaderListener;->onModuleDisplayed(Z)V

    .line 370
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->i:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 596
    :cond_0
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->f:Z

    if-eqz v0, :cond_1

    .line 349
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    sget-object v1, Lcom/apptracker/android/module/AppVideoModuleController;->A:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->onClosed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V

    .line 433
    :cond_1
    return-void
.end method

.method public destroyAd(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "arg0"    # Landroid/webkit/WebView;

    .prologue
    .line 410
    const-string v0, "APTr"

    const-string v1, "\u0000N\u0017_\u0016D\u001dj\u0000\u000b\u0007J\u0008G\u0001O"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->destroyAd()V

    .line 393
    return-void
.end method

.method public destroyModule()V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->I:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->I:Z

    .line 101
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->onCloseClick(Landroid/webkit/WebView;)V

    .line 146
    :cond_0
    return-void
.end method

.method public displayModuleInCurrentActity(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 1125
    if-eqz p1, :cond_0

    .line 932
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    .line 1220
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->g:Landroid/os/Handler;

    .line 1482
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    .line 1192
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    .line 939
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 711
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->getMaskAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1485
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 928
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->isAutoPlay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->M()V

    .line 1023
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->a()Z

    .line 1508
    invoke-virtual {p0, v4}, Lcom/apptracker/android/module/AppVideoModuleController;->m(Z)V

    move-object v0, p0

    .line 991
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .local v0, "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :goto_0
    iget-object v1, v0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1083
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->updateLayout(I)V

    .line 1215
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 922
    const/4 v2, -0x1

    .line 1215
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1021
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 798
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    return v4

    .line 1531
    .end local v0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :cond_1
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->M()V

    .line 1321
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->k(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->a:Z

    move-object v0, p0

    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local v0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    goto :goto_0
.end method

.method public hideElements(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "arg0"    # Landroid/webkit/WebView;

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 305
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 397
    :cond_0
    return-void
.end method

.method public isDisplayOnComplete()Z
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->isDisplayOnComplete()Z

    move-result v0

    return v0
.end method

.method public isModuleLoaded()Z
    .locals 1

    .prologue
    .line 1388
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->f:Z

    return v0
.end method

.method k()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1547
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->getBackgroundHtml()Ljava/lang/String;

    move-result-object v1

    .line 979
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return v0

    .line 925
    :cond_1
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    if-nez v2, :cond_2

    .line 714
    new-instance v2, Lcom/apptracker/android/advert/AppWebView;

    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/apptracker/android/advert/AppWebView;-><init>(Landroid/app/Activity;Lcom/apptracker/android/listener/AppModuleControllerListener;)V

    iput-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    .line 1295
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v2, v0}, Lcom/apptracker/android/advert/AppWebView;->setVisibilityControl(Z)V

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 761
    if-eqz v0, :cond_3

    .line 616
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1285
    :cond_3
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 602
    const/4 v0, -0x1

    .line 1285
    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 1246
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1032
    iget-object v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/apptracker/android/advert/AppWebView;->setLoadingURL(Ljava/lang/String;)V

    .line 1196
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {p0, v2, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method k(Z)Z
    .locals 7
    .param p1, "arg0"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1368
    .line 754
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 792
    iput-object v6, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    .line 1115
    :cond_0
    if-eqz p1, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getEndingHtml()Ljava/lang/String;

    move-result-object v0

    .line 1320
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 870
    :cond_1
    :goto_0
    return v3

    .line 1447
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getStartingHtml()Ljava/lang/String;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1145
    :cond_3
    const-string v0, "\u0017\u000c_\tGZ\u000bXC\u0001J\u0000\u0015D\u0017\tN\u0010JDE\u0005F\u0001\u0016F]\rN\u0013[\u000bY\u0010\tDH\u000bE\u0010N\n_Y\t\u0013B\u0000_\u000c\u0016\u0000N\u0012B\u0007NI\\\rO\u0010CH\u000b\rE\r_\rJ\u0008\u0006\u0017H\u0005G\u0001\u0016U\u0005T\u0007D^\u0017N\u0016\u0006\u0017H\u0005G\u0005I\u0008NYE\u000b\tZ\u000bX\u0004\u000cN\u0005OZ\u000bXI\u000bO\u001d\u0015D\u0017\u0005\u000b\u000cY\u0001MY\t\u000eJ\u0012J\u0017H\u0016B\u0014_^j4{\"b6nJH\u000bE\u0010Y\u000bG)N\u0000B\u0005\u0003CX\u0010J\u0016_C\u0002F\u000b\u0017_\u001dG\u0001\u0016FO\rX\u0014G\u0005R^I\u0008D\u0007@_\u000b\u000cN\rL\u000c_^\u000e\u0000[\u001c\u0010D\\\rO\u0010C^\u000e\u0000[\u001c\tZ\u000bX\u0004\u0005\u0015"

    invoke-static {v0}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->G:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->T:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v2, v3

    .line 944
    :goto_1
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    if-nez v0, :cond_5

    .line 1440
    new-instance v0, Lcom/apptracker/android/advert/AppWebView;

    iget-object v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    invoke-direct {v0, v4, p0}, Lcom/apptracker/android/advert/AppWebView;-><init>(Landroid/app/Activity;Lcom/apptracker/android/listener/AppModuleControllerListener;)V

    iput-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    .line 1310
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v3}, Lcom/apptracker/android/advert/AppWebView;->setBackgroundColor(I)V

    .line 1513
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v3}, Lcom/apptracker/android/advert/AppWebView;->setVisibilityControl(Z)V

    .line 789
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1506
    const/4 v0, -0x1

    .line 789
    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1205
    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 768
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1410
    if-eqz v0, :cond_4

    .line 1160
    iget-object v5, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1439
    :cond_4
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->requestFocus()Z

    .line 1319
    :cond_5
    invoke-virtual {p0, v3}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Z)V

    .line 1113
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v6}, Lcom/apptracker/android/advert/AppWebView;->setLoadingURL(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {p0, v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 810
    if-eqz p1, :cond_6

    .line 1194
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    new-instance v1, Lcom/apptracker/android/module/AppVideoModuleController$7;

    invoke-direct {v1, p0}, Lcom/apptracker/android/module/AppVideoModuleController$7;-><init>(Lcom/apptracker/android/module/AppVideoModuleController;)V

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1269
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    if-eqz v0, :cond_6

    .line 892
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->clearView()V

    :cond_6
    move v3, v2

    .line 782
    goto/16 :goto_0

    :cond_7
    move v2, v1

    move-object v1, v0

    goto :goto_1
.end method

.method l()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1091
    invoke-virtual {p0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->F(Z)V

    .line 1345
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppVideoView;->seekTo(I)V

    .line 1436
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->start()V

    .line 1270
    iput-boolean v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->x:Z

    .line 1251
    iput-boolean v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Z

    .line 679
    iput-boolean v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->j:Z

    .line 943
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getOverlayHtml()Ljava/lang/String;

    move-result-object v0

    .line 1540
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/apptracker/android/advert/AppWebView;->setLoadingURL(Ljava/lang/String;)V

    .line 1136
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {p0, v1, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 674
    :cond_0
    iput-boolean v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->K:Z

    .line 712
    return v3
.end method

.method public loadingModule(Landroid/content/Context;Ljava/lang/String;Lcom/apptracker/android/module/AppAd;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Lcom/apptracker/android/module/AppAd;

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->m:Z

    .line 240
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->f:Z

    .line 192
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->e:Z

    .line 151
    sput-object p2, Lcom/apptracker/android/module/AppModuleControllerBase;->A:Ljava/lang/String;

    .line 247
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->K:Z

    .line 148
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Z

    .line 1
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->i:Z

    .line 141
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->b:Z

    .line 154
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->A:Z

    .line 20
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->w:Z

    .line 82
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->L:Z

    .line 168
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->J:Z

    .line 221
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->g:Z

    .line 253
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->v:Z

    .line 18
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->I:Z

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "APTr"

    const-string v1, "\u0008D\u0005O\rE\u0003f\u000bO\u0011G\u0001\u000b\rX)D\u0000^\u0008N N\u0017_\u0016D\u001dy\u0001Z\u0011N\u0017_\u0001OY_\u0016^\u0001\u000b\u0017DDA\u0011X\u0010\u000b\u0016N\u0010^\u0016E"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    iput-object p3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    .line 23
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_3

    .line 104
    :cond_1
    const-string v0, "APTr"

    const-string v1, "\u000e \u0003+\u000b!\u0005\u0002\r+\u0017#\u0007o\u000b!\u0014.\u000e&\u0006o\u000b!\u0012:\u0016"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_2
    :goto_0
    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->G:I

    .line 56
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->T:I

    .line 109
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->m()Z

    move-result v0

    .line 153
    if-nez v0, :cond_2

    goto :goto_0
.end method

.method m(Z)V
    .locals 4
    .param p1, "arg0"    # Z

    .prologue
    .line 1335
    const-string v1, "-9\u0007=\u000e.\u001b\u0019\u000b*\u0015"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "C\rO\u0001\u0016"

    invoke-static {v3}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-eqz p1, :cond_1

    .line 1020
    const/16 v1, 0x8

    move-object v0, p0

    .line 1294
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .local v0, "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :goto_0
    iget-object v2, v0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    if-eqz v2, :cond_0

    .line 993
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v2, v1}, Lcom/apptracker/android/advert/AppWebView;->setVisibility(I)V

    .line 788
    :cond_0
    return-void

    .line 1521
    .end local v0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    :cond_1
    const/4 v1, 0x0

    move-object v0, p0

    .line 1294
    .end local p0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    .restart local v0    # "this":Lcom/apptracker/android/module/AppVideoModuleController;
    goto :goto_0
.end method

.method m()Z
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    sget-object v1, Lcom/apptracker/android/module/AppVideoModuleController;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->isVideoDownloaded(Lcom/apptracker/android/module/AppAd;Ljava/lang/String;)Z

    move-result v0

    .line 450
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 434
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->J()Z

    .line 332
    :goto_0
    return v0

    .line 415
    :cond_0
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->k:Z

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->H:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    const-string v1, "no fill"

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->k:Z

    invoke-interface {v0, v1, v2}, Lcom/apptracker/android/listener/AppModuleLoaderListener;->onModuleCompleted(Ljava/lang/String;Z)V

    .line 282
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppModuleLoaded(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "arg0"    # Landroid/webkit/WebView;

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->f:Z

    if-nez v0, :cond_0

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->f:Z

    .line 396
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->H:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    const-string v1, ""

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->k:Z

    invoke-interface {v0, v1, v2}, Lcom/apptracker/android/listener/AppModuleLoaderListener;->onModuleCompleted(Ljava/lang/String;Z)V

    .line 421
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    sget-object v1, Lcom/apptracker/android/module/AppVideoModuleController;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->onLoaded(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    if-ne p1, v0, :cond_1

    .line 420
    const-string v0, "APTr"

    const-string v1, "D\nj\u0014[)D\u0000^\u0008N(D\u0005O\u0001O^D\u0012N\u0016G\u0005R2B\u0001\\"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->K()Z

    .line 266
    :cond_1
    return-void
.end method

.method public onCloseClick(Landroid/webkit/WebView;)V
    .locals 5
    .param p1, "arg0"    # Landroid/webkit/WebView;

    .prologue
    .line 173
    const-string v0, "APTr"

    const-string v1, "/ \u0006:\u000e*! \u000c;\u0010 \u000e#\u0007=E<B \u000c\u000c\u000e \u0011*!#\u000b,\t"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->isShouldClickTrack()Z

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->isRealTimeCloseTracking()Z

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getCloseTrackingUrl()Ljava/lang/String;

    move-result-object v2

    .line 161
    if-eqz v0, :cond_1

    .line 233
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    const-string v0, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0010Y\u0005H\u000fB\nLDD\nh\u0008D\u0017N\'G\rH\u000f\u000b\u0013B\u0010C^\u000b"

    invoke-static {v4}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->E:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->trackClick(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->destroyAd()V

    .line 204
    return-void

    .line 76
    :cond_1
    const-string v0, "APTr"

    const-string v1, ", \u0016o\u0016=\u0003,\t&\u000c(B,\u000e \u0011*!#\u000b,\t"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLinkClick(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "G\rE\u000fh\u0008B\u0007@\u0001ODH\u0005G\u0008N\u0000\u000b\u0013B\u0010CDC\u001d[\u0001Y\u0008B\n@^\u000b"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->C:Lcom/apptracker/android/advert/AppWebView;

    if-ne p1, v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppVideoModuleController;->pause()V

    .line 178
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    sget-object v1, Lcom/apptracker/android/module/AppVideoModuleController;->A:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcom/apptracker/android/module/AppVideoModuleController;->onClicked(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->B:Lcom/apptracker/android/advert/AppWebView;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    if-eqz v0, :cond_2

    .line 414
    sget-object v0, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    sget-object v1, Lcom/apptracker/android/module/AppVideoModuleController;->A:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcom/apptracker/android/module/AppVideoModuleController;->onClicked(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->isShouldClickTrack()Z

    move-result v0

    .line 368
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->isRealTimeClickTracking()Z

    move-result v1

    .line 530
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getClickTrackUrls()Ljava/util/HashMap;

    move-result-object v2

    .line 451
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 313
    const-string v0, "APTr"

    const-string v3, ";\u0010.\u0001$\u000b!\u0005o\u0004#\u0003(B&\u0011o6\u001d7\nB"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 574
    if-nez v0, :cond_3

    .line 272
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 555
    if-eqz v0, :cond_0

    .line 299
    const-string v2, "APTr"

    const-string v3, "\"D\u0011E\u0000\u000b\u0005\u000b\u0000N\u0002J\u0011G\u0010\u000b\u0010Y\u0005H\u000f~\u0016G"

    invoke-static {v3}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->E:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->trackClick(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 475
    :cond_3
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "$ \u0017!\u0006o\u000f.\u0016,\n&\u000c(B#\u0003!\u0006&\u000c(B#\u000b!\tuB"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->E:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->trackClick(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 497
    :cond_4
    const-string v0, "APTr"

    const-string v1, "e\u000b_D_\u0016J\u0007@\rE\u0003\u000b\u0010C\u0001\u000b\u0008B\n@DH\u0008B\u0007@"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 190
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->K:Z

    if-eqz v0, :cond_0

    const-string v0, "APTr"

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Z

    .line 236
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->onPause()V

    .line 217
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v2}, Lcom/apptracker/android/advert/AppVideoView;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->l:I

    .line 134
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->getSkipAllowTime()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v2}, Lcom/apptracker/android/advert/AppVideoView;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->c:I

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#?\u0012\u0019\u000b+\u0007 / \u0006:\u000e*! \u000c;\u0010 \u000e#\u0007=L?\u0003:\u0011*JfX"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Z

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Z

    .line 127
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->D:Lcom/apptracker/android/advert/AppVideoView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->onResume()V

    .line 203
    :cond_0
    iget v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->l:I

    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->G(I)V

    .line 206
    iget v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->c:I

    if-ltz v0, :cond_1

    .line 85
    iget v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->c:I

    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(I)V

    .line 129
    :cond_1
    return-void
.end method

.method public setListener(Lcom/apptracker/android/listener/AppModuleListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/listener/AppModuleListener;

    .prologue
    .line 29
    sput-object p1, Lcom/apptracker/android/module/AppVideoModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    .line 174
    return-void
.end method

.method public setLoading(Landroid/webkit/WebView;Z)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public showElements(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "arg0"    # Landroid/webkit/WebView;

    .prologue
    .line 470
    if-eqz p1, :cond_0

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 295
    :cond_0
    return-void
.end method

.method public updateLayout(I)V
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    const/4 v3, 0x1

    .line 1177
    :try_start_0
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->getScreenWidthHeight(Landroid/content/Context;)[I

    move-result-object v0

    .line 1131
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 604
    const/4 v2, 0x1

    aget v0, v0, v2

    .line 1247
    if-ne p1, v3, :cond_0

    iget v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->T:I

    iget v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->G:I

    if-gt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->T:I

    iget v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->G:I

    if-ge v2, v3, :cond_3

    .line 1354
    :cond_1
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->G:I

    iget v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->T:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1392
    iget v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->G:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->T:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1014
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 961
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    if-ne v1, v2, :cond_2

    .line 962
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1409
    :cond_2
    :goto_0
    return-void

    .line 836
    :cond_3
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->T:I

    iget v4, p0, Lcom/apptracker/android/module/AppVideoModuleController;->G:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1183
    iget v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->T:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/apptracker/android/module/AppVideoModuleController;->G:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1576
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1187
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    if-ne v1, v2, :cond_2

    .line 1414
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController;->M:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1409
    :catch_0
    move-exception v0

    .line 1013
    const-string v1, "APTr"

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
