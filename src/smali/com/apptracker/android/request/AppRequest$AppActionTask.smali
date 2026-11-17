.class Lcom/apptracker/android/request/AppRequest$AppActionTask;
.super Landroid/os/AsyncTask;
.source "e"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptracker/android/request/AppRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppActionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static synthetic h:Landroid/content/Context;

.field private static synthetic k:Z

.field private static synthetic m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/apptracker/android/listener/AppListener;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/util/ArrayList;
    .param p3, "arg2"    # Lcom/apptracker/android/listener/AppListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/apptracker/android/listener/AppListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1110
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1364
    sput-object p1, Lcom/apptracker/android/request/AppRequest$AppActionTask;->h:Landroid/content/Context;

    .line 733
    if-nez p2, :cond_0

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apptracker/android/request/AppRequest$AppActionTask;->m:Ljava/util/ArrayList;

    .line 865
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apptracker/android/request/AppRequest$AppActionTask;->k:Z

    .line 1542
    return-void

    .line 1539
    :cond_0
    sput-object p2, Lcom/apptracker/android/request/AppRequest$AppActionTask;->m:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private static synthetic G(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 1482
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 654
    :try_start_0
    const-string v1, "\u0006"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apptracker/android/request/AppRequest$AppActionTask;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->appDeviceParamaters(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1485
    const-string v2, "\u0010X"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1378
    const-string v2, "\"\u0003"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0013j\u0007_\rD\n\u000bY\u000b"

    invoke-static {v3}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/apptracker/android/request/AppRequest$AppActionTask;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 1274
    const-string v2, "APTr"

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs G([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "arg0"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1464
    const/4 v5, 0x0

    .line 964
    const/4 v1, 0x0

    .line 1002
    const/4 v3, 0x0

    .line 880
    const/4 v0, 0x0

    .line 896
    const/4 v2, 0x1

    .line 1508
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1321
    const/4 v4, 0x0

    :try_start_0
    aget-object v3, p1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 923
    :goto_0
    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1009
    :cond_0
    const-string v3, "APTr"

    const-string v7, "\u0001\ro\u0012 \u0011;7\u001d.o\u000b!B\u0018\u000b+\u0005*\u0016\u001d\u0007>\u0017*\u0011;6.\u0011$B)\r=B8B.\u0001;\u000b \u000c"

    invoke-static {v7}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    sget-object v3, Lcom/apptracker/android/request/AppRequest$AppActionTask;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-ge v3, v7, :cond_1

    .line 681
    const-string v0, "APTr"

    const-string v1, "*DDJ\u0007_\rD\n\u000b\u0010DDX\u0001E\u0000\u000b\u0005_DJ\u0008G"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1120
    :catch_0
    move-exception v4

    move-object v4, v3

    .line 923
    goto :goto_0

    .line 926
    :cond_1
    const-string v3, "APTr"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u0011*\u000c+\u000b!\u0005o\r#\u0006o\u0003,\u0016&\r!\u0011oOo\u0016\'\u0007=\u0007o\u0003=\u0007uB"

    invoke-static {v8}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/apptracker/android/request/AppRequest$AppActionTask;->m:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :goto_2
    sget-object v3, Lcom/apptracker/android/request/AppRequest$AppActionTask;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/apptracker/android/track/AppTracker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1523
    const-string v2, "APTr"

    const-string v3, ", B\u0006\u000c;\u0007=\u000c*\u0016"

    invoke-static {v3}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const/4 v2, 0x0

    .line 953
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1215
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 922
    const-string v7, "C\u0010_\u0014\u0005\u0014Y\u000b_\u000bH\u000bGJ]\u0001Y\u0017B\u000bE"

    invoke-static {v7}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v3, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1021
    const/16 v7, 0x1388

    const/16 v8, 0xbb8

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 798
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 659
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 1298
    new-instance v10, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 622
    sget-object v3, Lcom/apptracker/android/request/AppRequest$AppActionTask;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v8, v3

    move-object v7, v0

    move v0, v3

    move v3, v2

    :goto_3
    if-gez v0, :cond_4

    .line 608
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x\u0001E\u0010\u000b\u000bM\u0002\u000b"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/apptracker/android/request/AppRequest$AppActionTask;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DJ\u0007_\rD\nX"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 838
    goto/16 :goto_1

    .line 1312
    :cond_3
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "*N\u0013\u000b\u0014D\u0017_1y(\u000b\rED|\rO\u0003N\u0010y\u0001Z\u0011N\u0017_0J\u0017@^\u000b"

    invoke-static {v3}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const/4 v1, 0x1

    .line 1363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "=;+;="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1438
    sget-object v3, Lcom/apptracker/android/request/AppRequest$AppActionTask;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 745
    :cond_4
    const/4 v2, 0x0

    .line 947
    :try_start_1
    sget-object v0, Lcom/apptracker/android/request/AppRequest$AppActionTask;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    :try_start_2
    const-string v7, "=;+;="

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 1177
    if-lez v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_6

    .line 1131
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 604
    const-string v11, "=;+;="

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v7, v11

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 1247
    if-eqz v3, :cond_6

    .line 1354
    :try_start_3
    invoke-static {v7}, Lcom/apptracker/android/request/AppRequest$AppActionTask;->G(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 683
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "\u0010*\u0004"

    invoke-static {v12}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/apptracker/android/util/AppEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v12, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1014
    :goto_4
    :try_start_4
    const-string v7, "APTr"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[\u000bX\u0010B\nLD\\\rO\u0003N\u0010\u000b\u0005H\u0010B\u000bED_\u000b\u000b\u0010Y\u0005H\u000f~\u0016G^\u000b"

    invoke-static {v12}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1462
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v11, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 962
    invoke-interface {v9, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    move-object v7, v2

    .line 1576
    :goto_5
    if-eqz v7, :cond_9

    .line 1187
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v7, v0

    move-object v0, v2

    move v13, v3

    move-object v3, v2

    move v2, v13

    .line 646
    :goto_6
    if-eqz v0, :cond_7

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_7

    .line 1013
    const-string v3, "APTr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "B;\u0010.\u0001$\u000b!\u0005o7\u001d.o\u0011*\u000c;B<\u0017,\u0001*\u0011<\u0004:\u000e#\u001b"

    invoke-static {v0}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1080
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v0

    move v0, v2

    .line 622
    :goto_7
    add-int/lit8 v2, v8, -0x1

    move v8, v2

    move v3, v0

    move v0, v2

    goto/16 :goto_3

    .line 1420
    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    .line 1395
    :goto_8
    const/4 v0, 0x0

    .line 836
    :try_start_6
    const-string v11, "APTr"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1576
    if-eqz v2, :cond_a

    .line 1187
    :try_start_7
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v7, v3

    move-object v3, v2

    move v13, v0

    move-object v0, v2

    move v2, v13

    .line 1414
    goto :goto_6

    :catch_2
    move-exception v7

    move-object v7, v3

    move-object v3, v2

    move v13, v0

    move-object v0, v2

    move v2, v13

    goto :goto_6

    .line 1128
    :catchall_0
    move-exception v0

    .line 1576
    if-eqz v2, :cond_5

    .line 1187
    :try_start_8
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1544
    :cond_5
    :goto_9
    throw v0

    :cond_6
    move-object v7, v2

    .line 1576
    goto :goto_5

    .line 1414
    :catch_3
    move-exception v7

    move-object v13, v2

    move v2, v3

    move-object v3, v0

    move-object v0, v13

    :goto_a
    move-object v7, v3

    move-object v3, v0

    .line 646
    goto :goto_6

    .line 1108
    :cond_7
    sget-boolean v0, Lcom/apptracker/android/request/AppRequest$AppActionTask;->k:Z

    if-eqz v0, :cond_8

    add-int/lit8 v0, v1, -0x1

    if-ne v8, v0, :cond_8

    .line 986
    const-string v0, "APTr"

    const-string v3, "6NI_\u0016R\rE\u0003\u000b\u0016N\u0005GI_\rF\u0001\u000b\u0010Y\u0005H\u000fB\nLD~6g"

    invoke-static {v3}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 1445
    const-string v3, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "1*\u000c;B \u0004)B"

    invoke-static {v11}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "DJ\u0007_\rD\nX"

    invoke-static {v11}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v0

    move v0, v2

    .line 1038
    goto :goto_7

    .line 1069
    :cond_8
    const-string v0, "APTr"

    const-string v2, "<\u0016 \u0010&\u000c(B;\u0010.\u0001$\u000b!\u0005o7\u001d."

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const/4 v0, 0x0

    .line 1534
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1414
    :catch_4
    move-exception v1

    goto :goto_9

    .line 1420
    :catch_5
    move-exception v0

    move-object v3, v7

    move-object v7, v0

    goto/16 :goto_8

    .line 1392
    :catch_6
    move-exception v7

    goto/16 :goto_4

    :cond_9
    move-object v13, v2

    move v2, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_a

    :cond_a
    move-object v13, v2

    move v2, v0

    move-object v0, v13

    goto :goto_a
.end method

.method protected G(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "arg0"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 900
    const-string v0, "APTr"

    const-string v1, "\u0000.\u0001$\u0005=\r:\u000c+B\u000e\u0001;\u000b \u000co6.\u0011$B,\r\"\u0012#\u0007;\u0007+B"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1390
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X\u0005]\rE\u0003\u000b"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B.\u0001;\u000b \u000co\u0007!\u0016=\u000b*\u0011"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apptracker/android/track/AppTracker;->storeActions(Ljava/util/ArrayList;I)I

    .line 617
    :cond_0
    return-void
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppActionTask;->G([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppActionTask;->G(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setRealTime(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 1125
    sput-boolean p1, Lcom/apptracker/android/request/AppRequest$AppActionTask;->k:Z

    .line 932
    return-void
.end method
