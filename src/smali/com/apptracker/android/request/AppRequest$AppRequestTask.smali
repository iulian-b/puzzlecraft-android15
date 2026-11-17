.class Lcom/apptracker/android/request/AppRequest$AppRequestTask;
.super Landroid/os/AsyncTask;
.source "e"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptracker/android/request/AppRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic k:Lorg/json/JSONArray;

.field private static synthetic m:Landroid/content/Context;


# instance fields
.field private synthetic h:Lcom/apptracker/android/listener/AppListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    const-string v0, "APTr"

    .line 287
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 506
    const-string v1, "O\u000c~.k\r{\u0019}\u0008Z\u001d}\u0017.\u001fa\u0012}\u0008|\tm\u0008a\u000e?\\m\u001db\u0010k\u0018"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sput-object p1, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->m:Landroid/content/Context;

    .line 499
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lorg/json/JSONArray;

    .prologue
    const-string v0, "APTr"

    .line 591
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 291
    const-string v1, "O\u000c~.k\r{\u0019}\u0008Z\u001d}\u0017.\u001fa\u0012}\u0008|\tm\u0008a\u000e<\\m\u001db\u0010k\u0018"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    sput-object p1, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->m:Landroid/content/Context;

    .line 320
    sput-object p2, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->k:Lorg/json/JSONArray;

    .line 407
    return-void
.end method

