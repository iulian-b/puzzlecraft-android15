.class public Lcom/fusepowered/m2/network/Networking;
.super Ljava/lang/Object;
.source "Networking.java"


# static fields
.field static final CACHE_DIRECTORY_NAME:Ljava/lang/String; = "mopub-volley-cache"
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation
.end field

.field private static volatile sMaxWidthImageLoader:Lcom/fusepowered/m2/network/MaxWidthImageLoader;

.field private static volatile sRequestQueue:Lcom/fusepowered/m2/network/MoPubRequestQueue;

.field public static sUseHttps:Z

.field private static volatile sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/m2/network/Networking;->sUseHttps:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearForTesting()V
    .locals 2
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    const-class v1, Lcom/fusepowered/m2/network/Networking;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/fusepowered/m2/network/Networking;->sRequestQueue:Lcom/fusepowered/m2/network/MoPubRequestQueue;

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/m2/network/Networking;->sMaxWidthImageLoader:Lcom/fusepowered/m2/network/MaxWidthImageLoader;

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/m2/network/Networking;->sUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit v1

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getImageLoader(Landroid/content/Context;)Lcom/fusepowered/m2/volley/toolbox/ImageLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 80
    sget-object v2, Lcom/fusepowered/m2/network/Networking;->sMaxWidthImageLoader:Lcom/fusepowered/m2/network/MaxWidthImageLoader;

    .line 82
    .local v2, "imageLoader":Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    if-nez v2, :cond_1

    .line 83
    const-class v6, Lcom/fusepowered/m2/network/Networking;

    monitor-enter v6

    .line 84
    :try_start_0
    sget-object v2, Lcom/fusepowered/m2/network/Networking;->sMaxWidthImageLoader:Lcom/fusepowered/m2/network/MaxWidthImageLoader;

    .line 85
    if-nez v2, :cond_0

    .line 86
    invoke-static {p0}, Lcom/fusepowered/m2/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/fusepowered/m2/network/MoPubRequestQueue;

    move-result-object v4

    .line 87
    .local v4, "queue":Lcom/fusepowered/m2/volley/RequestQueue;
    invoke-static {p0}, Lcom/fusepowered/m2/common/util/DeviceUtils;->memoryCacheSizeBytes(Landroid/content/Context;)I

    move-result v0

    .line 88
    .local v0, "cacheSize":I
    new-instance v1, Lcom/fusepowered/m2/network/Networking$1;

    invoke-direct {v1, v0}, Lcom/fusepowered/m2/network/Networking$1;-><init>(I)V

    .line 98
    .local v1, "imageCache":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    new-instance v3, Lcom/fusepowered/m2/network/MaxWidthImageLoader;

    new-instance v5, Lcom/fusepowered/m2/network/Networking$2;

    invoke-direct {v5, v1}, Lcom/fusepowered/m2/network/Networking$2;-><init>(Landroid/support/v4/util/LruCache;)V

    invoke-direct {v3, v4, p0, v5}, Lcom/fusepowered/m2/network/MaxWidthImageLoader;-><init>(Lcom/fusepowered/m2/volley/RequestQueue;Landroid/content/Context;Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v2    # "imageLoader":Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    .local v3, "imageLoader":Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    :try_start_1
    sput-object v3, Lcom/fusepowered/m2/network/Networking;->sMaxWidthImageLoader:Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 111
    .end local v0    # "cacheSize":I
    .end local v1    # "imageCache":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v3    # "imageLoader":Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    .end local v4    # "queue":Lcom/fusepowered/m2/volley/RequestQueue;
    .restart local v2    # "imageLoader":Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    :cond_0
    :try_start_2
    monitor-exit v6

    .line 113
    :cond_1
    return-object v2

    .line 111
    :catchall_0
    move-exception v5

    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .end local v2    # "imageLoader":Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    .restart local v0    # "cacheSize":I
    .restart local v1    # "imageCache":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .restart local v3    # "imageLoader":Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    .restart local v4    # "queue":Lcom/fusepowered/m2/volley/RequestQueue;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "imageLoader":Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    .restart local v2    # "imageLoader":Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    goto :goto_0
.end method

.method public static getRequestQueue()Lcom/fusepowered/m2/network/MoPubRequestQueue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/fusepowered/m2/network/Networking;->sRequestQueue:Lcom/fusepowered/m2/network/MoPubRequestQueue;

    return-object v0
.end method

.method public static getRequestQueue(Landroid/content/Context;)Lcom/fusepowered/m2/network/MoPubRequestQueue;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    sget-object v4, Lcom/fusepowered/m2/network/Networking;->sRequestQueue:Lcom/fusepowered/m2/network/MoPubRequestQueue;

    .line 51
    .local v4, "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    if-nez v4, :cond_1

    .line 52
    const-class v11, Lcom/fusepowered/m2/network/Networking;

    monitor-enter v11

    .line 53
    :try_start_0
    sget-object v4, Lcom/fusepowered/m2/network/Networking;->sRequestQueue:Lcom/fusepowered/m2/network/MoPubRequestQueue;

    .line 54
    if-nez v4, :cond_0

    .line 57
    invoke-static {p0}, Lcom/fusepowered/m2/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/fusepowered/m2/common/ClientMetadata;

    move-result-object v1

    .line 58
    .local v1, "clientMetadata":Lcom/fusepowered/m2/common/ClientMetadata;
    new-instance v7, Lcom/fusepowered/m2/network/PlayServicesUrlRewriter;

    invoke-virtual {v1}, Lcom/fusepowered/m2/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, p0}, Lcom/fusepowered/m2/network/PlayServicesUrlRewriter;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 59
    .local v7, "urlRewriter":Lcom/fusepowered/m2/volley/toolbox/HurlStack$UrlRewriter;
    const/16 v10, 0x2710

    invoke-static {v10}, Lcom/fusepowered/m2/network/CustomSSLSocketFactory;->getDefault(I)Lcom/fusepowered/m2/network/CustomSSLSocketFactory;

    move-result-object v6

    .line 61
    .local v6, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/m2/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "userAgent":Ljava/lang/String;
    new-instance v2, Lcom/fusepowered/m2/network/RequestQueueHttpStack;

    invoke-direct {v2, v8, v7, v6}, Lcom/fusepowered/m2/network/RequestQueueHttpStack;-><init>(Ljava/lang/String;Lcom/fusepowered/m2/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 64
    .local v2, "httpStack":Lcom/fusepowered/m2/volley/toolbox/HttpStack;
    new-instance v3, Lcom/fusepowered/m2/volley/toolbox/BasicNetwork;

    invoke-direct {v3, v2}, Lcom/fusepowered/m2/volley/toolbox/BasicNetwork;-><init>(Lcom/fusepowered/m2/volley/toolbox/HttpStack;)V

    .line 65
    .local v3, "network":Lcom/fusepowered/m2/volley/Network;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "mopub-volley-cache"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v9, "volleyCacheDir":Ljava/io/File;
    new-instance v0, Lcom/fusepowered/m2/volley/toolbox/DiskBasedCache;

    const-wide/32 v12, 0xa00000

    invoke-static {v9, v12, v13}, Lcom/fusepowered/m2/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;J)J

    move-result-wide v12

    long-to-int v10, v12

    invoke-direct {v0, v9, v10}, Lcom/fusepowered/m2/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 68
    .local v0, "cache":Lcom/fusepowered/m2/volley/Cache;
    new-instance v5, Lcom/fusepowered/m2/network/MoPubRequestQueue;

    invoke-direct {v5, v0, v3}, Lcom/fusepowered/m2/network/MoPubRequestQueue;-><init>(Lcom/fusepowered/m2/volley/Cache;Lcom/fusepowered/m2/volley/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v4    # "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    .local v5, "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    :try_start_1
    sput-object v5, Lcom/fusepowered/m2/network/Networking;->sRequestQueue:Lcom/fusepowered/m2/network/MoPubRequestQueue;

    .line 70
    invoke-virtual {v5}, Lcom/fusepowered/m2/network/MoPubRequestQueue;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 72
    .end local v0    # "cache":Lcom/fusepowered/m2/volley/Cache;
    .end local v1    # "clientMetadata":Lcom/fusepowered/m2/common/ClientMetadata;
    .end local v2    # "httpStack":Lcom/fusepowered/m2/volley/toolbox/HttpStack;
    .end local v3    # "network":Lcom/fusepowered/m2/volley/Network;
    .end local v5    # "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    .end local v6    # "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v7    # "urlRewriter":Lcom/fusepowered/m2/volley/toolbox/HurlStack$UrlRewriter;
    .end local v8    # "userAgent":Ljava/lang/String;
    .end local v9    # "volleyCacheDir":Ljava/io/File;
    .restart local v4    # "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    :cond_0
    :try_start_2
    monitor-exit v11

    .line 75
    :cond_1
    return-object v4

    .line 72
    :catchall_0
    move-exception v10

    :goto_0
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .end local v4    # "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    .restart local v0    # "cache":Lcom/fusepowered/m2/volley/Cache;
    .restart local v1    # "clientMetadata":Lcom/fusepowered/m2/common/ClientMetadata;
    .restart local v2    # "httpStack":Lcom/fusepowered/m2/volley/toolbox/HttpStack;
    .restart local v3    # "network":Lcom/fusepowered/m2/volley/Network;
    .restart local v5    # "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    .restart local v6    # "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v7    # "urlRewriter":Lcom/fusepowered/m2/volley/toolbox/HurlStack$UrlRewriter;
    .restart local v8    # "userAgent":Ljava/lang/String;
    .restart local v9    # "volleyCacheDir":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    .restart local v4    # "requestQueue":Lcom/fusepowered/m2/network/MoPubRequestQueue;
    goto :goto_0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/fusepowered/m2/network/Networking;->sUserAgent:Ljava/lang/String;

    .line 126
    .local v0, "userAgent":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 127
    const-class v2, Lcom/fusepowered/m2/network/Networking;

    monitor-enter v2

    .line 128
    :try_start_0
    sget-object v0, Lcom/fusepowered/m2/network/Networking;->sUserAgent:Ljava/lang/String;

    .line 129
    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 132
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    sput-object v0, Lcom/fusepowered/m2/network/Networking;->sUserAgent:Ljava/lang/String;

    .line 140
    :cond_0
    monitor-exit v2

    .line 143
    :cond_1
    return-object v0

    .line 136
    :cond_2
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setImageLoaderForTesting(Lcom/fusepowered/m2/network/MaxWidthImageLoader;)V
    .locals 2
    .param p0, "imageLoader"    # Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 160
    const-class v0, Lcom/fusepowered/m2/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/fusepowered/m2/network/Networking;->sMaxWidthImageLoader:Lcom/fusepowered/m2/network/MaxWidthImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit v0

    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setRequestQueueForTesting(Lcom/fusepowered/m2/network/MoPubRequestQueue;)V
    .locals 2
    .param p0, "queue"    # Lcom/fusepowered/m2/network/MoPubRequestQueue;
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 155
    const-class v0, Lcom/fusepowered/m2/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/fusepowered/m2/network/Networking;->sRequestQueue:Lcom/fusepowered/m2/network/MoPubRequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v0

    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setUserAgentForTesting(Ljava/lang/String;)V
    .locals 2
    .param p0, "userAgent"    # Ljava/lang/String;
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 165
    const-class v0, Lcom/fusepowered/m2/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/fusepowered/m2/network/Networking;->sUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit v0

    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static useHttps(Z)V
    .locals 0
    .param p0, "useHttps"    # Z

    .prologue
    .line 172
    sput-boolean p0, Lcom/fusepowered/m2/network/Networking;->sUseHttps:Z

    .line 173
    return-void
.end method

.method public static useHttps()Z
    .locals 1

    .prologue
    .line 176
    sget-boolean v0, Lcom/fusepowered/m2/network/Networking;->sUseHttps:Z

    return v0
.end method
