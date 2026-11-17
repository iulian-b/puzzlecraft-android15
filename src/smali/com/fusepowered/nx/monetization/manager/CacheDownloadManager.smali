.class public Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;
.super Ljava/lang/Object;
.source "CacheDownloadManager.java"


# static fields
.field private static downloadListener:Lcom/fusepowered/nx/monetization/listeners/CacheDownloadStatusListener;

.field private static downloadManager:Lcom/fusepowered/nx/downloadmanager/DownloadManager;

.field private static instance:Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;

.field private static final singletonLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->singletonLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;

    invoke-direct {v0}, Lcom/fusepowered/nx/downloadmanager/DownloadManager;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->downloadManager:Lcom/fusepowered/nx/downloadmanager/DownloadManager;

    .line 45
    new-instance v0, Lcom/fusepowered/nx/monetization/listeners/CacheDownloadStatusListener;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/listeners/CacheDownloadStatusListener;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->downloadListener:Lcom/fusepowered/nx/monetization/listeners/CacheDownloadStatusListener;

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;

    if-nez v0, :cond_1

    .line 33
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->singletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->downloadManager:Lcom/fusepowered/nx/downloadmanager/DownloadManager;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->downloadManager:Lcom/fusepowered/nx/downloadmanager/DownloadManager;

    invoke-virtual {v0}, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->release()V

    .line 52
    :cond_0
    sput-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->downloadManager:Lcom/fusepowered/nx/downloadmanager/DownloadManager;

    .line 53
    sput-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;

    .line 54
    return-void
.end method


# virtual methods
.method public push(Lcom/fusepowered/nx/monetization/business/CacheFile;)V
    .locals 9
    .param p1, "cacheFile"    # Lcom/fusepowered/nx/monetization/business/CacheFile;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "downloadUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 60
    .local v3, "downloadUri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getNativeXCacheDirectoryPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "destinationFile":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 64
    .local v1, "destinationUri":Landroid/net/Uri;
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->addDownloadId(Lcom/fusepowered/nx/monetization/business/CacheFile;)I

    move-result v2

    .line 66
    .local v2, "downloadId":I
    new-instance v6, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;

    sget-object v7, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->downloadListener:Lcom/fusepowered/nx/monetization/listeners/CacheDownloadStatusListener;

    invoke-direct {v6, v2, v3, v1, v7}, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;-><init>(ILandroid/net/Uri;Landroid/net/Uri;Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;)V

    .line 68
    .local v6, "request":Lcom/fusepowered/nx/downloadmanager/DownloadRequest;
    sget-object v7, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->downloadManager:Lcom/fusepowered/nx/downloadmanager/DownloadManager;

    invoke-virtual {v7, v6}, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->requestDownload(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V

    .line 69
    return-void
.end method

.method public declared-synchronized stopAllDownloads()V
    .locals 6

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    const-string v2, " Stopping All Running Downloads "

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 76
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->downloadManager:Lcom/fusepowered/nx/downloadmanager/DownloadManager;

    invoke-virtual {v2}, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->cancelAllDownloads()V

    .line 77
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getDownloadMap()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "downloadsList":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/DownloadMap;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/business/DownloadMap;

    .line 80
    .local v0, "downloadMap":Lcom/fusepowered/nx/monetization/business/DownloadMap;
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/DownloadMap;->getCacheFile()Lcom/fusepowered/nx/monetization/business/CacheFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateFileStatusWithMD5IfNotInUse(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 81
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/DownloadMap;->getDownloadId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->deleteDownloadId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "downloadMap":Lcom/fusepowered/nx/monetization/business/DownloadMap;
    .end local v1    # "downloadsList":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/DownloadMap;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 83
    .restart local v1    # "downloadsList":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/DownloadMap;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method
