.class public Lcom/apptracker/android/track/AppTracker;
.super Ljava/lang/Object;
.source "y"


# static fields
.field private static synthetic A:Z = false

.field private static synthetic D:Z = false

.field private static synthetic E:Lcom/apptracker/android/module/AppModuleLoader; = null

.field static G:Ljava/lang/String; = null

.field private static synthetic H:Z = false

.field private static synthetic K:I = 0x0

.field public static final L:I = 0x0

.field private static synthetic M:Z = false

.field private static synthetic b:Landroid/content/SharedPreferences; = null

.field private static synthetic d:Lcom/apptracker/android/listener/AppModuleListener; = null

.field public static final e:I = 0x1

.field private static synthetic f:Z = false

.field static g:I = 0x0

.field static h:Landroid/content/SharedPreferences$Editor; = null

.field private static synthetic i:Ljava/lang/String; = null

.field static j:Z = false

.field private static synthetic k:Landroid/content/Context; = null

.field public static final l:I = 0x2

.field private static synthetic m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 211
    sput-boolean v1, Lcom/apptracker/android/track/AppTracker;->f:Z

    .line 171
    sput-boolean v1, Lcom/apptracker/android/track/AppTracker;->H:Z

    .line 90
    sput-boolean v1, Lcom/apptracker/android/track/AppTracker;->M:Z

    .line 63
    sput-boolean v1, Lcom/apptracker/android/track/AppTracker;->D:Z

    .line 252
    sput-boolean v1, Lcom/apptracker/android/track/AppTracker;->m:Z

    .line 145
    const/16 v0, 0x3c

    sput v0, Lcom/apptracker/android/track/AppTracker;->K:I

    .line 159
    sput-object v2, Lcom/apptracker/android/track/AppTracker;->E:Lcom/apptracker/android/module/AppModuleLoader;

    .line 237
    sput-object v2, Lcom/apptracker/android/track/AppTracker;->d:Lcom/apptracker/android/listener/AppModuleListener;

    .line 10
    sput-boolean v1, Lcom/apptracker/android/track/AppTracker;->A:Z

    .line 208
    const-string v0, ""

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->G:Ljava/lang/String;

    .line 5
    sput v1, Lcom/apptracker/android/track/AppTracker;->g:I

    .line 124
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apptracker/android/track/AppTracker;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic B(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "arg0"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1302
    .line 1171
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    const-string v0, "APTr"

    const-string v2, "=\u0007.\u0006\u000e\u0001,\u0007<\u0011o\u0007!\u0003-\u000e*\u0006"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1543
    if-eqz p0, :cond_4

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    :try_start_1
    new-instance v6, Lcom/apptracker/android/util/AppEncryption;

    const-string v2, "tiJ8e+8Fb^21xd|5"

    invoke-direct {v6, v2}, Lcom/apptracker/android/util/AppEncryption;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 1109
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    .line 664
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 763
    :goto_1
    const-string v1, "APTr"

    const-string v2, "\u001d\u0007.\u0006\n\u001a&\u0011;\u000b!\u0005\u000e\u0001;\u000b \u000c\t\u0010 \u000f\t\u000b#\u0007"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v1, "ActionData_"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->removeData(Ljava/lang/String;)Z

    move-object v1, v0

    .line 1153
    :cond_0
    :goto_2
    return-object v1

    .line 970
    :cond_1
    :try_start_3
    invoke-virtual {v6, v2}, Lcom/apptracker/android/util/AppEncryption;->decrypt128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 684
    const-string v7, "=;+;="

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 644
    if-lez v7, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1478
    const-string v8, "=;+;="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 795
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1303
    sub-long v8, v4, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 807
    const-wide/32 v10, 0x1baf80

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    .line 1313
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    const-string v7, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u001a\u000e?\u00035\r{\u000b8\u001e2\u00055J=\u00184\u0007{\u000c2\u0006>P{"

    invoke-static {v9}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    :cond_2
    :goto_3
    const-string v7, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u0017\u00035\u000f{G{"

    invoke-static {v9}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 623
    goto :goto_0

    .line 1214
    :cond_3
    const-string v7, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\'=\u0010 \u0010o\u0010*\u000f \u0014&\u000c(B;\n*B;\u000b\"\u0007<\u0016.\u000f?B)\u0010 \u000fo\u0003,\u0016&\r!B+\u0003;\u0003uB"

    invoke-static {v9}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 623
    :catch_0
    move-exception v2

    .line 996
    :try_start_4
    const-string v7, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\'=\u0010 \u0010o\u0015&\u0016\'B+\u0007,\u00106\u0012;\u000b!\u0005o\u0003,\u0016&\r!B)\u0010 \u000fo\u0004&\u000e*BbB"

    invoke-static {v9}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v3

    .line 1109
    goto/16 :goto_0

    .line 1151
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 1188
    :goto_4
    :try_start_5
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u001e\u0018)\u0005)J,\u0003/\u0002{\u0018>\u000b?\u00035\r{\'4\u000e.\u0006>J:\t/\u00034\u0004{\u000c)\u00056J=\u00037\u000f{G{"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const-string v3, "APTr"

    invoke-static {v3, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 664
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 1164
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 1210
    :catchall_0
    move-exception v0

    move-object v3, v1

    .line 664
    :goto_5
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1049
    :goto_6
    throw v0

    .line 1164
    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto/16 :goto_1

    .line 1210
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 1151
    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private static synthetic B()V
    .locals 1

    .prologue
    .line 972
    const-string v0, "\'=\u0010 \u0010o\u0015=\u000b;\u000b!\u0005o\r)\u0004#\u000b!\u0007o\u0006.\u0016.B;\ro\u000b!\u0016*\u0010!\u0003#B<\u0016 \u0010.\u0005*L"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method private static synthetic B(Landroid/content/Context;)V
    .locals 4
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 751
    sget-boolean v0, Lcom/apptracker/android/track/AppTracker;->m:Z

    if-nez v0, :cond_1

    .line 1333
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apptracker/android/track/AppTracker;->m:Z

    .line 1386
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1102
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 857
    :cond_0
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 1061
    const-string v0, "APTr"

    const-string v1, "\u001c\u00052\u0004<J/\u0005{9\"\u00048J8\u0018:\u00193J)\u000f+\u0005)\u001e("

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->M()Lorg/json/JSONArray;

    move-result-object v0

    .line 1518
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1098
    sget-object v1, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    sget-object v2, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    new-instance v3, Lcom/apptracker/android/track/AppTracker$4;

    invoke-direct {v3}, Lcom/apptracker/android/track/AppTracker$4;-><init>()V

    invoke-static {v1, v2, v0, v3}, Lcom/apptracker/android/request/AppRequest;->crashReport(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/apptracker/android/listener/AppListener;)V

    .line 974
    :cond_1
    :goto_0
    return-void

    .line 1371
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apptracker/android/track/AppTracker;->m:Z

    goto :goto_0
.end method

.method static synthetic B(Z)V
    .locals 0
    .param p0, "arg0"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/apptracker/android/track/AppTracker;->D:Z

    return-void
.end method

.method private static synthetic F()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v0, 0x0

    .line 347
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 324
    const-string v3, "%\u000f"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 563
    cmp-long v3, v6, v0

    if-nez v3, :cond_0

    .line 1474
    :goto_0
    return-wide v0

    .line 293
    :cond_0
    const-string v3, "\u001f6"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 539
    const-string v3, "8\u000f"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 376
    sub-long/2addr v0, v8

    div-long/2addr v0, v10

    .line 723
    sub-long v2, v4, v6

    div-long/2addr v2, v10

    sub-long v0, v2, v0

    .line 1474
    goto :goto_0
.end method

.method private static synthetic G(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "arg0"    # Ljava/io/File;
    .param p1, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 867
    if-eqz v3, :cond_0

    array-length v0, v3

    if-lez v0, :cond_0

    .line 1505
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v0, v4, :cond_1

    .line 1491
    :cond_0
    return-object v2

    .line 1505
    :cond_1
    aget-object v0, v3, v1

    .line 1156
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1535
    invoke-static {v0, p1}, Lcom/apptracker/android/track/AppTracker;->G(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1505
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1280
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1507
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static synthetic G(Ljava/io/File;)Lorg/json/JSONArray;
    .locals 8
    .param p0, "arg0"    # Ljava/io/File;

    .prologue
    .line 1315
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 893
    const-string v0, "u\u0019/\u000b8\u0001/\u0018:\t>"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/apptracker/android/track/AppTracker;->G(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 853
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    :cond_0
    return-object v4

    .line 1416
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1130
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 944
    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 1310
    const-string v5, "APTr"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u0003\u0003<\u0016o/ \u0006&\u0004&\u0007+BrB"

    invoke-static {v7}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    if-eqz v0, :cond_4

    const-wide/32 v6, 0x1baf80

    cmp-long v2, v2, v6

    if-gtz v2, :cond_4

    .line 1205
    const/4 v3, 0x0

    .line 1410
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 1439
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-nez v0, :cond_2

    .line 995
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 1269
    goto :goto_0

    .line 1319
    :cond_2
    :try_start_3
    const-string v3, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u0017\u00035\u000f{/5\t{G{"

    invoke-static {v6}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string v3, "tiJ8e+8Fb^21xd|5"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/apptracker/android/util/AppEncryption;->decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    const-string v3, "+=+=+=+="

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 653
    array-length v3, v0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    .line 810
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1276
    const-string v5, ";\u0011"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1194
    const-string v5, "?"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 869
    const-string v5, "\u0016"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1124
    const-string v5, "(\u0003?"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v0, v0, v6

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1466
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    move-object v0, v2

    .line 1439
    goto :goto_1

    .line 1479
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 995
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 1269
    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 700
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 995
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1282
    :goto_4
    throw v0

    .line 1269
    :catch_2
    move-exception v0

    :cond_4
    move-object v0, v1

    .line 1416
    goto/16 :goto_0

    .line 1269
    :catch_3
    move-exception v1

    goto :goto_4

    .line 700
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1479
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method static synthetic G(Landroid/content/Context;)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 1209
    invoke-static {p0}, Lcom/apptracker/android/track/AppTracker;->B(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic G(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # F
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Ljava/lang/String;
    .param p5, "arg5"    # Ljava/lang/String;
    .param p6, "arg6"    # Z

    .prologue
    .line 370
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 373
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 596
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 524
    :cond_0
    if-nez p6, :cond_1

    sget v0, Lcom/apptracker/android/track/AppTracker;->K:I

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->d:Lcom/apptracker/android/request/AppRequest$TYPE;

    sget-object v3, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->d()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->F()J

    move-result-wide v12

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->L()J

    move-result-wide v14

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v1 .. v15}, Lcom/apptracker/android/request/AppRequest;->request(Landroid/content/Context;Lcom/apptracker/android/request/AppRequest$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 338
    :goto_0
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 458
    const-string v1, "&\u000f"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 517
    return-void

    .line 302
    :cond_2
    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->F()J

    move-result-wide v8

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->L()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v11}, Lcom/apptracker/android/track/AppTracker;->G(Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method private static synthetic G(Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 18
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # F
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # I
    .param p4, "arg4"    # Ljava/lang/String;
    .param p5, "arg5"    # Ljava/lang/String;
    .param p6, "arg6"    # Ljava/lang/String;
    .param p7, "arg7"    # Ljava/lang/String;
    .param p8, "arg8"    # J
    .param p10, "arg9"    # J

    .prologue
    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppData_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 926
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1495
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    .line 877
    const-string v3, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1312
    const-string v3, "{"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 903
    :cond_0
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1363
    const-string v3, "B"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 1438
    :cond_1
    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 831
    const-string v3, "{"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 1523
    :cond_2
    const-string v3, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1452
    const-string v3, "B"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 953
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1215
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 953
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1021
    const-string v2, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ")4\u0004/\u000f5\u001e{G{"

    invoke-static {v6}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v2, ""

    .line 1267
    :try_start_0
    const-string v5, "tiJ8e+8Fb^21xd|5"

    invoke-static {v5, v3}, Lcom/apptracker/android/util/AppEncryption;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 947
    :goto_0
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "`#?\u0012\u000b\u0003;\u0003`M"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "t"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1131
    const-string v5, "APTr"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u0011.\u0014*\u0012.\u0016\'BrB"

    invoke-static {v7}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-static {v4, v2, v3}, Lcom/apptracker/android/track/AppTracker;->saveFileWithContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 683
    sget-object v3, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    sget-object v4, Lcom/apptracker/android/request/AppRequest$TYPE;->d:Lcom/apptracker/android/request/AppRequest$TYPE;

    sget-object v5, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    move-object/from16 v6, p4

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    invoke-static/range {v3 .. v17}, Lcom/apptracker/android/request/AppRequest;->request(Landroid/content/Context;Lcom/apptracker/android/request/AppRequest$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 961
    :cond_4
    return-void

    .line 622
    :catch_0
    move-exception v3

    move-object v3, v2

    .line 947
    goto :goto_0
.end method

.method static synthetic G(Z)V
    .locals 0
    .param p0, "arg0"    # Z

    .prologue
    .line 252
    sput-boolean p0, Lcom/apptracker/android/track/AppTracker;->m:Z

    return-void
.end method

.method private static synthetic G()Z
    .locals 3

    .prologue
    .line 1480
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1352
    const-string v1, "5"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static synthetic G(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 1244
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1106
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic I()Z
    .locals 3

    .prologue
    .line 868
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1065
    const-string v1, "+"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic J()V
    .locals 0

    .prologue
    .line 1263
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->K()V

    return-void
.end method

.method private static synthetic K()V
    .locals 4

    .prologue
    .line 782
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6\u0005.\u0004/\u000f?"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 686
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1287
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/AppData/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1567
    const/4 v1, 0x0

    .line 744
    if-eqz v0, :cond_4

    .line 1090
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1234
    const-string v1, "u\u0019/\u000b8\u0001/\u0018:\t>"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/track/AppTracker;->G(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 764
    :goto_1
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1005
    const-string v2, "L<\u0016.\u0001$\u0016=\u0003,\u0007"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/track/AppTracker;->G(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1357
    if-nez v0, :cond_2

    move-object v0, v1

    .line 1444
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 728
    :cond_0
    return-void

    .line 686
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1570
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v0

    goto :goto_2

    .line 1152
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 650
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 611
    goto :goto_3

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1152
    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private static synthetic L()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v0, 0x0

    .line 390
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 399
    const-string v3, "\u00036"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 275
    cmp-long v3, v6, v0

    if-nez v3, :cond_0

    .line 492
    :goto_0
    return-wide v0

    .line 554
    :cond_0
    const-string v3, ":\u000f"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 329
    const-string v3, "\u001d6"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 510
    sub-long/2addr v0, v8

    div-long/2addr v0, v10

    .line 472
    sub-long v2, v4, v6

    div-long/2addr v2, v10

    sub-long v0, v2, v0

    .line 492
    goto :goto_0
.end method

.method private static synthetic M()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 785
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u000f \u0017!\u0016*\u0006"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 682
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1123
    :goto_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1554
    if-eqz v0, :cond_0

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "E\u001a\u001a+.:\u001e:Et"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "M"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 874
    invoke-static {v2}, Lcom/apptracker/android/track/AppTracker;->G(Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1580
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1182
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 919
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "E\u001a\u001a+.:\u001e:Et"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "M"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1368
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1502
    invoke-static {v2}, Lcom/apptracker/android/track/AppTracker;->G(Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1001
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 929
    :cond_1
    return-object v1

    .line 682
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic a()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 1383
    const-string v0, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-4\u00035\r{\u001e4J2\u00042\u001e2\u000b7\u0003!\u000f{G{"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const-string v2, "\u0003!\u0006=\r&\u0006a\u0012*\u0010\"\u000b<\u0011&\r!L\u0006,\u001b\'\u001d,\n6"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const-string v2, ":\u0004?\u00184\u0003?D+\u000f)\u00072\u0019(\u00034\u0004u+\u0018)\u001e9\u00085\u0015/\u000f=\u00148\u00105\u0008>\u001a>\u001e"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/apptracker/android/track/AppTracker;->f:Z

    .line 1427
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const-string v2, "\u0003!\u0006=\r&\u0006a\u0012*\u0010\"\u000b<\u0011&\r!L\u00180\u00066\n=\n:\u001b\'\u001d,\u000e.\u00101\u001b-\u001d#\u0008\'"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/apptracker/android/track/AppTracker;->H:Z

    .line 1583
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const-string v2, "\u000b5\u000e)\u00052\u000eu\u001a>\u00186\u0003(\u00192\u00055D\t/\u001a.\u0004/\u0003>\u001e8\u0015+\u00175\u0008>\u00148\u001a-\u001e"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    :goto_2
    sput-boolean v1, Lcom/apptracker/android/track/AppTracker;->M:Z

    .line 901
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1373
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const-string v1, "\u000e2\u001f$\u00060\n5\u00000\u00041"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->b:Landroid/content/SharedPreferences;

    .line 1226
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    .line 614
    :cond_0
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 904
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    .line 954
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "\u000b5\u000e)\u00052\u000e\u0004\u0003?"

    invoke-static {v6}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1027
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/apptracker/android/util/AppEncryption;->sha1([B)Ljava/lang/String;

    move-result-object v3

    .line 685
    sget-object v2, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    const-string v6, "1\u0006&"

    invoke-static {v6}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1245
    sget-object v2, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    const-string v6, "%\u000f"

    invoke-static {v6}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1563
    sget-object v2, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    const-string v6, "\u00036"

    invoke-static {v6}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 776
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    const-string v1, ":\u000f"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 627
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    const-string v1, "\u001d6"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1230
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    const-string v1, "\u001a"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 708
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    const-string v1, "0"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/apptracker/android/track/AppTracker;->M:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 885
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    const-string v1, "\u000c"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/apptracker/android/track/AppTracker;->H:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 666
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    const-string v1, "+"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/apptracker/android/track/AppTracker;->f:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1231
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1406
    sget-boolean v0, Lcom/apptracker/android/track/AppTracker;->j:Z

    if-eqz v0, :cond_2

    .line 914
    new-instance v0, Lcom/apptracker/android/util/AppExceptionHandler;

    sget-object v1, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    sget-object v2, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/apptracker/android/util/AppExceptionHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 884
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1031
    :cond_2
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->b:Landroid/content/SharedPreferences;

    const-string v1, "2\u0004(\u001e:\u00067\u000f?"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "R"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1532
    const-string v1, "k"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1330
    const-string v0, "APTr"

    const-string v1, "% \u000b!\u0005o\u0016 B)\u000b=\u0007o+!\u0011;\u0003#\u000eo\u0012&\u001a*\u000e"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1279
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 945
    const-string v2, "5"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "install"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1572
    const-string v2, "\u0014"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1111
    const-string v2, "\u001e("

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 949
    const-string v2, "\u0016<\r"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1526
    const-string v2, "/\u00197"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 872
    const-string v2, "\u0011&\u0006"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1062
    const-string v2, "\t-"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 951
    const-string v2, "\u0005"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1546
    const-string v2, "8"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    const-string v2, ",\u0016"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1566
    const-string v2, ")"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1557
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 663
    sget-object v1, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    sget-object v2, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    new-instance v6, Lcom/apptracker/android/track/AppTracker$1;

    invoke-direct {v6}, Lcom/apptracker/android/track/AppTracker$1;-><init>()V

    invoke-static {v1, v2, v0, v6}, Lcom/apptracker/android/request/AppRequest;->install(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/apptracker/android/listener/AppListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_3
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    const-string v1, "\u000b!\u0011;\u0003#\u000e*\u0006"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "j"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1431
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1192
    :cond_3
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->sync(Landroid/content/Context;)V

    .line 859
    sget v0, Lcom/apptracker/android/track/AppTracker;->K:I

    if-lez v0, :cond_4

    .line 609
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->k()V

    .line 1002
    :cond_4
    sget-boolean v0, Lcom/apptracker/android/track/AppTracker;->A:Z

    if-eqz v0, :cond_5

    .line 880
    sput-boolean v8, Lcom/apptracker/android/track/AppTracker;->A:Z

    .line 896
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const-string v1, "welcome"

    invoke-static {v0, v1}, Lcom/apptracker/android/track/AppTracker;->loadModule(Landroid/content/Context;Ljava/lang/String;)V

    .line 1140
    :cond_5
    new-instance v0, Lcom/apptracker/android/re/AppReController;

    sget-object v1, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/apptracker/android/re/AppReController;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 1531
    invoke-virtual {v0}, Lcom/apptracker/android/re/AppReController;->loadReEngagement()V

    .line 1120
    sput-object v1, Lcom/apptracker/android/track/AppTracker;->G:Ljava/lang/String;

    .line 1181
    return-void

    :cond_6
    move v0, v8

    .line 1592
    goto/16 :goto_0

    :cond_7
    move v0, v8

    .line 1427
    goto/16 :goto_1

    :cond_8
    move v1, v8

    .line 1583
    goto/16 :goto_2

    .line 667
    :catch_0
    move-exception v0

    .line 994
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    sget-object v1, Lcom/apptracker/android/request/AppRequest$TYPE;->k:Lcom/apptracker/android/request/AppRequest$TYPE;

    sget-object v2, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    move-wide v6, v4

    invoke-static/range {v0 .. v7}, Lcom/apptracker/android/request/AppRequest;->request(Landroid/content/Context;Lcom/apptracker/android/request/AppRequest$TYPE;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_3
.end method

.method private static synthetic b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 787
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 739
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const-string v1, "+\u000b:\u001d#\t/\u000c%\t!\u0008"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->b:Landroid/content/SharedPreferences;

    .line 815
    :cond_0
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static synthetic c()Z
    .locals 3

    .prologue
    .line 645
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1243
    const-string v1, "0"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static closeSession(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Z

    .prologue
    .line 155
    const-string v0, "\u001c\u0007<\u0011&\r!B*\u000c+\u0007+L"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/apptracker/android/track/AppTracker;->closeSession(Landroid/content/Context;ZZ)V

    .line 204
    return-void
.end method

.method public static closeSession(Landroid/content/Context;ZZ)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Z
    .param p2, "arg2"    # Z

    .prologue
    .line 11
    const-string v0, "9>\u0019(\u00034\u0004{\u000f5\u000e>\u000eu"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 102
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 131
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 534
    :cond_0
    if-eqz p1, :cond_1

    .line 368
    invoke-static {p0}, Lcom/apptracker/android/track/AppTracker;->sync(Landroid/content/Context;)V

    .line 425
    :cond_1
    return-void
.end method

.method public static crashReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    .line 1238
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 794
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1309
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 906
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1548
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 976
    :try_start_0
    const-string v3, "\u001e("

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 618
    const-string v2, "\u0006"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 908
    const-string v2, "/"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1232
    const-string v2, "\u0011&\u0006"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 702
    sget-object v1, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    sget-object v2, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/apptracker/android/request/AppRequest;->crashReport(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/apptracker/android/listener/AppListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static synthetic d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 891
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1178
    const-string v1, "1\u0006&"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static destroyModule()V
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->E:Lcom/apptracker/android/module/AppModuleLoader;

    if-eqz v0, :cond_0

    .line 548
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->E:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppModuleLoader;->destroyModule()V

    .line 480
    const/4 v0, 0x0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->E:Lcom/apptracker/android/module/AppModuleLoader;

    .line 519
    :cond_0
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 574
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 272
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # F

    .prologue
    .line 438
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Z)V

    .line 292
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # F
    .param p3, "arg3"    # Ljava/lang/String;

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Z)V

    .line 461
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 16
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # F
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Z

    .prologue
    .line 375
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 311
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 287
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 331
    :cond_0
    if-nez p4, :cond_1

    sget v0, Lcom/apptracker/android/track/AppTracker;->K:I

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->d:Lcom/apptracker/android/request/AppRequest$TYPE;

    sget-object v3, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const-string v7, ""

    const-string v11, ""

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->F()J

    move-result-wide v12

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->L()J

    move-result-wide v14

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p3

    move-object v10, v7

    invoke-static/range {v1 .. v15}, Lcom/apptracker/android/request/AppRequest;->request(Landroid/content/Context;Lcom/apptracker/android/request/AppRequest$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 407
    :goto_0
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    const-string v1, "&\u000f"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    return-void

    .line 470
    :cond_2
    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->F()J

    move-result-wide v8

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->L()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v5, p3

    move-object v7, v6

    invoke-static/range {v0 .. v11}, Lcom/apptracker/android/track/AppTracker;->G(Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;FZ)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # F
    .param p3, "arg3"    # Z

    .prologue
    .line 301
    const-string v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Z)V

    .line 286
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # I

    .prologue
    .line 544
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 396
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # I
    .param p3, "arg3"    # Ljava/lang/String;

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 420
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 16
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # I
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Z

    .prologue
    .line 262
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 389
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 345
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 537
    :cond_0
    if-nez p4, :cond_1

    sget v0, Lcom/apptracker/android/track/AppTracker;->K:I

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->d:Lcom/apptracker/android/request/AppRequest$TYPE;

    sget-object v3, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, ""

    const-string v11, ""

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->F()J

    move-result-wide v12

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->L()J

    move-result-wide v14

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object v10, v7

    invoke-static/range {v1 .. v15}, Lcom/apptracker/android/request/AppRequest;->request(Landroid/content/Context;Lcom/apptracker/android/request/AppRequest$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 469
    :goto_0
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    const-string v1, "&\u000f"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 540
    return-void

    .line 443
    :cond_2
    const/4 v1, 0x0

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->d()Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    const-string v6, ""

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->F()J

    move-result-wide v8

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->L()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v3, p2

    move-object v5, v2

    move-object v7, v6

    invoke-static/range {v0 .. v11}, Lcom/apptracker/android/track/AppTracker;->G(Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # I
    .param p3, "arg3"    # Z

    .prologue
    .line 547
    const-string v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 317
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    .line 584
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 552
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 454
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Z

    .prologue
    .line 535
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 334
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 449
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 424
    :cond_0
    if-nez p4, :cond_1

    sget v0, Lcom/apptracker/android/track/AppTracker;->K:I

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->d:Lcom/apptracker/android/request/AppRequest$TYPE;

    sget-object v3, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v10, ""

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->F()J

    move-result-wide v12

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->L()J

    move-result-wide v14

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object v11, v10

    invoke-static/range {v1 .. v15}, Lcom/apptracker/android/request/AppRequest;->request(Landroid/content/Context;Lcom/apptracker/android/request/AppRequest$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 328
    :goto_0
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 371
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 435
    const-string v1, "&\u000f"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 374
    return-void

    .line 430
    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->F()J

    move-result-wide v8

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->L()J

    move-result-wide v10

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v0 .. v11}, Lcom/apptracker/android/track/AppTracker;->G(Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Z

    .prologue
    .line 486
    const-string v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 485
    return-void
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Z

    .prologue
    .line 543
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p0, p1, v0, v1, p2}, Lcom/apptracker/android/track/AppTracker;->event(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 333
    return-void
.end method

.method public static fixAdOrientation(I)V
    .locals 0
    .param p0, "arg0"    # I

    .prologue
    .line 1488
    sput p0, Lcom/apptracker/android/track/AppTracker;->g:I

    .line 661
    return-void
.end method

.method public static getAdOrientation()I
    .locals 1

    .prologue
    .line 930
    sget v0, Lcom/apptracker/android/track/AppTracker;->g:I

    return v0
.end method

.method public static getApiKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1057
    :try_start_0
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 630
    const-string v0, "APTr"

    const-string v1, "(\u0007;#?\u000b\u0004\u00076JfB!\u0017#\u000ecB=\u0007.\u0006o\u0004=\r\"B?\u0010*\u0004*\u0010*\u000c,\u0007"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1097
    const-string v1, "\u001a"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 873
    :cond_0
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 1213
    :catch_0
    move-exception v0

    .line 735
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSessionStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1064
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->G:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic h()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 959
    :try_start_0
    sget-object v2, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 955
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 1317
    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_0
    if-lt v2, v5, :cond_1

    move v0, v1

    .line 1268
    :cond_0
    :goto_1
    return v0

    .line 1317
    :cond_1
    aget-object v2, v4, v3

    .line 1457
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "com.apptracker.android.module.AppModuleActivity"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 1317
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 1407
    :catch_0
    move-exception v0

    move v0, v1

    .line 1169
    goto :goto_1
.end method

.method public static isAdReady(Ljava/lang/String;)Z
    .locals 1
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 1389
    invoke-static {p0}, Lcom/apptracker/android/module/AppModuleCache;->getAvailableAdFromCache(Ljava/lang/String;)Lcom/apptracker/android/module/AppAd;

    move-result-object v0

    .line 950
    if-eqz v0, :cond_0

    .line 820
    const/4 v0, 0x1

    .line 894
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInternetAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1339
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    const-string v0, ",\r!\u000c*\u0001;\u000b9\u000b;\u001b"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1286
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1344
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 925
    goto :goto_0
.end method

.method private static synthetic k()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1273
    sget v0, Lcom/apptracker/android/track/AppTracker;->K:I

    .line 1370
    if-lez v0, :cond_0

    .line 1227
    const/16 v0, 0x3c

    move v4, v0

    .line 1331
    :goto_0
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const-string v2, "\u0003#\u0003=\u000f"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1204
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const-class v5, Lcom/apptracker/android/track/AppAutoReceiver;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1283
    const-string v3, "\u000b+\u00030\u000f\""

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    sget-object v3, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v3, v1, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x1d4c0

    add-long/2addr v2, v8

    .line 1011
    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    const-string v7, "APTr"

    .line 720
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u001d\u0007,\u0007&\u0014*\u0010o\u0011*\u0016o\u0016 B(\ro\r)\u0004o\u0003;B"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wJ)\u000f+\u000f:\u001e\u000f\u00036\u000f{W{"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    return-void

    :cond_0
    move v4, v0

    goto :goto_0
.end method

.method static synthetic l()Landroid/content/Context;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    return-object v0
.end method

.method public static loadModule(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/apptracker/android/track/AppTracker;->loadModule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public static loadModule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&4\u000b?\u00035\r{\u00074\u000e.\u0006>J=\u0005)J7\u00058\u000b/\u00034\u0004a"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 360
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 339
    :cond_0
    const-string v0, "#\u001f+o)*\u001bo\u000c \u0016o\u0004 \u0017!\u0006aB\u001f\u000e*\u0003<\u0007o\u0010:\u000co\u0011;\u0003=\u0016\u001c\u0007<\u0011&\r!B-\u0007)\r=\u0007o\u0001.\u000e#\u000b!\u0005o\u000e \u0003+/ \u0006:\u000e*L"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    .line 556
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-static {}, Lcom/apptracker/android/module/AppModuleLoader;->isModuleVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    const-string v0, "\u0016\u0005?\u001f7\u000f{\u0018>\u001b.\u000f(\u001e{\u000b7\u0018>\u000b?\u0013{\u00035J+\u00184\r)\u000f(\u0019u"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->uw(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_2
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 441
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->d:Lcom/apptracker/android/listener/AppModuleListener;

    if-eqz v0, :cond_3

    .line 488
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->d:Lcom/apptracker/android/listener/AppModuleListener;

    const-string v1, ".\u0001;\u000b9\u000b;\u001bo\u000c \u0016o\u0006*\u0004&\u000c*\u0006"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleFailed(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 484
    :cond_3
    const-string v0, "+8\u001e2\u001c2\u001e\"J8\u00056D:\u001a+\u001e)\u000b8\u0001>\u0018u\u000b5\u000e)\u00052\u000eu\u00074\u000e.\u0006>D\u001a\u001a+\'4\u000e.\u0006>+8\u001e2\u001c2\u001e\"J5\u0005/J=\u0005.\u0004?D{\":\u001c>J\"\u0005.J?\u000f8\u0006:\u0018>J2\u001e{\u00035J\"\u0005.\u0018{+5\u000e)\u00052\u000e\u0016\u000b5\u0003=\u000f(\u001eu\u00126\u0006d"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_4
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 569
    new-instance v0, Lcom/apptracker/android/module/AppModuleLoader;

    invoke-direct {v0}, Lcom/apptracker/android/module/AppModuleLoader;-><init>()V

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->E:Lcom/apptracker/android/module/AppModuleLoader;

    .line 587
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->d:Lcom/apptracker/android/listener/AppModuleListener;

    if-eqz v0, :cond_5

    .line 325
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->E:Lcom/apptracker/android/module/AppModuleLoader;

    sget-object v1, Lcom/apptracker/android/track/AppTracker;->d:Lcom/apptracker/android/listener/AppModuleListener;

    invoke-virtual {v0, v1}, Lcom/apptracker/android/module/AppModuleLoader;->setListener(Lcom/apptracker/android/listener/AppModuleListener;)V

    .line 327
    :cond_5
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->E:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-virtual {v0, p0, p1, p2}, Lcom/apptracker/android/module/AppModuleLoader;->loadingModule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadModuleToCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/apptracker/android/track/AppTracker;->loadModuleToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public static loadModuleToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ". \u0003+\u000b!\u0005o\u000f \u0006:\u000e*B8\u000b;\no\u0001.\u0001\'\u000b!\u0005o\u0007!\u0003-\u000e*\u0006o\u0004 \u0010o\u000e \u0001.\u0016&\r!X"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 300
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    const-string v0, "+\u000b#{!>\u0013{\u00044\u001e{\u000c4\u001f5\u000euJ\u000b\u0006>\u000b(\u000f{\u0018.\u0004{\u0019/\u000b)\u001e\u0008\u000f(\u00192\u00055J9\u000f=\u0005)\u000f{\t:\u00067\u00035\r{\u00064\u000b?\'4\u000e.\u0006>>4):\t3\u000fu"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void

    .line 273
    :cond_1
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 309
    new-instance v0, Lcom/apptracker/android/module/AppModuleLoader;

    invoke-direct {v0}, Lcom/apptracker/android/module/AppModuleLoader;-><init>()V

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->E:Lcom/apptracker/android/module/AppModuleLoader;

    .line 378
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->d:Lcom/apptracker/android/listener/AppModuleListener;

    if-eqz v0, :cond_2

    .line 365
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->E:Lcom/apptracker/android/module/AppModuleLoader;

    sget-object v1, Lcom/apptracker/android/track/AppTracker;->d:Lcom/apptracker/android/listener/AppModuleListener;

    invoke-virtual {v0, v1}, Lcom/apptracker/android/module/AppModuleLoader;->setListener(Lcom/apptracker/android/listener/AppModuleListener;)V

    .line 447
    :cond_2
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->E:Lcom/apptracker/android/module/AppModuleLoader;

    sget-object v1, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/apptracker/android/module/AppModuleLoader;->loadingModuleToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static synthetic m()V
    .locals 1

    .prologue
    .line 1173
    const-string v0, "\'=\u0010 \u0010o\u0015=\u000b;\u000b!\u0005o\r)\u0004#\u000b!\u0007o\u0006.\u0016.B;\ro\u00077\u0016*\u0010!\u0003#B<\u0016 \u0010.\u0005*L"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    .line 1299
    return-void
.end method

.method public static pause(Landroid/content/Context;)V
    .locals 4
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 582
    const-string v0, "\u0008\u000f(\u00192\u00055J+\u000b.\u0019>\u000eu"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 417
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 403
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 367
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 455
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 459
    const-string v1, "\u001f6"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 426
    return-void
.end method

.method public static readActionData()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1436
    const/4 v1, 0x0

    .line 1366
    const-string v0, "APTr"

    const-string v2, ")\u000f:\u000e\u001a\t/\u00034\u0004\u001f\u000b/\u000b{\t:\u00067\u000f?"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/AppData/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "M"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ActionData_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 679
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v4, "6\u0005.\u0004/\u000f?"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 834
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1433
    :goto_0
    const-string v4, "APTr"

    if-eqz v0, :cond_1

    .line 1540
    const-string v0, "=\u0007.\u0006\u000e\u0001;\u000b \u000c\u000b\u0003;\u0003o\u0001.\u000e#\u0007+BiB=\u0007.\u0006\u000e\u0001,\u0007<\u0011o\u0007!\u0003-\u000e*\u0006"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "(\u000b-\u000f+\u000b/\u0002{W{"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1046
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 845
    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->B(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1442
    :goto_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 821
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 722
    if-nez v0, :cond_2

    .line 905
    invoke-static {v2}, Lcom/apptracker/android/track/AppTracker;->B(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1486
    :goto_2
    return-object v0

    .line 834
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 712
    :cond_1
    const-string v0, "!\ro\u0010*\u0003+B.\u0001,\u0007<\u0011"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 1300
    :cond_2
    invoke-static {v2}, Lcom/apptracker/android/track/AppTracker;->B(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public static readData()Lorg/json/JSONArray;
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x6

    .line 724
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u000f \u0017!\u0016*\u0006"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 705
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1574
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppData_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1018
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1161
    if-eqz v0, :cond_4

    .line 1375
    const-string v0, "APTr"

    const-string v2, "\u0008.{):\u0018?J\u0016\u0005.\u0004/\u000f?J:\u0004?J)\u000f:\u000e{:>\u00186\u0003(\u00192\u00055J<\u0018:\u0004/\u000f?"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "`#?\u0012\u000b\u0003;\u0003`M"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "t"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u0011.\u0014*\u0012.\u0016\'BrB"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1471
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1432
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1257
    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 1025
    const-string v5, "APTr"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "&:\u0019/J\u0016\u0005?\u0003=\u0003>\u000e{W{"

    invoke-static {v7}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    if-eqz v0, :cond_4

    const-wide/32 v6, 0x1baf80

    cmp-long v2, v2, v6

    if-gtz v2, :cond_4

    .line 941
    const/4 v3, 0x0

    .line 775
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 1208
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 806
    const-string v0, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ")4\u0004/\u000f5\u001e{G{"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1564
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 1314
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 705
    goto/16 :goto_0

    .line 709
    :cond_1
    :try_start_3
    const-string v3, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ".&\u000c*B\n\u000c,BbB"

    invoke-static {v6}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v3, "tiJ8e+8Fb^21xd|5"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/apptracker/android/util/AppEncryption;->decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    const-string v3, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u0017\u00035\u000f{G{"

    invoke-static {v6}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v3, ":"

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1200
    array-length v3, v0

    if-lt v3, v8, :cond_3

    array-length v3, v0

    const/16 v5, 0xb

    if-gt v3, v5, :cond_3

    .line 1034
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1393
    const-string v5, "\u000c"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1428
    const-string v5, "\t-"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1101
    const-string v5, ";\u0011"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1560
    const-string v5, "/\u00194"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    const-string v5, "\u0016<\u000e"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 912
    const-string v5, "(\u0003?"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 668
    array-length v5, v0

    if-le v5, v8, :cond_2

    .line 1524
    const-string v5, "\u0005"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1419
    const-string v5, "-"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 940
    const-string v5, "\u0010"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1207
    const-string v5, "8"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1224
    const-string v5, ",\u0016"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    aget-object v0, v0, v6

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1426
    :cond_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    move-object v0, v2

    .line 1208
    goto/16 :goto_1

    .line 657
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1314
    goto/16 :goto_2

    .line 631
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 769
    :goto_3
    :try_start_4
    const-string v3, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\'=\u0010 \u0010o\u0015&\u0016\'B=\u0007.\u0006&\u000c(B)\u0010 \u000fo\u0004&\u000e*BbB"

    invoke-static {v6}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v3, "APTr"

    invoke-static {v3, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1564
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 958
    :cond_4
    :goto_4
    const/4 v2, 0x0

    .line 1382
    :try_start_6
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 1581
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v0

    .line 917
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v2

    if-nez v2, :cond_5

    .line 1275
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object v0, v1

    .line 1119
    goto/16 :goto_2

    .line 907
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 1564
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 898
    :goto_7
    throw v0

    .line 774
    :cond_5
    :try_start_a
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#5\u001e>\u00185\u000b7J\u0017\u00035\u000f{/5\t{G{"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v3, "tiJ8e+8Fb^21xd|5"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apptracker/android/util/AppEncryption;->decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1277
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0006\u000c;\u0007=\u000c.\u000eo.&\u000c*BbB"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string v3, ":"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1597
    array-length v3, v2

    if-lt v3, v8, :cond_7

    array-length v3, v2

    const/16 v4, 0xb

    if-gt v3, v4, :cond_7

    .line 1394
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 690
    const-string v4, "5"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    const-string v4, ",\u0014"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1126
    const-string v4, "\u001e("

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    const-string v4, "\u0016<\r"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1129
    const-string v4, "/\u00197"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 918
    const-string v4, "\u0011&\u0006"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1468
    array-length v4, v2

    if-le v4, v8, :cond_6

    .line 1037
    const-string v4, "<"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1434
    const-string v4, "\u0014"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1162
    const-string v4, ")"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 980
    const-string v4, "\u0001"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1396
    const-string v4, "\t/"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    aget-object v2, v2, v5

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1264
    :cond_6
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_7
    move-object v2, v0

    .line 917
    goto/16 :goto_5

    .line 1585
    :catch_2
    move-exception v0

    move-object v0, v2

    .line 1275
    :goto_8
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-object v0, v1

    .line 1119
    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2

    .line 966
    :catchall_1
    move-exception v0

    .line 1275
    :goto_9
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 855
    :goto_a
    throw v0

    .line 1119
    :catch_4
    move-exception v0

    move-object v0, v1

    .line 672
    goto/16 :goto_2

    .line 657
    :catch_5
    move-exception v0

    goto/16 :goto_4

    :catch_6
    move-exception v1

    goto/16 :goto_7

    .line 1119
    :catch_7
    move-exception v1

    goto :goto_a

    .line 966
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    .line 1585
    :catch_8
    move-exception v2

    goto :goto_8

    .line 907
    :catchall_3
    move-exception v0

    goto/16 :goto_6

    .line 631
    :catch_9
    move-exception v0

    goto/16 :goto_3
.end method

.method public static removeData(Ljava/lang/String;)Z
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1262
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u000f \u0017!\u0016*\u0006"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1289
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 717
    :goto_0
    if-eqz v1, :cond_1

    .line 1163
    const-string v0, "APTr"

    const-string v1, "\u0018>\u000b?.:\u001e:J8\u000b7\u0006>\u000e{L{\u0018>\u000b?+8\t>\u0019(J>\u0004:\u00087\u000f?"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "`#?\u0012\u000b\u0003;\u0003`M"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0011.\u0014*\u0012.\u0016\'BrB"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 788
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1154
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 1289
    goto :goto_0

    .line 1223
    :cond_1
    :try_start_0
    sget-object v1, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 1255
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 875
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 1429
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static resume(Landroid/content/Context;)V
    .locals 4
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 445
    const-string v0, "9>\u0019(\u00034\u0004{\u0018>\u0019.\u0007>\u000eu"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 572
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 361
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 387
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 377
    const-string v1, "\u001d6"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    return-void
.end method

.method public static saveFileWithContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1081
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6\u0005.\u0004/\u000f?"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1420
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->G()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 836
    :goto_0
    if-eqz v2, :cond_2

    .line 1183
    const-string v2, "APTr"

    const-string v3, "\u001c&o!.\u0010+B\u0002\r:\u000c;\u0007+B.\u000c+B\u001f\u0007=\u000f&\u0011<\u000b \u000co%=\u0003!\u0016*\u0006"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1080
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1108
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 986
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 1070
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1565
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    :try_start_2
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 927
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 1420
    goto :goto_0

    .line 697
    :catch_0
    move-exception v2

    .line 981
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 975
    :catch_1
    move-exception v2

    .line 1063
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->m()V

    .line 876
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u001e\u0018)\u0005)J,\u0003/\u0002{\u001d)\u0003/\u00035\r{\u000e:\u001e:J/\u0005{\u000f#\u001e>\u00185\u000b7J=\u00037\u000f{G{"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const-string v3, "APTr"

    invoke-static {v3, v2}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 796
    :cond_2
    :try_start_3
    sget-object v2, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const v3, 0x8000

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    .line 838
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "h"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 816
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 1350
    :catch_2
    move-exception v0

    .line 791
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->B()V

    .line 1139
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u001e\u0018)\u0005)J,\u0003/\u0002{\u001d)\u0003/\u00035\r{\u000e:\u001e:J/\u0005{\u00035\u001e>\u00185\u000b7J=\u00037\u000f{G{"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v2, "APTr"

    invoke-static {v2, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    .line 927
    goto :goto_1

    .line 1476
    :catchall_0
    move-exception v2

    .line 981
    :try_start_6
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 1040
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1342
    :catch_3
    move-exception v3

    .line 816
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1

    .line 767
    :catchall_1
    move-exception v0

    .line 816
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1054
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 113
    if-eqz p0, :cond_0

    .line 72
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 133
    :cond_0
    return-void
.end method

.method public static setCrashHandlerStatus(Z)V
    .locals 0
    .param p0, "arg0"    # Z

    .prologue
    .line 942
    sput-boolean p0, Lcom/apptracker/android/track/AppTracker;->j:Z

    .line 675
    return-void
.end method

.method public static setModuleListener(Lcom/apptracker/android/listener/AppModuleListener;)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/listener/AppModuleListener;

    .prologue
    .line 203
    if-eqz p0, :cond_0

    .line 37
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->d:Lcom/apptracker/android/listener/AppModuleListener;

    .line 117
    :cond_0
    return-void
.end method

.method public static setSessionStore(Ljava/lang/String;)V
    .locals 0
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 699
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->G:Ljava/lang/String;

    .line 1079
    return-void
.end method

.method public static startSession(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Landroid/app/Activity;
    .param p1, "arg1"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    const-string v0, "AppTracker"

    const-string v1, "#?\u0012\u001b\u0010.\u0001$\u0007=Xo\u0016\'\u000b<B\"\u0007;\n \u0006o\u000b<B!\r8B+\u0007?\u0010*\u0001.\u0016*\u0006"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public static startSession(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .param p0, "arg0"    # Landroid/app/Activity;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 251
    const-string v0, "AppTracker"

    const-string v1, "\u001a\u001a+>)\u000b8\u0001>\u0018aJ/\u00022\u0019{\u0007>\u001e3\u0005?J2\u0019{\u00044\u001d{\u000e>\u001a)\u000f8\u000b/\u000f?"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public static startSession(Landroid/app/Activity;Ljava/lang/String;Lcom/apptracker/android/listener/AppModuleListener;)V
    .locals 2
    .param p0, "arg0"    # Landroid/app/Activity;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Lcom/apptracker/android/listener/AppModuleListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    const-string v0, "AppTracker"

    const-string v1, "\u001a\u001a+>)\u000b8\u0001>\u0018aJ/\u00022\u0019{\u0007>\u001e3\u0005?J2\u0019{\u00044\u001d{\u000e>\u001a)\u000f8\u000b/\u000f?"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public static startSession(Landroid/app/Activity;Ljava/lang/String;Lcom/apptracker/android/listener/AppModuleListener;I)V
    .locals 2
    .param p0, "arg0"    # Landroid/app/Activity;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Lcom/apptracker/android/listener/AppModuleListener;
    .param p3, "arg3"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    const-string v0, "AppTracker"

    const-string v1, "#?\u0012\u001b\u0010.\u0001$\u0007=Xo\u0016\'\u000b<B\"\u0007;\n \u0006o\u000b<B!\r8B+\u0007?\u0010*\u0001.\u0016*\u0006"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public static startSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/apptracker/android/track/AppTracker;->startSession(Landroid/content/Context;Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public static startSession(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # I

    .prologue
    const-string v0, "1*\u0011<\u000b \u000co\u0011;\u0003=\u0016*\u0006aB\u001c&\u0004B\u0019\u0007=\u0011&\r!B&\u000co\u0017<\u0007oWaP"

    .line 244
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 106
    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ui(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "+8\u001e2\u001c2\u001e\"J8\u00056D:\u001a+\u001e)\u000b8\u0001>\u0018u\u000b5\u000e)\u00052\u000eu\u00074\u000e.\u0006>D\u001a\u001a+\'4\u000e.\u0006>+8\u001e2\u001c2\u001e\"J5\u0005/J=\u0005.\u0004?D{\":\u001c>J\"\u0005.J?\u000f8\u0006:\u0018>J2\u001e{\u00035J\"\u0005.\u0018{+5\u000e)\u00052\u000e\u0016\u000b5\u0003=\u000f(\u001eu\u00126\u0006d"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string v0, "\u0003!\u0006=\r&\u0006a\u0012*\u0010\"\u000b<\u0011&\r!L\u0006,\u001b\'\u001d,\n6"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/apptracker/android/track/AppTracker;->G(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    const-string v0, "\u0016\u0003(\u00192\u0004<J2\u0004/\u000f)\u0004>\u001e{\u001a>\u00186\u0003(\u00192\u00055J2\u0004{+5\u000e)\u00052\u000e\u0016\u000b5\u0003=\u000f(\u001eu\u00126\u0006uJ\u0002\u0005.J6\u001f(\u001e{\u0002:\u001c>J/\u0002>J=\u00057\u00064\u001d2\u0004<J?\u000f8\u0006:\u0018:\u001e2\u00055P{V.\u0019>\u0019v\u001a>\u00186\u0003(\u00192\u00055J:\u0004?\u00184\u0003?P5\u000b6\u000ffH:\u0004?\u00184\u0003?D+\u000f)\u00072\u0019(\u00034\u0004u#\u0015>\u001e8\u0015/\u000fH{Ee"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    .line 160
    :cond_1
    const-string v0, "\u0003!\u0006=\r&\u0006a\u0012*\u0010\"\u000b<\u0011&\r!L\u000e!\u000c\'\u001c1\u0010,\n6\u0018-\u001d)\u00101\u001b#\u001b\'"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/apptracker/android/track/AppTracker;->G(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    const-string v0, "\'2\u0019(\u00035\r{\u0004>\u001e,\u0005)\u0001{\u0019/\u000b/\u000f{\u001a>\u00186\u0003(\u00192\u00055J2\u0004{+5\u000e)\u00052\u000e\u0016\u000b5\u0003=\u000f(\u001eu\u00126\u0006uJ\u0002\u0005.J6\u001f(\u001e{\u0002:\u001c>J/\u0002>J=\u00057\u00064\u001d2\u0004<J?\u000f8\u0006:\u0018:\u001e2\u00055P{V.\u0019>\u0019v\u001a>\u00186\u0003(\u00192\u00055J:\u0004?\u00184\u0003?P5\u000b6\u000ffH:\u0004?\u00184\u0003?D+\u000f)\u00072\u0019(\u00034\u0004u+\u0018)\u001e9\u00085\u0015/\u000f=\u00148\u00105\u0008>\u001a>\u001eH{Ee"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    .line 164
    :cond_2
    sget-object v0, Lcom/apptracker/android/track/AppTracker;->d:Lcom/apptracker/android/listener/AppModuleListener;

    if-nez v0, :cond_3

    .line 167
    const-string v0, "\'9\u0007!\u0016o\u000e&\u0011;\u0007!\u0007=B&\u0011o\u000c \u0016o\u000b\"\u0012#\u0007\"\u0007!\u0016*\u0006o\u0000*\u0004 \u0010*B<\u0016.\u0010;1*\u0011<\u000b \u000co\u0005*\u0016o\u0001.\u000e#\u0007+L"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->uw(Ljava/lang/String;)V

    .line 254
    :cond_3
    sput-object p1, Lcom/apptracker/android/track/AppTracker;->i:Ljava/lang/String;

    .line 81
    if-gez p2, :cond_4

    .line 213
    const/4 v0, 0x0

    sput v0, Lcom/apptracker/android/track/AppTracker;->K:I

    .line 235
    :goto_0
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->a()V

    .line 29
    return-void

    .line 54
    :cond_4
    mul-int/lit8 v0, p2, 0x3c

    sput v0, Lcom/apptracker/android/track/AppTracker;->K:I

    goto :goto_0
.end method

.method public static storeActions(Ljava/util/ArrayList;I)I
    .locals 9
    .param p0, "arg0"    # Ljava/util/ArrayList;
    .param p1, "arg1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1510
    const/4 v0, 0x0

    .line 1551
    sget-object v1, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    const-string v2, ":\u0004?\u00184\u0003?D+\u000f)\u00072\u0019(\u00034\u0004u=\t#\u000f/\u0004/\u0003>\u001e8\u0015+\u00175\u0008>\u00148\u001a-\u001e"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1340
    const/4 v3, 0x0

    .line 805
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 1024
    const-string v2, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0011;\r=\u0007o\u0003,\u0016&\r!\u0011o\u0011;\u0003=\u0016&\u000c(B)\u0010 \u000fo\u000b!\u0006*\u001auB"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "/AppData/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "t"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1586
    const-string v4, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u0011.\u0014*\u0012.\u0016\'BrB"

    invoke-static {v6}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 969
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1358
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ActionData_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1142
    new-instance v1, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 1093
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    :try_start_1
    const-string v4, ""

    .line 1199
    const-string v3, ""

    .line 936
    new-instance v6, Lcom/apptracker/android/util/AppEncryption;

    const-string v1, "tiJ8e+8Fb^21xd|5"

    invoke-direct {v6, v1}, Lcom/apptracker/android/util/AppEncryption;-><init>(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v5, v4

    move-object v4, v3

    move v3, v1

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_0
    if-ge v0, p1, :cond_1

    :try_start_2
    const-string v0, "APTr"

    .line 1134
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1035
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\u0011:\u0001,\u0007<\u0011)\u0017#\u000e6B8\u0010 \u0016*B"

    invoke-static {v6}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "J:\t/\u00034\u0004(J/\u0005{\u000c2\u0006>P{"

    invoke-static {v6}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "o\u0007!\u0001uB"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 890
    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1441
    :goto_1
    return v1

    .line 1122
    :cond_1
    :try_start_4
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1413
    invoke-virtual {v6, v0}, Lcom/apptracker/android/util/AppEncryption;->encrypt128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1075
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Q"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1493
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 1355
    add-int/lit8 v3, v3, -0x1

    move-object v5, v4

    move-object v4, v0

    move v0, v3

    goto :goto_0

    .line 660
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 801
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->m()V

    .line 730
    const-string v3, "APTr"

    invoke-static {v3, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1456
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u001e\u0018)\u0005)J,\u0003/\u0002{\u001d)\u0003/\u00035\r{\u000b8\u001e2\u00055J?\u000b/\u000b{\u001e4J=\u00037\u000f{G{"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 890
    :try_start_6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 671
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1172
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 890
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1174
    :goto_4
    throw v0

    .line 671
    :catch_2
    move-exception v0

    move v0, v1

    :cond_2
    move v1, v0

    .line 1441
    goto :goto_1

    .line 671
    :catch_3
    move-exception v1

    goto :goto_4

    .line 1172
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 660
    :catch_4
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method public static sync(Landroid/content/Context;)V
    .locals 5
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 635
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0019\"\u00048BrJ8\u000b7\u0006>\u000e{G{"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/apptracker/android/track/AppTracker;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    sget-boolean v0, Lcom/apptracker/android/track/AppTracker;->D:Z

    if-nez v0, :cond_0

    .line 1401
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apptracker/android/track/AppTracker;->D:Z

    const-string v0, "APTr"

    .line 1285
    sput-object p0, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    .line 602
    const-string v1, "\u0008\r&\u000c(B;\ro16\u000c,B+\u0003;\u0003"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->readData()Lorg/json/JSONArray;

    move-result-object v0

    .line 1032
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".:\u001e:J/\u0005{\u0008>J(\u00135\t>\u000e{W{"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1196
    sget-object v1, Lcom/apptracker/android/track/AppTracker;->k:Landroid/content/Context;

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/apptracker/android/track/AppTracker$2;

    invoke-direct {v3}, Lcom/apptracker/android/track/AppTracker$2;-><init>()V

    invoke-static {v1, v2, v0, v3}, Lcom/apptracker/android/request/AppRequest;->request(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/apptracker/android/listener/AppListener;)V

    .line 988
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0, v4}, Lcom/apptracker/android/track/AppTracker;->syncModuleAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 784
    :cond_0
    return-void

    .line 1068
    :cond_1
    sput-boolean v4, Lcom/apptracker/android/track/AppTracker;->D:Z

    goto :goto_0
.end method

.method public static syncModuleAction(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Z

    .prologue
    .line 1058
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->readActionData()Ljava/util/ArrayList;

    move-result-object v2

    .line 1553
    if-eqz v2, :cond_0

    .line 1550
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "l\u0003,\u0016&\r!\u0011o\u0004=\r\"B)\u000b#\u0007uB"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_0
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/apptracker/android/track/AppTracker$3;

    invoke-direct {v5}, Lcom/apptracker/android/track/AppTracker$3;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/apptracker/android/request/AppRequest;->requestBatchAction(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZLcom/apptracker/android/listener/AppListener;)Z

    .line 1104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apptracker/android/track/AppTracker;->D:Z

    .line 1568
    return-void
.end method

.method public static transaction(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;)V
    .locals 7
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # F
    .param p3, "arg3"    # Ljava/lang/String;

    .prologue
    .line 478
    const-string v0, "\u0018>\u000b7"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/apptracker/android/track/AppTracker;->G(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    return-void
.end method

.method public static transaction(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # F
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Ljava/lang/String;

    .prologue
    .line 278
    const-string v0, "=\u0007.\u000e"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/apptracker/android/track/AppTracker;->G(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 586
    return-void
.end method

.method public static transaction(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # F
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Ljava/lang/String;
    .param p5, "arg5"    # Z

    .prologue
    .line 372
    const-string v0, "=\u0007.\u000e"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/apptracker/android/track/AppTracker;->G(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 315
    return-void
.end method

.method public static transaction(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 7
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # F
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Z

    .prologue
    .line 337
    const-string v0, "\u0018>\u000b7"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/apptracker/android/track/AppTracker;->G(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 489
    return-void
.end method
