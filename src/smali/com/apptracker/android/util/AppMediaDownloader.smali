.class public Lcom/apptracker/android/util/AppMediaDownloader;
.super Ljava/lang/Object;
.source "p"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;
    }
.end annotation


# static fields
.field private static final synthetic k:I = 0x1

.field private static synthetic m:Lcom/apptracker/android/util/AppMediaDownloader;


# instance fields
.field private synthetic h:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/apptracker/android/util/AppMediaDownloader;

    invoke-direct {v0}, Lcom/apptracker/android/util/AppMediaDownloader;-><init>()V

    sput-object v0, Lcom/apptracker/android/util/AppMediaDownloader;->m:Lcom/apptracker/android/util/AppMediaDownloader;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/apptracker/android/util/AppMediaDownloader;->h:Ljava/util/concurrent/ExecutorService;

    .line 246
    return-void
.end method

.method private synthetic G(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "arg0"    # Ljava/io/InputStream;
    .param p2, "arg1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/16 v1, 0x800

    new-array v1, v1, [B

    move-object v0, p1

    .line 224
    .end local p1    # "arg0":Ljava/io/InputStream;
    .local v0, "arg0":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 111
    return-void

    .line 91
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    move-object v0, p1

    .line 224
    goto :goto_0
.end method

.method public static getInstance()Lcom/apptracker/android/util/AppMediaDownloader;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/apptracker/android/util/AppMediaDownloader;->m:Lcom/apptracker/android/util/AppMediaDownloader;

    return-object v0
.end method


# virtual methods
.method public decodeImageFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    const/16 v5, 0x46

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 141
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 258
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v4, v1

    .line 253
    :goto_0
    div-int/lit8 v1, v1, 0x2

    if-lt v1, v5, :cond_0

    div-int/lit8 v1, v3, 0x2

    if-ge v1, v5, :cond_1

    .line 215
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 23
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 104
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    .line 18
    :cond_1
    div-int/lit8 v1, v4, 0x2

    .line 162
    div-int/lit8 v3, v3, 0x2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    mul-int/lit8 v2, v2, 0x2

    move v4, v1

    .line 221
    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 199
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "O\u000c~1k\u0018g\u001dJ\u0013y\u0012b\u0013o\u0018k\u000e.\u0018k\u001fa\u0018k5c\u001di\u0019H\u0015b\u0019.\u0019v\u001fk\u000cz\u0015a\u0012.A"

    invoke-static {v4}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 21
    .line 201
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 77
    const/4 v1, 0x1

    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 54
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 235
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 29
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 174
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0, v3}, Lcom/apptracker/android/util/AppMediaDownloader;->G(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    .line 254
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=~\u000cC\u0019j\u0015o8a\u000b`\u0010a\u001dj\u0019|\\k\u0004m\u0019~\u0008g\u0013`A"

    invoke-static {v4}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 17
    goto :goto_0

    .line 3
    :catch_1
    move-exception v0

    .line 209
    const-string v1, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=~\u000cC\u0019j\u0015o8a\u000b`\u0010a\u001dj\u0019|\\k\u0004m\u0019~\u0008g\u0013`A"

    invoke-static {v4}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 254
    goto :goto_0

    .line 242
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 172
    :goto_1
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "=~\u000cC\u0019j\u0015o8a\u000b`\u0010a\u001dj\u0019|\\k\u0004m\u0019~\u0008g\u0013`A"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    move-object v0, v2

    .line 36
    goto :goto_0

    .line 242
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public downloadFileInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;)Z
    .locals 6
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/apptracker/android/util/AppMediaDownloader$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/apptracker/android/util/AppMediaDownloader$1;-><init>(Lcom/apptracker/android/util/AppMediaDownloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptracker/android/util/AppMediaDownloader$AppMediaDownloaderListener;)V

    const/4 v1, 0x1

    .line 249
    iget-object v2, p0, Lcom/apptracker/android/util/AppMediaDownloader;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 244
    return v1
.end method
