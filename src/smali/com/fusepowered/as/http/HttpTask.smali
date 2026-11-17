.class public Lcom/fusepowered/as/http/HttpTask;
.super Landroid/os/AsyncTask;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private response:Ljava/lang/String;

.field private statusCode:I

.field private taskHandler:Lcom/fusepowered/as/http/HttpTaskListener;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/http/HttpTaskListener;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/fusepowered/as/http/HttpTask;->taskHandler:Lcom/fusepowered/as/http/HttpTaskListener;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 35
    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/as/http/HttpTask;->url:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/fusepowered/as/http/HttpTask;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/http/HttpTask;->url:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/fusepowered/as/http/HttpTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/http/HttpTask;->url:Ljava/lang/String;

    .line 48
    :cond_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/fusepowered/as/http/HttpTask;->url:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    invoke-static {}, Lcom/fusepowered/as/utils/UrlBuilder;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 54
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 58
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/fusepowered/as/http/HttpTask;->statusCode:I

    .line 60
    iget v1, p0, Lcom/fusepowered/as/http/HttpTask;->statusCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/as/http/HttpTask;->headers:Ljava/util/Map;

    .line 68
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lcom/fusepowered/as/utils/IOUtils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/as/http/HttpTask;->response:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 76
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception for the following url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/as/http/HttpTask;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/fusepowered/as/http/HttpTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/http/HttpTask;->taskHandler:Lcom/fusepowered/as/http/HttpTaskListener;

    if-eqz v0, :cond_0

    .line 87
    iget v0, p0, Lcom/fusepowered/as/http/HttpTask;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/fusepowered/as/http/HttpTask;->taskHandler:Lcom/fusepowered/as/http/HttpTaskListener;

    iget-object v1, p0, Lcom/fusepowered/as/http/HttpTask;->url:Ljava/lang/String;

    iget v2, p0, Lcom/fusepowered/as/http/HttpTask;->statusCode:I

    iget-object v3, p0, Lcom/fusepowered/as/http/HttpTask;->headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/fusepowered/as/http/HttpTask;->response:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/fusepowered/as/http/HttpTaskListener;->onHttpTaskSuccess(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/http/HttpTask;->taskHandler:Lcom/fusepowered/as/http/HttpTaskListener;

    iget-object v1, p0, Lcom/fusepowered/as/http/HttpTask;->url:Ljava/lang/String;

    iget v2, p0, Lcom/fusepowered/as/http/HttpTask;->statusCode:I

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/as/http/HttpTaskListener;->onHttpTaskFailure(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/fusepowered/as/http/HttpTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
