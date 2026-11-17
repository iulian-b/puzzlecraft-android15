.class Lcom/fusepowered/m2/nativeads/UrlResolutionTask;
.super Landroid/os/AsyncTask;
.source "UrlResolutionTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;
    }
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


# static fields
.field private static final REDIRECT_LIMIT:I = 0xa


# instance fields
.field private final mListener:Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;->mListener:Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;

    .line 41
    return-void
.end method

.method private getRedirectLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, "url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 80
    .local v1, "httpUrlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 81
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 83
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 85
    .local v2, "responseCode":I
    const/16 v4, 0x12c

    if-lt v2, v4, :cond_1

    const/16 v4, 0x190

    if-ge v2, v4, :cond_1

    .line 86
    const-string v4, "Location"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 91
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_0
    return-object v4

    .line 88
    :cond_1
    const/4 v4, 0x0

    .line 91
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 91
    .end local v2    # "responseCode":I
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v4
.end method

.method public static getResolvedUrl(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;)V
    .locals 4
    .param p0, "urlString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    new-instance v1, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;

    invoke-direct {v1, p1}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;-><init>(Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;)V

    .line 31
    .local v1, "urlResolutionTask":Lcom/fusepowered/m2/nativeads/UrlResolutionTask;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/fusepowered/m2/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to resolve url"

    invoke-static {v2, v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    invoke-interface {p1}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;->onFailure()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "urls"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 46
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    :cond_0
    move-object v1, v4

    .line 71
    :cond_1
    :goto_0
    return-object v1

    .line 50
    :cond_2
    const/4 v2, 0x0

    .line 52
    .local v2, "previousUrl":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v1, p1, v5

    .line 54
    .local v1, "locationUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 55
    .local v3, "redirectCount":I
    :goto_1
    if-eqz v1, :cond_3

    const/16 v5, 0xa

    if-ge v3, v5, :cond_3

    .line 58
    sget-object v5, Lcom/fusepowered/m2/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fusepowered/m2/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    move-object v2, v1

    .line 63
    invoke-direct {p0, v1}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;->getRedirectLocation(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    .end local v1    # "locationUrl":Ljava/lang/String;
    .end local v3    # "redirectCount":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v4

    .line 68
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "locationUrl":Ljava/lang/String;
    .restart local v3    # "redirectCount":I
    :cond_3
    move-object v1, v2

    .line 71
    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 112
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;->mListener:Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;->onFailure()V

    .line 113
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "resolvedUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;->onCancelled()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;->mListener:Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method
