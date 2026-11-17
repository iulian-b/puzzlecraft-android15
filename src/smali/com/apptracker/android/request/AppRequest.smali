.class public Lcom/apptracker/android/request/AppRequest;
.super Ljava/lang/Object;
.source "e"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptracker/android/request/AppRequest$AppActionTask;,
        Lcom/apptracker/android/request/AppRequest$AppCrashTask;,
        Lcom/apptracker/android/request/AppRequest$AppModuleTask;,
        Lcom/apptracker/android/request/AppRequest$AppReTask;,
        Lcom/apptracker/android/request/AppRequest$AppRequestTask;,
        Lcom/apptracker/android/request/AppRequest$AppTrackTask;,
        Lcom/apptracker/android/request/AppRequest$TYPE;
    }
.end annotation


# static fields
.field private static synthetic h:[I

.field private static synthetic m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/apptracker/android/request/AppRequest;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic B()[I
    .locals 4

    .prologue
    .line 163
    sget-object v0, Lcom/apptracker/android/request/AppRequest;->h:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/apptracker/android/request/AppRequest$TYPE;->values()[Lcom/apptracker/android/request/AppRequest$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/apptracker/android/request/AppRequest$TYPE;->m:Lcom/apptracker/android/request/AppRequest$TYPE;

    invoke-virtual {v1}, Lcom/apptracker/android/request/AppRequest$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_1
    :try_start_1
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->d:Lcom/apptracker/android/request/AppRequest$TYPE;

    invoke-virtual {v2}, Lcom/apptracker/android/request/AppRequest$TYPE;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    :goto_2
    :try_start_2
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->k:Lcom/apptracker/android/request/AppRequest$TYPE;

    invoke-virtual {v2}, Lcom/apptracker/android/request/AppRequest$TYPE;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    :goto_3
    :try_start_3
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->e:Lcom/apptracker/android/request/AppRequest$TYPE;

    invoke-virtual {v2}, Lcom/apptracker/android/request/AppRequest$TYPE;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v0

    :goto_4
    :try_start_4
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->G:Lcom/apptracker/android/request/AppRequest$TYPE;

    invoke-virtual {v2}, Lcom/apptracker/android/request/AppRequest$TYPE;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    move-object v1, v0

    :goto_5
    :try_start_5
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->h:Lcom/apptracker/android/request/AppRequest$TYPE;

    invoke-virtual {v2}, Lcom/apptracker/android/request/AppRequest$TYPE;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    sput-object v0, Lcom/apptracker/android/request/AppRequest;->h:[I

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_6
.end method

.method static synthetic G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/apptracker/android/request/AppRequest;->m:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic G(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 6
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Ljava/lang/String;
    .param p5, "arg5"    # Ljava/lang/String;
    .param p6, "arg6"    # F
    .param p7, "arg7"    # Ljava/lang/String;
    .param p8, "arg8"    # I
    .param p9, "arg9"    # Ljava/lang/String;
    .param p10, "arg10"    # Ljava/lang/String;
    .param p11, "arg11"    # Ljava/lang/String;
    .param p12, "arg12"    # J
    .param p14, "arg13"    # J

    .prologue
    .line 152
    new-instance v2, Lcom/apptracker/android/request/AppRequest$AppRequestTask;

    invoke-direct {v2, p0}, Lcom/apptracker/android/request/AppRequest$AppRequestTask;-><init>(Landroid/content/Context;)V

    .line 134
    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    aput-object p9, v3, v4

    const/16 v4, 0x9

    aput-object p10, v3, v4

    const/16 v4, 0xa

    aput-object p11, v3, v4

    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p12

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p14

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/apptracker/android/request/AppRequest;->launchTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "arg0"    # Ljava/io/InputStream;

    .prologue
    .line 1330
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1197
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 872
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1546
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 945
    :cond_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "3"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v1

    .line 872
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1062
    :catch_1
    move-exception v1

    goto :goto_1

    .line 949
    :catchall_0
    move-exception v0

    .line 872
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 951
    :goto_2
    throw v0

    .line 1062
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static crashReport(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/apptracker/android/listener/AppListener;)V
    .locals 3
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Lorg/json/JSONArray;
    .param p3, "arg3"    # Lcom/apptracker/android/listener/AppListener;

    .prologue
    .line 248
    new-instance v0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;

    invoke-direct {v0, p0, p2}, Lcom/apptracker/android/request/AppRequest$AppCrashTask;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 146
    if-eqz p3, :cond_0

    .line 251
    invoke-virtual {v0, p3}, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->setAppListener(Lcom/apptracker/android/listener/AppListener;)V

    .line 245
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apptracker/android/request/AppRequest;->launchTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public static install(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/apptracker/android/listener/AppListener;)V
    .locals 4
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Lorg/json/JSONArray;
    .param p3, "arg3"    # Lcom/apptracker/android/listener/AppListener;

    .prologue
    .line 254
    const-string v0, "APTr"

    const-string v1, "Y\u0001Z\u0011N\u0017_H\u000b\u0007_\u001c\u0007DJ\u0014B\u000fN\u001d\u0007DN\u0012N\n_\u0017\u0007DG\rXH\u000b\rE\u0017_\u0005G\u0008\u000bI\u000b\u0007J\u0008G\u0001O"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/apptracker/android/request/AppRequest$AppRequestTask;

    invoke-direct {v0, p0, p2}, Lcom/apptracker/android/request/AppRequest$AppRequestTask;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 213
    const-string v1, "APTr"

    const-string v2, "XWMTK\u0011xAIc\\@LTJEmPJZ\u0019XWXMXX]PK\\"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz p3, :cond_0

    .line 239
    invoke-virtual {v0, p3}, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->setListener(Lcom/apptracker/android/listener/AppListener;)V

    .line 235
    :cond_0
    const-string v1, "APTr"

    const-string v2, "j\u0014[6N\u0015^\u0001X\u0010\u000b\u000bI\u000e\u000b\rE\r_\rJ\u0008B\u001eN\u0000\u000bI\u000b\u0003D\rE\u0003\u000b\u0010DDN\u001cN\u0007^\u0010NDE\u000b\\E\n"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "install"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "install"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/apptracker/android/request/AppRequest;->launchTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static varargs launchTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "arg0"    # Landroid/os/AsyncTask;
    .param p1, "arg1"    # [Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TP;**>;[TP;)V"
        }
    .end annotation

    .prologue
    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static request(Landroid/content/Context;Lcom/apptracker/android/request/AppRequest$TYPE;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 18
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Lcom/apptracker/android/request/AppRequest$TYPE;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # J
    .param p6, "arg5"    # J

    .prologue
    .line 157
    const-string v2, "APTr"

    const-string v3, "KTHD\\BM\u001d\u0019RMI\u0015\u0011MHIT\u0015\u0011XAPZ\\H\u0019RX]UT]"

    invoke-static {v3}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->k:Lcom/apptracker/android/request/AppRequest$TYPE;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    const-string v6, "install"

    .line 39
    :goto_0
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->k:Lcom/apptracker/android/request/AppRequest$TYPE;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    const-string v3, "install"

    .line 170
    :goto_1
    const-string v2, ""

    .line 75
    invoke-static {}, Lcom/apptracker/android/request/AppRequest;->B()[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/apptracker/android/request/AppRequest$TYPE;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 6
    :pswitch_0
    const-string v7, ""

    .line 21
    :goto_2
    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v9, ""

    const-string v13, ""

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v11, v9

    move-object v12, v9

    move-wide/from16 v14, p4

    move-wide/from16 v16, p6

    invoke-static/range {v2 .. v17}, Lcom/apptracker/android/request/AppRequest;->G(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 243
    return-void

    .line 207
    :cond_0
    const-string v2, "N\u0012N\n_"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 39
    :cond_1
    const-string v3, "ev"

    goto :goto_1

    .line 238
    :pswitch_1
    const-string v2, "^ITW"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 125
    :pswitch_2
    const-string v2, "H\u0008D\u0017N"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 75
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static request(Landroid/content/Context;Lcom/apptracker/android/request/AppRequest$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 19
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Lcom/apptracker/android/request/AppRequest$TYPE;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Ljava/lang/String;
    .param p5, "arg5"    # F
    .param p6, "arg6"    # Ljava/lang/String;
    .param p7, "arg7"    # I
    .param p8, "arg8"    # Ljava/lang/String;
    .param p9, "arg9"    # Ljava/lang/String;
    .param p10, "arg10"    # Ljava/lang/String;
    .param p11, "arg11"    # J
    .param p13, "arg12"    # J

    .prologue
    .line 17
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->k:Lcom/apptracker/android/request/AppRequest$TYPE;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    const-string v6, "install"

    .line 40
    :goto_0
    sget-object v2, Lcom/apptracker/android/request/AppRequest$TYPE;->k:Lcom/apptracker/android/request/AppRequest$TYPE;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    const-string v3, "install"

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    .line 164
    invoke-static/range {v2 .. v17}, Lcom/apptracker/android/request/AppRequest;->G(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 260
    return-void

    .line 17
    :cond_0
    const-string v2, "N\u0012N\n_"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 40
    :cond_1
    const-string v3, "ev"

    goto :goto_1
.end method

.method public static request(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Lorg/json/JSONArray;

    .prologue
    .line 219
    const-string v0, "APTr"

    const-string v1, "Y\u0001Z\u0011N\u0017_H\u000b\u0007_\u001c\u0007DJ\u0014B\u000fN\u001d\u0007DN\u0012N\n_\u0017\u000b\u0007J\u0008G\u0001O"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/apptracker/android/request/AppRequest;->request(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/apptracker/android/listener/AppListener;)V

    .line 225
    return-void
.end method

.method public static request(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/apptracker/android/listener/AppListener;)V
    .locals 4
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Lorg/json/JSONArray;
    .param p3, "arg3"    # Lcom/apptracker/android/listener/AppListener;

    .prologue
    .line 230
    const-string v0, "APTr"

    const-string v1, "Y\u0001Z\u0011N\u0017_H\u000b\u0007_\u001c\u0007DJ\u0014B\u000fN\u001d\u0007DN\u0012N\n_\u0017\u0007DG\rXH\u000b\u0016N\u0015^\u0001X\u0010\u000bI\u000b\u0007J\u0008G\u0001O"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/apptracker/android/request/AppRequest$AppRequestTask;

    invoke-direct {v0, p0, p2}, Lcom/apptracker/android/request/AppRequest$AppRequestTask;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 247
    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {v0, p3}, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->setListener(Lcom/apptracker/android/listener/AppListener;)V

    .line 141
    :cond_0
    const-string v1, "APTr"

    const-string v2, "xAIc\\@LTJE\u0019^[[\u0019XWXMXX]PK\\U\u0019\u001c\u0019VVXWV\u0019EV\u0011\\I\\RLE\\\u0011W^N\u0010\u0018"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ev"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "N\u0012N\n_"

    invoke-static {v3}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/apptracker/android/request/AppRequest;->launchTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public static requestBatchAction(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZLcom/apptracker/android/listener/AppListener;)Z
    .locals 4
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/util/ArrayList;
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Z
    .param p5, "arg5"    # Lcom/apptracker/android/listener/AppListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/apptracker/android/listener/AppListener;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    .line 111
    const-string v0, "APTr"

    const-string v1, "ZEA\u001d\u0019E@A\\\u001d\u0019DK]\u0015\u0011XAPZ\\H\u0019RX]UT]"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/apptracker/android/request/AppRequest$AppActionTask;

    invoke-direct {v0, p0, p2, p5}, Lcom/apptracker/android/request/AppRequest$AppActionTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/apptracker/android/listener/AppListener;)V

    .line 109
    invoke-virtual {v0, p4}, Lcom/apptracker/android/request/AppRequest$AppActionTask;->setRealTime(Z)V

    .line 153
    if-nez p1, :cond_0

    .line 26
    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apptracker/android/request/AppRequest;->launchTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 137
    :goto_0
    return v3

    .line 198
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apptracker/android/request/AppRequest;->launchTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static requestModule(Landroid/content/Context;Lcom/apptracker/android/request/AppRequest$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/apptracker/android/listener/AppListener;)Z
    .locals 5
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Lcom/apptracker/android/request/AppRequest$TYPE;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Ljava/lang/String;
    .param p5, "arg5"    # Z
    .param p6, "arg6"    # Ljava/lang/String;
    .param p7, "arg7"    # Lcom/apptracker/android/listener/AppListener;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 253
    .line 256
    const-string v2, "APTr"

    const-string v3, "ZEA\u001d\u0019E@A\\\u001d\u0019DK]\u0015\u0011XAPZ\\H\u0019RX]UT]"

    invoke-static {v3}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v2, "F"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    sget-object v3, Lcom/apptracker/android/request/AppRequest$TYPE;->e:Lcom/apptracker/android/request/AppRequest$TYPE;

    if-ne p1, v3, :cond_3

    .line 250
    if-eqz p4, :cond_0

    const-string v3, ""

    if-ne p4, v3, :cond_1

    .line 142
    :cond_0
    const-string p4, "welcome"

    .line 215
    :cond_1
    new-instance v3, Lcom/apptracker/android/request/AppRequest$AppModuleTask;

    invoke-direct {v3, p0, p5}, Lcom/apptracker/android/request/AppRequest$AppModuleTask;-><init>(Landroid/content/Context;Z)V

    .line 23
    if-eqz p7, :cond_2

    .line 104
    invoke-virtual {v3, p7}, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->setListener(Lcom/apptracker/android/listener/AppListener;)V

    .line 79
    :cond_2
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v1

    aput-object p3, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    aput-object p4, v4, v1

    const/4 v1, 0x4

    aput-object p6, v4, v1

    invoke-static {v3, v4}, Lcom/apptracker/android/request/AppRequest;->launchTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 199
    :goto_0
    return v0

    .line 9
    :cond_3
    const-string v0, "APTr"

    const-string v2, "KTHD\\BMfPU^TM\u0011ZPU]\\U\u0015\u0011[DM\u0011MHIT\u0019XJ\u0011W^M\u0011NX]V\\E\u0018\u0010\u0018"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public static setMockUrl(Ljava/lang/String;)V
    .locals 0
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 185
    sput-object p0, Lcom/apptracker/android/request/AppRequest;->m:Ljava/lang/String;

    .line 128
    return-void
.end method
