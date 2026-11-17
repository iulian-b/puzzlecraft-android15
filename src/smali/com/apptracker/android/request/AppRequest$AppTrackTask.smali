.class public Lcom/apptracker/android/request/AppRequest$AppTrackTask;
.super Landroid/os/AsyncTask;
.source "e"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptracker/android/request/AppRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTrackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 927
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs G([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1551
    .line 1340
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 1024
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 701
    if-eqz v0, :cond_0

    .line 1380
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 673
    :cond_0
    const-string v0, ""

    .line 1142
    :goto_0
    return-object v0

    .line 1483
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 701
    :goto_1
    if-eqz v0, :cond_1

    .line 1380
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_2
    move-object v0, v1

    .line 1142
    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    .line 701
    :goto_3
    if-eqz v1, :cond_2

    .line 1380
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1358
    :cond_2
    throw v0

    .line 701
    :cond_3
    if-eqz v0, :cond_1

    .line 1380
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 969
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 1483
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/apptracker/android/request/AppRequest$AppTrackTask;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
