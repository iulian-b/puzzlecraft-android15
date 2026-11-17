.class final Lcom/fusepowered/vast/util/HttpTools$1;
.super Ljava/lang/Thread;
.source "HttpTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/util/HttpTools;->httpGetURL(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/vast/VASTPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/vast/VASTPlayer;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 29
    .local v2, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {}, Lcom/fusepowered/vast/util/HttpTools;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connection to URL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .local v4, "httpUrl":Ljava/net/URL;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 33
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 34
    const/16 v5, 0x1388

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 35
    const-string v5, "Connection"

    const-string v6, "close"

    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v5, "GET"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 39
    .local v1, "code":I
    invoke-static {}, Lcom/fusepowered/vast/util/HttpTools;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", for URL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/16 v5, 0xc8

    if-ge v1, v5, :cond_0

    const/16 v5, 0xe2

    if-le v1, v5, :cond_0

    iget-object v5, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$type:Ljava/lang/String;

    const-string v6, "impression"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    iget-object v5, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v5, v5, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    const/16 v6, 0x384

    invoke-interface {v5, v6}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    if-eqz v2, :cond_1

    .line 57
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .end local v1    # "code":I
    .end local v4    # "httpUrl":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 58
    .restart local v1    # "code":I
    .restart local v4    # "httpUrl":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/fusepowered/vast/util/HttpTools;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v1    # "code":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "httpUrl":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 48
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/fusepowered/vast/util/HttpTools;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v5, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$type:Ljava/lang/String;

    const-string v6, "impression"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    iget-object v5, p0, Lcom/fusepowered/vast/util/HttpTools$1;->val$currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v5, v5, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    const/16 v6, 0x384

    invoke-interface {v5, v6}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :cond_2
    if-eqz v2, :cond_1

    .line 57
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 58
    :catch_2
    move-exception v3

    .line 59
    invoke-static {}, Lcom/fusepowered/vast/util/HttpTools;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 57
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 60
    :cond_3
    :goto_1
    throw v5

    .line 58
    :catch_3
    move-exception v3

    .line 59
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/fusepowered/vast/util/HttpTools;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