.method private static synthetic G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Ljava/lang/String;
    .param p5, "arg5"    # Ljava/lang/String;
    .param p6, "arg6"    # Ljava/lang/String;
    .param p7, "arg7"    # Ljava/lang/String;
    .param p8, "arg8"    # Ljava/lang/String;
    .param p9, "arg9"    # Ljava/lang/String;

    .prologue
    .line 571
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 284
    :try_start_0
    const-string v4, "\u0018"

    invoke-static {v4}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->m:Landroid/content/Context;

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->appDeviceParamaters(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    .line 547
    .end local p0    # "arg0":Ljava/lang/String;
    .local v2, "arg0":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 344
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 357
    const-string v5, "\u0012"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v5, "\n"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string v5, "m\n"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string v5, "\u001b"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    const-string v5, "\u001f"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v5, "m\u0008"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v5, "\u000e"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v5, "z\u000f"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 495
    const-string v5, "\u0008}\u0013"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v5, "\u0008}\u0010"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v5, "\u000fg\u0018"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 410
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 526
    const-string v6, "\u0019"

    invoke-static {v6}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v5, "APTr"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "K\nk\u0012z\\3\\"

    invoke-static {v7}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 581
    :goto_1
    return-object v3

    .line 421
    .end local v2    # "arg0":Ljava/lang/String;
    .restart local p0    # "arg0":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, p0

    .line 547
    .end local p0    # "arg0":Ljava/lang/String;
    .restart local v2    # "arg0":Ljava/lang/String;
    goto/16 :goto_0

    .line 469
    :cond_0
    const-string v4, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "9x\u0019`\u0008}\\3\\"

    invoke-static {v6}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->k:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :try_start_2
    const-string v4, "\u0019"

    invoke-static {v4}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->k:Lorg/json/JSONArray;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 401
    :catch_1
    move-exception v4

    goto :goto_1

    .line 436
    :catch_2
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method protected varargs G([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 16
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 402
    const-string v0, "APTr"

    const-string v1, "=~\u000c\\\u0019\u007f\tk\u000fz(o\u000fe\\j\u0013G\u0012L\u001dm\u0017i\u000ea\t`\u0018"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/4 v0, 0x0

    aget-object v10, p1, v0

    .line 486
    const/4 v0, 0x1

    aget-object v11, p1, v0

    .line 485
    const/4 v0, 0x2

    aget-object v12, p1, v0

    .line 267
    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 308
    const/4 v13, 0x3

    :try_start_0
    aget-object v9, p1, v13

    .line 405
    const/4 v13, 0x4

    aget-object v0, p1, v13

    .line 454
    const/4 v13, 0x5

    aget-object v2, p1, v13

    .line 500
    const/4 v13, 0x6

    aget-object v3, p1, v13

    .line 483
    const/4 v13, 0x7

    aget-object v1, p1, v13

    .line 431
    const/16 v13, 0x8

    aget-object v6, p1, v13

    .line 535
    const/16 v13, 0x9

    aget-object v4, p1, v13

    .line 334
    const/16 v13, 0xa

    aget-object v5, p1, v13

    .line 494
    const/16 v13, 0xb

    aget-object v7, p1, v13

    .line 449
    const/16 v13, 0xc

    aget-object v8, p1, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 424
    :goto_0
    const-string v13, "APTr"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "i\u0013g\u0012i\\z\u0013.\u001ag\u000ek\\~\u0015v\u0019b\\h\u0013|\\"

    invoke-static {v15}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "\\#\\"

    invoke-static {v14}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    sget-object v12, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->m:Landroid/content/Context;

    invoke-static {v12}, Lcom/apptracker/android/track/AppTracker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 444
    const-string v0, "APTr"

    const-string v1, "2a\\G\u0012z\u0019|\u0012k\u0008"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0

    .line 430
    :cond_0
    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    if-nez v10, :cond_2

    .line 598
    :cond_1
    const-string v0, "APTr"

    const-string v1, ")\\0.\u001eb\u001d`\u0017"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 435
    :cond_2
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 281
    new-instance v12, Ljava/util/ArrayList;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    :try_start_1
    invoke-static/range {v0 .. v9}, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 504
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".k\u001a.*o\u0010{\u0019}\\#\\"

    invoke-static {v3}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "\u000ek\u001a"

    invoke-static {v2}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 533
    :goto_2
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 337
    const-string v0, "\u0014z\u0008~R~\u000ea\u0008a\u001fa\u0010 \nk\u000e}\u0015a\u0012"

    invoke-static {v0}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v6, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v0, "APTr"

    .line 489
    const/16 v1, 0x1388

    const/16 v2, 0xbb8

    invoke-static {v6, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 522
    invoke-static {v6, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 310
    const-string v1, ";a\u0015`\u001b.\u0008a\\c\u001de\u0019.\u000ek\r{\u0019}\u0008.\u0012a\u000b"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v3, 0x1

    .line 586
    const-string v0, ""

    .line 580
    const-string v1, "install"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 382
    const-string v0, "in."

    .line 596
    :cond_3
    :goto_3
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "~\u0013}\u0008[\u000eb\\3\\"

    invoke-static {v4}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "P.\u000c|\u0019h\u0015v\\3\\"

    invoke-static {v4}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v2, 0x0

    .line 565
    const/4 v1, 0x0

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_4
    sget-object v5, Lcom/apptracker/android/util/AppConstants;->E:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_9

    .line 264
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 478
    :catch_0
    move-exception v0

    .line 318
    const-string v1, "APTr"

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 419
    :cond_5
    const-string v1, "rg"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 372
    const-string v0, "rg."

    goto :goto_3

    .line 315
    :cond_6
    const-string v1, "crash"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 597
    const-string v0, "cr."

    goto :goto_3

    .line 427
    :cond_7
    const-string v1, "ev"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 508
    const-string v0, "ev."

    goto :goto_3

    .line 370
    :cond_8
    const-string v1, "appmodule"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    const-string v0, "am."

    goto :goto_3

    .line 464
    :cond_9
    sget-object v1, Lcom/apptracker/android/util/AppConstants;->E:[Ljava/lang/String;

    aget-object v1, v1, v2

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "S"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 515
    const-string v1, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "[.B\\#\\"

    invoke-static {v8}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 342
    :try_start_2
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v1, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v8, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 473
    :goto_5
    const/4 v1, 0x0

    move v5, v1

    .line 546
    :goto_6
    const/4 v9, 0x1

    if-lt v1, v9, :cond_a

    move v1, v3

    .line 484
    :goto_7
    if-nez v1, :cond_4

    .line 565
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_4

    .line 458
    :catch_1
    move-exception v1

    .line 413
    const-string v5, "APTr"

    invoke-static {v5, v1}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 360
    :cond_a
    :try_start_3
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 422
    invoke-interface {v1, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 339
    const-string v9, "APTr"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[\u000eb\\k\u0004k\u001f{\u0008k\u0018.T"

    invoke-static {v14}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'P..k\u000f~\u0013`\u000fk\\#\\"

    invoke-static {v14}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    const/16 v9, 0xc8

    if-ne v1, v9, :cond_b

    .line 477
    const/4 v3, 0x1

    .line 400
    const/4 v4, 0x0

    move v1, v3

    .line 529
    goto :goto_7

    .line 350
    :catch_2
    move-exception v1

    .line 303
    const-string v5, "APTr"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "M\u0013{\u0010j\\`\u0013z\\m\u0013`\u0012k\u001fz\\z\u0013.\u000fk\u000ex\u0019|\\#\\"

    invoke-static {v8}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 551
    goto :goto_7

    .line 488
    :cond_b
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    .line 546
    goto :goto_6

    .line 573
    :catch_3
    move-exception v13

    goto/16 :goto_0
.end method

.method protected G(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Integer;

    .prologue
    .line 507
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "l\u001dm\u0017i\u000ea\t`\u0018.(o\u000fe\\m\u0013c\u000cb\u0019z\u0019j\\#\\"

    invoke-static {v2}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->h:Lcom/apptracker/android/listener/AppListener;

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->h:Lcom/apptracker/android/listener/AppListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/apptracker/android/listener/AppListener;->onServerSync(Ljava/util/ArrayList;)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->h:Lcom/apptracker/android/listener/AppListener;

    invoke-interface {v1, v0}, Lcom/apptracker/android/listener/AppListener;->onServerSync(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->G([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->G(Ljava/lang/Integer;)V

    return-void
.end method

.method public setListener(Lcom/apptracker/android/listener/AppListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/listener/AppListener;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/apptracker/android/request/AppRequest$AppRequestTask;->h:Lcom/apptracker/android/listener/AppListener;

    .line 545
    return-void
.end method
