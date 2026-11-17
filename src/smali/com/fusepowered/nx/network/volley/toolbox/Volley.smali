.class public Lcom/fusepowered/nx/network/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;Ljava/io/File;)Lcom/fusepowered/nx/network/volley/RequestQueue;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fusepowered/nx/network/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Ljava/io/File;Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;)Lcom/fusepowered/nx/network/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Ljava/io/File;Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;)Lcom/fusepowered/nx/network/volley/RequestQueue;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "stack"    # Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;

    .prologue
    .line 42
    const-string v4, "volley/0"

    .line 44
    .local v4, "userAgent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 46
    .local v0, "info":Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 50
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_0

    .line 51
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_1

    .line 52
    new-instance p2, Lcom/fusepowered/nx/network/volley/toolbox/HurlStack;

    .end local p2    # "stack":Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;
    invoke-direct {p2}, Lcom/fusepowered/nx/network/volley/toolbox/HurlStack;-><init>()V

    .line 60
    .restart local p2    # "stack":Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;
    :cond_0
    :goto_1
    new-instance v1, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;

    invoke-direct {v1, p2}, Lcom/fusepowered/nx/network/volley/toolbox/BasicNetwork;-><init>(Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;)V

    .line 62
    .local v1, "network":Lcom/fusepowered/nx/network/volley/Network;
    new-instance v3, Lcom/fusepowered/nx/network/volley/RequestQueue;

    new-instance v5, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;

    invoke-direct {v5, p1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5, v1}, Lcom/fusepowered/nx/network/volley/RequestQueue;-><init>(Lcom/fusepowered/nx/network/volley/Cache;Lcom/fusepowered/nx/network/volley/Network;)V

    .line 63
    .local v3, "queue":Lcom/fusepowered/nx/network/volley/RequestQueue;
    invoke-virtual {v3}, Lcom/fusepowered/nx/network/volley/RequestQueue;->start()V

    .line 65
    return-object v3

    .line 56
    .end local v1    # "network":Lcom/fusepowered/nx/network/volley/Network;
    .end local v3    # "queue":Lcom/fusepowered/nx/network/volley/RequestQueue;
    :cond_1
    new-instance p2, Lcom/fusepowered/nx/network/volley/toolbox/HttpClientStack;

    .end local p2    # "stack":Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;
    invoke-static {v4}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    invoke-direct {p2, v5}, Lcom/fusepowered/nx/network/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    .restart local p2    # "stack":Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;
    goto :goto_1

    .line 47
    :catch_0
    move-exception v5

    goto :goto_0
.end method
