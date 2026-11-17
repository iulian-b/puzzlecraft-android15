.class Lcom/apptracker/android/request/AppRequest$AppModuleTask;
.super Landroid/os/AsyncTask;
.source "e"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptracker/android/request/AppRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppModuleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic d:Ljava/lang/String;

.field static k:Z

.field private static synthetic m:Landroid/content/Context;


# instance fields
.field private synthetic h:Lcom/apptracker/android/listener/AppListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 378
    sput-object p1, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->m:Landroid/content/Context;

    .line 358
    sput-object v0, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->d:Ljava/lang/String;

    .line 365
    sput-boolean p2, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->k:Z

    .line 503
    return-void
.end method

.method private static synthetic G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 383
    :try_start_0
    sget-object v1, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->appDeviceParamaters(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 428
    const-string v2, "]"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 326
    const-string v1, "\u0012"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v1, "Z"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v1, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->k:Z

    if-eqz v1, :cond_1

    const-string v1, "S"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v1, "\u0011"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getSessionStore()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    const-string v1, "L"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    :cond_0
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v1, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#?\u0012o/ \u0006:\u000e*BrB"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :goto_1
    return-object v0

    .line 364
    :cond_1
    const-string v1, "\t"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 467
    const-string v2, "APTr"

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method protected varargs G([Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 459
    aget-object v3, p1, v2

    .line 465
    aget-object v6, p1, v12

    .line 426
    aget-object v4, p1, v10

    .line 553
    const/4 v0, 0x3

    :try_start_0
    aget-object v0, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    const/4 v5, 0x4

    aget-object v5, p1, v5

    .line 446
    const-string v7, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ",\r!\u000c*\u0001;\u000b!\u0005o\u0016 B8\u000b+\u0005*\u0016o\u0011*\u00109\u0007=BbB"

    invoke-static {v9}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v3, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/apptracker/android/track/AppTracker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 474
    const-string v0, "APTr"

    const-string v1, "w^\u0019xWE\\CWTM"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object v0, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->d:Ljava/lang/String;

    .line 1427
    :goto_1
    return-object v0

    .line 445
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 572
    goto :goto_0

    .line 289
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 390
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 346
    const-string v3, "\n;\u0016?L?\u0010 \u0016 \u0001 \u000ea\u0014*\u0010<\u000b \u000c"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v7, v3, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 577
    const/16 v3, 0x1388

    const/16 v8, 0xbb8

    invoke-static {v7, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 306
    invoke-static {v7, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 399
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    :try_start_1
    invoke-static {v4, v0, v5}, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 576
    const-string v3, "APTr"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tWRKHIE\\U\u0019bMC\u0019\u000c\u0019"

    invoke-static {v5}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "\u0010*\u0004"

    invoke-static {v4}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    :goto_2
    const-string v0, "APTr"

    const-string v3, "~^P_^\u0011M^\u0019\\XZ\\\u0011KTHD\\BM\u0011W^N"

    invoke-static {v3}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sput-object v1, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->d:Ljava/lang/String;

    move v0, v2

    move-object v3, v1

    move v1, v2

    .line 324
    :goto_3
    sget-object v4, Lcom/apptracker/android/util/AppConstants;->E:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_1

    .line 904
    sget-object v0, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->d:Ljava/lang/String;

    goto :goto_1

    .line 463
    :catch_1
    move-exception v0

    .line 271
    const-string v3, "APTr"

    invoke-static {v3, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 563
    :cond_1
    sget-object v0, Lcom/apptracker/android/util/AppConstants;->E:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'\u0016;\u0012uM`\u0003\"L"

    invoke-static {v5}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u0016"

    invoke-static {v4}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "appmodule"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {}, Lcom/apptracker/android/request/AppRequest;->G()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 937
    invoke-static {}, Lcom/apptracker/android/request/AppRequest;->G()Ljava/lang/String;

    move-result-object v0

    .line 1273
    :cond_2
    const-string v4, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "\u001a0\u0003BbB"

    invoke-static {v9}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    :try_start_2
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 669
    :try_start_3
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move v5, v2

    move-object v3, v4

    move v4, v2

    .line 736
    :goto_4
    if-lt v4, v12, :cond_3

    .line 324
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1331
    :catch_2
    move-exception v4

    move-object v13, v4

    move-object v4, v3

    move-object v3, v13

    .line 1481
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v2

    move-object v3, v4

    move v4, v2

    .line 736
    goto :goto_4

    .line 899
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .line 1216
    :try_start_4
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 1459
    invoke-interface {v5, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1011
    const-string v9, "APTr"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dK]\u0019TATZDMT]\u0011\u0011"

    invoke-static {v11}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "fNo0*\u0011?\r!\u0011*BbB"

    invoke-static {v11}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_5

    .line 720
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 1449
    if-eqz v0, :cond_4

    .line 1361
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1473
    invoke-static {v0}, Lcom/apptracker/android/request/AppRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 1045
    const-string v5, "APTr"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "B\\COTK\u0011KTJAV_JT\u0019\u001c\u0019"

    invoke-static {v10}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    sput-object v4, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->d:Ljava/lang/String;

    .line 1383
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1427
    :cond_4
    sget-object v0, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 688
    :catch_3
    move-exception v0

    .line 901
    const-string v4, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "\u000c\r:\u000e+B!\r;B,\r!\u000c*\u0001;B;\ro\u0011*\u00109\u0007=BbB"

    invoke-static {v9}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    move v5, v4

    .line 736
    goto/16 :goto_4

    .line 1331
    :catch_4
    move-exception v3

    goto/16 :goto_6
.end method

.method protected G(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 726
    const-string v0, "APTr"

    const-string v1, "\u001b\u0013\u001b\u0019SXRRVK^L_]\u0011nX]V\\E\u0019eXBR\u0011Z^TAUTMT]\u0011\u0013\u001b\u0013"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->h:Lcom/apptracker/android/listener/AppListener;

    if-eqz v0, :cond_1

    .line 1593
    const-string v0, "APTr"

    const-string v1, "(\r;B#\u000b<\u0016*\u000c*\u0010"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-nez p1, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->h:Lcom/apptracker/android/listener/AppListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/apptracker/android/listener/AppListener;->onServerSync(Ljava/util/ArrayList;)V

    .line 1563
    :goto_0
    return-void

    .line 776
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 627
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->h:Lcom/apptracker/android/listener/AppListener;

    invoke-interface {v1, v0}, Lcom/apptracker/android/listener/AppListener;->onServerSync(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 666
    :cond_1
    const-string v0, "APTr"

    const-string v1, "^WaVBMtATZDMT\u0015\u0011[DM\u0011W^\u0019]PBMTWTK"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->G(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/apptracker/android/listener/AppListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/listener/AppListener;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/apptracker/android/request/AppRequest$AppModuleTask;->h:Lcom/apptracker/android/listener/AppListener;

    .line 564
    return-void
.end method
