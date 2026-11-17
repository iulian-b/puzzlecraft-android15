.class Lcom/apptracker/android/request/AppRequest$AppCrashTask;
.super Landroid/os/AsyncTask;
.source "e"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptracker/android/request/AppRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppCrashTask"
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


# instance fields
.field private synthetic h:Lorg/json/JSONArray;

.field private synthetic k:Landroid/content/Context;

.field private synthetic m:Lcom/apptracker/android/listener/AppListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lorg/json/JSONArray;

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->k:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->h:Lorg/json/JSONArray;

    .line 127
    return-void
.end method


# virtual methods
.method protected varargs G([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    aget-object v5, p1, v0

    .line 87
    iget-object v0, p0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "APTr"

    const-string v1, "e\u000b\u000b-E\u0010N\u0016E\u0001_"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    .line 116
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->appDeviceParamaters(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 136
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\'Y\u0005X\u000c\u000b \u000bY\u000b"

    invoke-static {v4}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\'Y\u0005X\u000c\u000b\'\u000bY\u000b"

    invoke-static {v4}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->h:Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v2, "O"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "H"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->h:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "n\nH\u0016R\u0014_\u0001ODX\u0010Y\rE\u0003\u000bY\u000b"

    invoke-static {v4}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "Y\u0001M"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :goto_1
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 121
    const-string v0, "C\u0010_\u0014\u0005\u0014Y\u000b_\u000bH\u000bGJ]\u0001Y\u0017B\u000bE"

    invoke-static {v0}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v7, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const/4 v2, 0x1

    .line 16
    const/16 v0, 0x1388

    const/16 v1, 0xbb8

    invoke-static {v7, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 76
    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 204
    const/4 v1, 0x0

    .line 187
    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_2
    sget-object v4, Lcom/apptracker/android/util/AppConstants;->E:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 299
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :cond_2
    sget-object v0, Lcom/apptracker/android/util/AppConstants;->E:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "\u000c_\u0010[^\u0004KH\u0016\u0005"

    invoke-static {v8}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u0004"

    invoke-static {v4}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "crash"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 255
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v9, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    .line 179
    :try_start_1
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v9, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v0

    .line 102
    :goto_3
    const/4 v10, 0x1

    if-lt v0, v10, :cond_3

    move v0, v2

    .line 448
    :goto_4
    if-nez v0, :cond_1

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 178
    :catch_0
    move-exception v4

    move v4, v0

    .line 102
    goto :goto_3

    .line 62
    :cond_3
    :try_start_2
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 222
    invoke-interface {v0, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 132
    const-string v10, "APTr"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "h\u0016J\u0017CDy\u0001[\u000bY\u0010\u000b\u0001S\u0001H\u0011_\u0001OH\u000b1y(\u000bI\u000b"

    invoke-static {v12}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u0007Dy\u0001X\u0014D\nX\u0001\u000bI\u000b"

    invoke-static {v12}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    const/16 v10, 0xc8

    if-ne v0, v10, :cond_4

    .line 414
    const/4 v2, 0x1

    .line 532
    const/4 v3, 0x0

    move v0, v2

    .line 558
    goto :goto_4

    .line 534
    :catch_1
    move-exception v0

    .line 368
    const-string v4, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\'D\u0011G\u0000\u000b\nD\u0010\u000b\u0007D\nE\u0001H\u0010\u000b\u0010DDX\u0001Y\u0012N\u0016\u000bI\u000b"

    invoke-static {v9}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 530
    goto :goto_4

    .line 451
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    .line 102
    goto :goto_3

    .line 214
    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method protected G(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Integer;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->m:Lcom/apptracker/android/listener/AppListener;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->m:Lcom/apptracker/android/listener/AppListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/apptracker/android/listener/AppListener;->onServerSync(Ljava/util/ArrayList;)V

    .line 298
    :cond_0
    :goto_0
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "I\u0005H\u000fL\u0016D\u0011E\u0000\u000b\'Y\u0005X\u000c\u000b6N\u0014D\u0016_D\u007f\u0005X\u000f\u000b\u0007D\t[\u0008N\u0010N\u0000\u000bI\u000b"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void

    .line 440
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v1, p0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->m:Lcom/apptracker/android/listener/AppListener;

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
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->G([Ljava/lang/String;)Ljava/lang/Integer;

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
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->G(Ljava/lang/Integer;)V

    return-void
.end method

.method public setAppListener(Lcom/apptracker/android/listener/AppListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/listener/AppListener;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/apptracker/android/request/AppRequest$AppCrashTask;->m:Lcom/apptracker/android/listener/AppListener;

    .line 37
    return-void
.end method
