.class public Lcom/apptracker/android/module/AppModuleCache;
.super Ljava/lang/Object;
.source "db"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final synthetic A:Ljava/lang/String; = "/afwad"

.field public static final G:Ljava/lang/String; = "ad"

.field private static synthetic d:Ljava/io/File; = null

.field private static final synthetic e:Ljava/lang/String; = "!"

.field public static final h:Ljava/lang/String; = "vi"

.field private static final synthetic k:Ljava/lang/String; = "Xke-jKFBeI9gfc4V"

.field private static final synthetic m:Ljava/lang/String; = "FJNkd+T9"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    sput-object v0, Lcom/apptracker/android/module/AppModuleCache;->d:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static B(Ljava/io/File;)Lcom/apptracker/android/module/AppAd;
    .locals 6
    .param p0, "arg0"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 387
    .line 377
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    .line 411
    new-array v0, v0, [B

    .line 289
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 352
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 463
    :try_start_2
    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleCache;->decryptDataWithKey([B)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 324
    if-nez v0, :cond_0

    .line 563
    const-string v0, "APTr"

    const-string v2, ";\r6\u0006\u0016\u0006\u0011\u00108\u000f\u0014\u00034\n2B3\u00074\u0010.\u0012#B1\u0003>\u000e2\u0006"

    invoke-static {v2}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1331
    :goto_0
    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 346
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#\r.\u0006\u000e\u0006\t\u0010 \u000f\u000c\u0003,\n*B\t\u000b#\u0007\u0001\r;$ \u0017!\u0006\n\u001a,\u0007?\u0016&\r!B*\u001a,\u0007?\u0016&\r!_"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 577
    goto :goto_0

    .line 576
    :catch_1
    move-exception v0

    .line 554
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ";\r6\u0006\u0016\u0006\u0011\u00108\u000f\u0014\u00034\n2B%\u00076\u0006\u0011\u0017;\u000e.B2\u001a4\u0007\'\u0016>\r9_"

    invoke-static {v4}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 329
    goto :goto_0

    .line 271
    :catch_2
    move-exception v0

    .line 527
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#\r.\u0006\u000e\u0006\t\u0010 \u000f\u000c\u0003,\n*B+\u0007,\u00106\u0012;B*\u001a,\u0007?\u0016&\r!_"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {p0}, Lcom/apptracker/android/module/AppModuleCache;->deleteFilesByTimeStampOfAdFile(Ljava/io/File;)Z

    move-object v0, v1

    .line 518
    goto :goto_0

    .line 376
    :cond_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 723
    :try_start_3
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 937
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptracker/android/module/AppAd;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1227
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 669
    :catch_3
    move-exception v1

    .line 1331
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u000e8\u00033#3$%\r:!6\u0001?\u0007w-5\u00082\u0001#+9\u0012\"\u0016\u0004\u0016%\u00076\u000fw\u0004>\u000e2B4\u000e8\u00112B2\u001a4\u0007\'\u0016>\r9_"

    invoke-static {v4}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1474
    :catch_4
    move-exception v0

    move-object v2, v1

    .line 1304
    :goto_1
    :try_start_6
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#\r.\u0006\u000e\u0006\t\u0010 \u000f\u000c\u0003,\n*B\u0000\u0000%\u0007,\u0016\u0006\u000c?\u0017;1;\u0010*\u0003\"B*\u001a,\u0007?\u0016&\r!_"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-static {p0}, Lcom/apptracker/android/module/AppModuleCache;->deleteFilesByTimeStampOfAdFile(Ljava/io/File;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1227
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v0, v1

    .line 669
    goto/16 :goto_0

    :catch_5
    move-exception v0

    .line 1331
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u000e8\u00033#3$%\r:!6\u0001?\u0007w-5\u00082\u0001#+9\u0012\"\u0016\u0004\u0016%\u00076\u000fw\u0004>\u000e2B4\u000e8\u00112B2\u001a4\u0007\'\u0016>\r9_"

    invoke-static {v4}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 854
    :catch_6
    move-exception v0

    move-object v2, v1

    .line 1399
    :goto_2
    :try_start_8
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#\r.\u0006\u000e\u0006\t\u0010 \u000f\u000c\u0003,\n*B\u0000\u0000%\u0007,\u0016\u0006\u000c?\u0017;1;\u0010*\u0003\"B*\u001a,\u0007?\u0016&\r!_"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-static {p0}, Lcom/apptracker/android/module/AppModuleCache;->deleteFilesByTimeStampOfAdFile(Ljava/io/File;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1227
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    move-object v0, v1

    .line 669
    goto/16 :goto_0

    :catch_7
    move-exception v0

    .line 1331
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u000e8\u00033#3$%\r:!6\u0001?\u0007w-5\u00082\u0001#+9\u0012\"\u0016\u0004\u0016%\u00076\u000fw\u0004>\u000e2B4\u000e8\u00112B2\u001a4\u0007\'\u0016>\r9_"

    invoke-static {v4}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 1370
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 1227
    :goto_3
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1204
    :goto_4
    throw v0

    .line 669
    :catch_8
    move-exception v1

    .line 1331
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u000e \u0003+#+$=\r\"!.\u0001\'\u0007o--\u0008*\u0001;+!\u0012:\u0016\u001c\u0016=\u0007.\u000fo\u0004&\u000e*B,\u000e \u0011*B*\u001a,\u0007?\u0016&\r!_"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1370
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 854
    :catch_9
    move-exception v0

    goto :goto_2

    .line 1474
    :catch_a
    move-exception v0

    goto/16 :goto_1
.end method

.method static B(Ljava/io/File;Lcom/apptracker/android/module/AppAd;)Z
    .locals 5
    .param p0, "arg0"    # Ljava/io/File;
    .param p1, "arg1"    # Lcom/apptracker/android/module/AppAd;

    .prologue
    const/4 v0, 0x0

    .line 564
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 460
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 304
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 599
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/apptracker/android/module/AppModuleCache;->encryptDataWithKey([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 319
    if-nez v1, :cond_0

    .line 359
    const-string v1, "APTr"

    const-string v2, "\u0011;\r=\u0007\u000e\u0006\u001b\r\u000c\u0003,\n*B*\u000c,\u00106\u0012;B)\u0003&\u000e*\u0006"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_0
    return v0

    .line 423
    :catch_0
    move-exception v1

    .line 294
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<\u0016 \u0010*#+6 !.\u0001\'\u0007o--\u0008*\u0001;-:\u0016?\u0017;1;\u0010*\u0003\"B*\u001a,\u0007?\u0016&\r!_"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :catch_1
    move-exception v1

    .line 394
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0011#\r%\u0007\u0016\u0006\u0003\r\u0014\u00034\n2B2\u000c4\u0010.\u0012#B2\u001a4\u0007\'\u0016>\r9_"

    invoke-static {v4}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_0
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 582
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 417
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 426
    const/4 v0, 0x1

    goto :goto_0

    .line 403
    :catch_2
    move-exception v1

    .line 269
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "$\u00168\u00102#368!6\u0001?\u0007w$>\u000e2-\"\u0016\'\u0017#1#\u00102\u0003:B2\u001a4\u0007\'\u0016>\r9_"

    invoke-static {v4}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {p0}, Lcom/apptracker/android/module/AppModuleCache;->deleteFilesByTimeStampOfAdFile(Ljava/io/File;)Z

    goto :goto_0
.end method

.method static G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/apptracker/android/module/AppModuleCache;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic G([Ljava/io/File;)V
    .locals 10
    .param p0, "arg0"    # [Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    array-length v6, p0

    move v0, v2

    move v3, v2

    :goto_0
    if-lt v0, v6, :cond_0

    .line 290
    return-void

    .line 279
    :cond_0
    aget-object v7, p0, v3

    .line 333
    invoke-static {v7}, Lcom/apptracker/android/module/AppModuleCache;->m(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "!"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 438
    if-eqz v0, :cond_1

    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 440
    aget-object v4, v0, v2

    aget-object v0, v0, v1

    invoke-static {v4, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->isVideoDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    :cond_1
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 286
    :cond_2
    array-length v9, p0

    move v4, v2

    move v5, v2

    move v0, v2

    :goto_2
    if-lt v4, v9, :cond_3

    .line 418
    if-nez v0, :cond_1

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 286
    :cond_3
    aget-object v4, p0, v5

    .line 298
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    .line 286
    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2
.end method

.method public static decryptData([B[B[B)[B
    .locals 5
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # [B
    .param p2, "arg2"    # [B

    .prologue
    const/16 v0, 0x10

    .line 648
    :try_start_0
    const-string v1, "\u000e\'\u001cM\u000c \u000cM\u001f)\u000c1z2.\u0006+\u000b!\u0005"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 978
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "#\u00121"

    invoke-static {v3}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1197
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 1279
    array-length v4, p2

    if-le v4, v0, :cond_0

    .line 945
    :goto_0
    const/4 v4, 0x0

    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1572
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1111
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 949
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 1546
    :goto_1
    return-object v0

    .line 1279
    :cond_0
    array-length v0, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1526
    :catch_0
    move-exception v0

    .line 872
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#\r.\u0006\u000e\u0006\t\u0010 \u000f\u000c\u0003,\n*B+\u0007,\u00106\u0012;&.\u0016.B*\u001a,\u0007?\u0016&\r!_"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static decryptDataWithKey([B)[B
    .locals 2
    .param p0, "arg0"    # [B

    .prologue
    .line 1532
    const-string v0, "Xke-jKFBeI9gfc4V"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "FJNkd+T9"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/apptracker/android/module/AppModuleCache;->decryptData([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static deleteFilesByTimeStampOfAdFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "arg0"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 593
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 422
    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    :cond_0
    move v0, v1

    .line 339
    :cond_1
    return v0

    .line 477
    :cond_2
    aget-object v3, v3, v0

    .line 529
    new-instance v4, Lcom/apptracker/android/module/AppModuleCache$3;

    invoke-direct {v4, v3}, Lcom/apptracker/android/module/AppModuleCache$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 264
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v1, v4, :cond_1

    add-int/lit8 v1, v2, 0x1

    aget-object v2, v3, v2

    .line 587
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move v2, v1

    .line 264
    goto :goto_0
.end method

.method public static encryptData([B[B[B)[B
    .locals 5
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # [B
    .param p2, "arg2"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    const/16 v0, 0x10

    .line 776
    :try_start_0
    const-string v1, "\u0016\'\u0004M\u0014 \u0014M\u0007)\u00141b26\u00063\u000b9\u0005"

    invoke-static {v1}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 627
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "#\n1"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1230
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 708
    array-length v4, p2

    if-le v4, v0, :cond_0

    .line 885
    :goto_0
    const/4 v4, 0x0

    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1231
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1451
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    :goto_1
    return-object v0

    .line 708
    :cond_0
    array-length v0, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v0

    .line 612
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ";\r6\u0006\u0016\u0006\u0011\u00108\u000f\u0014\u00034\n2B2\u000c4\u0010.\u0012#&6\u00166B2\u001a4\u0007\'\u0016>\r9_"

    invoke-static {v3}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static encryptDataWithKey([B)[B
    .locals 2
    .param p0, "arg0"    # [B

    .prologue
    .line 1027
    const-string v0, "Xke-jKFBeI9gfc4V"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "FJNkd+T9"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/apptracker/android/module/AppModuleCache;->encryptData([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getAdFileName(Ljava/lang/String;J)Ljava/io/File;
    .locals 3
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # J

    .prologue
    .line 33
    const-string v0, "ad"

    invoke-static {p0, v0, p1, p2}, Lcom/apptracker/android/module/AppModuleCache;->getFileName(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {}, Lcom/apptracker/android/module/AppModuleCache;->G()Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object v2
.end method

.method public static getAvailableAdFromCache(Ljava/lang/String;)Lcom/apptracker/android/module/AppAd;
    .locals 14
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-static {}, Lcom/apptracker/android/module/AppModuleCache;->G()Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/apptracker/android/module/AppModuleCache$1;

    invoke-direct {v0, p0}, Lcom/apptracker/android/module/AppModuleCache$1;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-object v1

    .line 100
    :cond_1
    new-instance v0, Lcom/apptracker/android/module/AppModuleCache$2;

    invoke-direct {v0}, Lcom/apptracker/android/module/AppModuleCache$2;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 93
    array-length v8, v2

    move v3, v4

    move v5, v4

    move-object v0, v1

    :goto_1
    if-lt v3, v8, :cond_2

    move-object v1, v0

    move-object v0, v2

    .line 448
    :goto_2
    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleCache;->G([Ljava/io/File;)V

    goto :goto_0

    .line 93
    :cond_2
    aget-object v3, v2, v5

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v3}, Lcom/apptracker/android/module/AppModuleCache;->m(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 93
    :cond_3
    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 187
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 177
    sub-long v10, v6, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    .line 184
    invoke-static {v3}, Lcom/apptracker/android/module/AppModuleCache;->B(Ljava/io/File;)Lcom/apptracker/android/module/AppAd;

    move-result-object v0

    .line 88
    if-nez v0, :cond_5

    .line 234
    invoke-static {v3}, Lcom/apptracker/android/module/AppModuleCache;->deleteFilesByTimeStampOfAdFile(Ljava/io/File;)Z

    goto :goto_3

    .line 179
    :cond_5
    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getCacheExpiry()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-lez v9, :cond_6

    .line 102
    invoke-static {v3}, Lcom/apptracker/android/module/AppModuleCache;->deleteFilesByTimeStampOfAdFile(Ljava/io/File;)Z

    move-object v0, v1

    .line 62
    goto :goto_3

    .line 132
    :cond_6
    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v0, p0}, Lcom/apptracker/android/module/AppVideoModuleController;->isVideoDownloaded(Lcom/apptracker/android/module/AppAd;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 575
    invoke-static {v3}, Lcom/apptracker/android/module/AppModuleCache;->deleteFilesByTimeStampOfAdFile(Ljava/io/File;)Z

    move-object v0, v1

    .line 532
    goto :goto_3

    .line 487
    :cond_7
    invoke-static {v3}, Lcom/apptracker/android/module/AppModuleCache;->getTimeStampFromAdFile(Ljava/io/File;)J

    move-result-wide v6

    .line 534
    invoke-virtual {v0, v6, v7}, Lcom/apptracker/android/module/AppAd;->setTimeStamp(J)V

    .line 368
    invoke-virtual {v0, v4}, Lcom/apptracker/android/module/AppAd;->setCache(I)V

    move-object v1, v0

    move-object v0, v2

    .line 530
    goto :goto_2
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # J

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeStampFromAdFile(Ljava/io/File;)J
    .locals 6
    .param p0, "arg0"    # Ljava/io/File;

    .prologue
    const-wide/16 v0, 0x0

    .line 225
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 192
    :cond_0
    const-string v2, "APTr"

    const-string v3, "\u0016\u0012\'/8\u0006\"\u000e2!6\u0001?\u0007w\u00052\u0016\u0003\u000b:\u0007\u0004\u00166\u000f\'$%\r:#3$>\u000e2B2\u0010%\r%Xw\u000b9\u00146\u000e>\u0006w\u0004>\u000e2B9\u0003:\u0007"

    invoke-static {v3}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-wide v0

    .line 247
    :cond_1
    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 114
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    .line 154
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#?\u0012\u0002\r+\u0017#\u0007\u000c\u0003,\n*B(\u0007;6&\u000f*1;\u0003\"\u0012\t\u0010 \u000f\u000e\u0006\t\u000b#\u0007o\u0016&\u000f*B?\u0003=\u0011&\u000c(B*\u001a,\u0007?\u0016&\r!_"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVideoFileName(Ljava/lang/String;J)Ljava/io/File;
    .locals 3
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # J

    .prologue
    .line 251
    const-string v0, "vi"

    invoke-static {p0, v0, p1, p2}, Lcom/apptracker/android/module/AppModuleCache;->getFileName(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/apptracker/android/module/AppModuleCache;->G()Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-object v2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/module/AppModuleCache;->d:Ljava/io/File;

    .line 80
    sget-object v0, Lcom/apptracker/android/module/AppModuleCache;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "\u0003!\u0006=\r&\u0006a\u0012*\u0010\"\u000b<\u0011&\r!L\u00180\u00066\n=\n:\u001b\'\u001d,\u000e.\u00101\u001b-\u001d#\u0008\'"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/module/AppModuleCache;->d:Ljava/io/File;

    .line 124
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/apptracker/android/module/AppModuleCache;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/afwad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 157
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 238
    :cond_2
    sput-object v0, Lcom/apptracker/android/module/AppModuleCache;->d:Ljava/io/File;

    .line 244
    return-void
.end method

.method static m(Ljava/io/File;)Z
    .locals 2
    .param p0, "arg0"    # Ljava/io/File;

    .prologue
    .line 512
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const/4 v0, 0x1

    .line 559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method G(Ljava/io/File;)Lcom/apptracker/android/module/AppAd;
    .locals 3
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 1060
    .line 1449
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptracker/android/module/AppAd;
    :try_end_2
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/OptionalDataException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 904
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    .line 1473
    :goto_0
    return-object v0

    .line 1361
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1473
    goto :goto_0

    .line 901
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 904
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 1003
    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1249
    :catch_3
    move-exception v0

    move-object v2, v1

    .line 904
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v1

    .line 1003
    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1373
    :catch_5
    move-exception v0

    move-object v2, v1

    .line 904
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v0, v1

    .line 1003
    goto :goto_0

    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1226
    :catch_7
    move-exception v0

    move-object v2, v1

    .line 904
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    move-object v0, v1

    .line 1003
    goto :goto_0

    :catch_8
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1180
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 904
    :goto_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 1520
    :goto_6
    throw v0

    .line 1003
    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_0

    .line 1180
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1226
    :catch_b
    move-exception v0

    goto :goto_4

    .line 1373
    :catch_c
    move-exception v0

    goto :goto_3

    .line 1249
    :catch_d
    move-exception v0

    goto :goto_2

    .line 901
    :catch_e
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method G(Ljava/io/File;Lcom/apptracker/android/module/AppAd;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/io/File;
    .param p2, "arg1"    # Lcom/apptracker/android/module/AppAd;

    .prologue
    .line 434
    .line 369
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 429
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 415
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 585
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 493
    :catch_0
    move-exception v0

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllCacheFiles()Z
    .locals 4

    .prologue
    .line 533
    invoke-static {}, Lcom/apptracker/android/module/AppModuleCache;->G()Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 522
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 586
    const/4 v0, 0x1

    return v0

    .line 522
    :cond_0
    add-int/lit8 v0, v1, 0x1

    aget-object v1, v2, v1

    .line 310
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move v1, v0

    .line 522
    goto :goto_0
.end method

.method public deleteFilesByAdFile(Ljava/io/File;)Z
    .locals 5
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 508
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 370
    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 373
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    :cond_0
    move v0, v1

    .line 521
    :cond_1
    :goto_0
    return v0

    .line 592
    :cond_2
    aget-object v1, v2, v1

    .line 349
    aget-object v2, v2, v0

    .line 524
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "vi"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 515
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 353
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
