.class public Lcom/apptracker/android/request/AppRequest$AppReTask;
.super Landroid/os/AsyncTask;
.source "e"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptracker/android/request/AppRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppReTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lorg/json/JSONObject;

.field private synthetic h:Ljava/lang/String;

.field private synthetic k:Lcom/apptracker/android/re/AppReController;

.field private synthetic m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/apptracker/android/re/AppReController;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/re/AppReController;
    .param p2, "arg1"    # Landroid/content/Context;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 812
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 660
    iput-object p2, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->m:Landroid/content/Context;

    .line 801
    iput-object p3, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->h:Ljava/lang/String;

    .line 730
    iput-object p1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->k:Lcom/apptracker/android/re/AppReController;

    .line 1456
    return-void
.end method


# virtual methods
.method protected varargs G([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 1391
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->m:Landroid/content/Context;

    const-string v2, "\u0007D\nE\u0001H\u0010B\u0012B\u0010R"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1109
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 817
    if-eqz v1, :cond_1

    .line 1028
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 970
    const-string v2, "C\u0010_\u0014\u0005\u0014Y\u000b_\u000bH\u000bGJ]\u0001Y\u0017B\u000bE"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1217
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 684
    const/16 v2, 0x1388

    const/16 v3, 0xbb8

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 644
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1303
    sget-object v5, Lcom/apptracker/android/util/AppConstants;->E:[Ljava/lang/String;

    .line 662
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 1313
    const-string v1, "\u000c_\u0010[J@\u0001N\u0014j\u0008B\u0012N"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "M\u0005G\u0017N"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    :cond_0
    const-string v1, "APTr"

    const-string v2, "o\u0001I\u0011LDg\rE\u0001\u000b\u0006N\u0002D\u0016NDJ\u0000y\u0001M2J\u0008^\u0001X"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    new-instance v6, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1307
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 996
    :try_start_0
    const-string v2, "O"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->appDeviceParamaters(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1133
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "Y\u0001M"

    invoke-static {v3}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    const-string v1, "APTr"

    const-string v2, " N\u0006^\u0003\u000b(B\nNDJ\u0002_\u0001YDJ\u0000y\u0001M2J\u0008^\u0001X"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const/4 v1, 0x0

    move v2, v1

    .end local p0    # "this":Lcom/apptracker/android/request/AppRequest$AppReTask;
    :goto_1
    array-length v3, v5

    if-lt v1, v3, :cond_2

    .line 1504
    :cond_1
    const/4 v1, 0x0

    .line 1571
    :goto_2
    return-object v1

    .line 1460
    .restart local p0    # "this":Lcom/apptracker/android/request/AppRequest$AppReTask;
    :catch_0
    move-exception v2

    .line 1443
    const-string v3, "APTr"

    invoke-static {v3, v2}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1529
    .end local p0    # "this":Lcom/apptracker/android/request/AppRequest$AppReTask;
    :cond_2
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 724
    aget-object v1, v5, v2

    iput-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->d:Ljava/lang/String;

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u000c_\u0010[^\u0004KY\u0003\u0005"

    invoke-static {v3}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u0004"

    invoke-static {v3}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "rg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 992
    const-string v3, "APTr"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "1y(\u000bY\u000b"

    invoke-static {v8}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1471
    :try_start_1
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v1, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1168
    :goto_3
    const/4 v1, 0x0

    move v3, v1

    .line 713
    :goto_4
    const/4 v8, 0x2

    if-lt v1, v8, :cond_4

    :cond_3
    move-object v0, p0

    .line 898
    .local v0, "this":Lcom/apptracker/android/request/AppRequest$AppReTask;
    :goto_5
    iget-object v1, v0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_9

    .line 1571
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    goto :goto_2

    .line 1141
    .end local v0    # "this":Lcom/apptracker/android/request/AppRequest$AppReTask;
    :catch_1
    move-exception v1

    .line 1257
    const-string v3, "APTr"

    invoke-static {v3, v1}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 1147
    :cond_4
    :try_start_2
    const-string v1, "APTr"

    const-string v8, "\u0006N\u0002D\u0016NDN\u001cN\u0007^\u0010N"

    invoke-static {v8}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-interface {v4, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1538
    const-string v8, "APTr"

    const-string v9, "J\u0002_\u0001YDN\u001cN\u0007^\u0010N"

    invoke-static {v9}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v8, "APTr"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "^\u0016GDN\u001cN\u0007^\u0010N\u0000\u0007Dy\u0001X\u0014D\nX\u0001\u000bI\u000b"

    invoke-static {v10}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_8

    .line 601
    const-string v8, "APTr"

    const-string v9, "x\u0010J\u0010^\u0017\u000bV\u001bT\u000b\u0016N\u0007N\r]\u0001O"

    invoke-static {v9}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1008
    if-eqz v1, :cond_5

    .line 1200
    const-string v8, "APTr"

    const-string v9, "n\n_\r_\u001d\u000b\nD\u0010\u000b\n^\u0008G"

    invoke-static {v9}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 1284
    invoke-static {v1}, Lcom/apptracker/android/request/AppRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 1034
    const-string v9, "APTr"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "6N\u0017[\u000bE\u0017NDx\u0010Y\rE\u0003\u000bI\u000b"

    invoke-static {v11}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    .line 1101
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1301
    :cond_5
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 1575
    const-string v1, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "6N\u0017^\u0008_\u0017\u000bY\u000b"

    invoke-static {v7}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 680
    .restart local v0    # "this":Lcom/apptracker/android/request/AppRequest$AppReTask;
    goto/16 :goto_5

    .line 888
    .end local v0    # "this":Lcom/apptracker/android/request/AppRequest$AppReTask;
    :catch_2
    move-exception v1

    .line 1419
    :try_start_3
    const-string v8, "APTr"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "h\u000bE\nN\u0007_\rD\n\u000b0B\tN\u0000\u000b\u000b^\u0010\u000bI\u000b"

    invoke-static {v10}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1301
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    .line 1575
    const-string v1, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "6N\u0017^\u0008_\u0017\u000bY\u000b"

    invoke-static {v9}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :cond_6
    :goto_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 713
    goto/16 :goto_4

    .line 1135
    :catch_3
    move-exception v1

    .line 990
    :try_start_4
    const-string v8, "APTr"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "-X\u0017^\u0001\u000b\u0013B\u0010CDH\u000bE\nN\u0007_\rD\n\u000bI\u000b"

    invoke-static {v10}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v8, "APTr"

    invoke-static {v8, v1}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1301
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    .line 1575
    const-string v1, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "6N\u0017^\u0008_\u0017\u000bY\u000b"

    invoke-static {v9}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 769
    :catchall_0
    move-exception v1

    .line 1301
    iget-object v2, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    .line 1575
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "6N\u0017^\u0008_\u0017\u000bY\u000b"

    invoke-static {v4}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :cond_7
    throw v1

    .line 1301
    :cond_8
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    .line 1575
    const-string v1, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "6N\u0017^\u0008_\u0017\u000bY\u000b"

    invoke-static {v9}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->e:Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1516
    .restart local v0    # "this":Lcom/apptracker/android/request/AppRequest$AppReTask;
    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1
.end method

.method protected G(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "arg0"    # Lorg/json/JSONObject;

    .prologue
    .line 1233
    const-string v0, "APTr"

    const-string v1, "%[\u0014y\u0001Z\u0011N\u0017_JD\n{\u000bX\u0010n\u001cN\u0007^\u0010N"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->k:Lcom/apptracker/android/re/AppReController;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->k:Lcom/apptracker/android/re/AppReController;

    invoke-virtual {v0, p1}, Lcom/apptracker/android/re/AppReController;->setResults(Lorg/json/JSONObject;)V

    .line 1597
    iget-object v0, p0, Lcom/apptracker/android/request/AppRequest$AppReTask;->k:Lcom/apptracker/android/re/AppReController;

    invoke-virtual {v0}, Lcom/apptracker/android/re/AppReController;->reEngagementInitialized()V

    .line 690
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
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppReTask;->G([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1311
    const-string v0, "APTr"

    const-string v1, "%O0J\u0017@DH\u0005E\u0007N\u0008G\u0001O"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1302
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppReTask;->G(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 671
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1174
    return-void
.end method
