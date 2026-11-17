.class public Lcom/fusepowered/nx/monetization/manager/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/manager/CacheManager$restartCachingRunnable;,
        Lcom/fusepowered/nx/monetization/manager/CacheManager$stopCachingRunnable;
    }
.end annotation


# static fields
.field private static final extendedCacheOperationLock:Ljava/lang/Object;

.field private static handlerThread:Landroid/os/HandlerThread;

.field private static instance:Lcom/fusepowered/nx/monetization/manager/CacheManager;

.field private static isGetOfferCacheRequestRunning:Z

.field private static restartCachingRunnable:Ljava/lang/Runnable;

.field private static final singletonLock:Ljava/lang/Object;

.field private static stopCachingRunnable:Ljava/lang/Runnable;

.field private static threadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->isGetOfferCacheRequestRunning:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->singletonLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->extendedCacheOperationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CachingTask-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->handlerThread:Landroid/os/HandlerThread;

    .line 74
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->threadHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/fusepowered/nx/monetization/manager/CacheManager$restartCachingRunnable;

    invoke-direct {v0, v2}, Lcom/fusepowered/nx/monetization/manager/CacheManager$restartCachingRunnable;-><init>(Lcom/fusepowered/nx/monetization/manager/CacheManager$1;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->restartCachingRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/fusepowered/nx/monetization/manager/CacheManager$stopCachingRunnable;

    invoke-direct {v0, v2}, Lcom/fusepowered/nx/monetization/manager/CacheManager$stopCachingRunnable;-><init>(Lcom/fusepowered/nx/monetization/manager/CacheManager$1;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->stopCachingRunnable:Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->actualStopCaching()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->actualRestartCaching()V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->threadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->isGetOfferCacheRequestRunning:Z

    return p0
.end method

.method private static actualRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->release()V

    .line 181
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->release()V

    .line 182
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 185
    :cond_0
    sput-object v1, Lcom/fusepowered/nx/monetization/manager/CacheManager;->handlerThread:Landroid/os/HandlerThread;

    .line 186
    sput-object v1, Lcom/fusepowered/nx/monetization/manager/CacheManager;->threadHandler:Landroid/os/Handler;

    .line 187
    sput-object v1, Lcom/fusepowered/nx/monetization/manager/CacheManager;->stopCachingRunnable:Ljava/lang/Runnable;

    .line 188
    sput-object v1, Lcom/fusepowered/nx/monetization/manager/CacheManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheManager;

    .line 189
    return-void
.end method

.method private static actualRestartCaching()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->actualStopCaching()V

    .line 131
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->getOfferCache()V

    .line 132
    const-string v0, "Caching started"

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v0, "Caching couldn\'t be started due to unavailability of \'Context\' instance."

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static actualStopCaching()V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheManager;

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->stopAllDownloads()V

    .line 169
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->cleanUpNativeXCachedDirectory()V

    .line 170
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->cleanUpCacheDB()V

    .line 171
    const-string v0, "Caching stopped"

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static getExtendedOperationLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->extendedCacheOperationLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance()Lcom/fusepowered/nx/monetization/manager/CacheManager;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheManager;

    if-nez v0, :cond_1

    .line 83
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheManager;->singletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheManager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/manager/CacheManager;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheManager;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheManager;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getOfferCache()V
    .locals 2

    .prologue
    .line 199
    sget-boolean v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->isGetOfferCacheRequestRunning:Z

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "Skipping GetOfferCache since one is already running"

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->isGetOfferCacheRequestRunning:Z

    .line 206
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/nx/monetization/manager/CacheManager$1;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/manager/CacheManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getOfferCache(Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;)V

    goto :goto_0
.end method

.method public static release()V
    .locals 0

    .prologue
    .line 175
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->actualStopCaching()V

    .line 176
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->actualRelease()V

    .line 177
    return-void
.end method

.method public static restartCaching()V
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->threadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->threadHandler:Landroid/os/Handler;

    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheManager;->restartCachingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->threadHandler:Landroid/os/Handler;

    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheManager;->restartCachingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v0, "Caching couldn\'t be started due to unavailability of \'threadHandler\' instance."

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static restartOrStopCaching(I)V
    .locals 6
    .param p0, "cachingFrequency"    # I

    .prologue
    .line 94
    if-gtz p0, :cond_0

    .line 95
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->stopCaching()V

    .line 111
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->getPreviousCachedTime()J

    move-result-wide v0

    .line 100
    .local v0, "previousCachedTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit8 v4, p0, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 104
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->storePreviousCachedTime(J)V

    .line 106
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->restartCaching()V

    goto :goto_0

    .line 108
    :cond_2
    const-string v2, "Caching is skipped as current time has not elapsed caching frequency wait time."

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stopCaching()V
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->threadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->threadHandler:Landroid/os/Handler;

    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheManager;->stopCachingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheManager;->threadHandler:Landroid/os/Handler;

    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheManager;->stopCachingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public checkToUpdateStatusToReady(Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "releasedAdMD5List":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "allOtherAdsMD5List":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, "object":Ljava/lang/Object;
    const/4 v2, 0x1

    .local v2, "updateStatusToReady":Z
    move-object v1, v0

    .line 271
    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "releasedAdMd5":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    const/4 v2, 0x0

    .line 275
    :cond_1
    if-eqz v2, :cond_0

    .line 276
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v4, v1, v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateFileStatusWithMD5(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    goto :goto_0

    .line 279
    .end local v0    # "object":Ljava/lang/Object;
    .end local v1    # "releasedAdMd5":Ljava/lang/String;
    .end local v2    # "updateStatusToReady":Z
    :cond_2
    return-void
.end method

.method public isOfferCacheAvailable()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 228
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getCacheUtilIntegerFreeSpaceMin()J

    move-result-wide v2

    .line 230
    .local v2, "freeSpaceMinInMegaBytes":J
    invoke-static {v2, v3}, Lcom/fusepowered/nx/common/Utilities;->convertMBtoBytes(J)J

    move-result-wide v0

    .line 232
    .local v0, "freeSpaceMinInBytes":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v4

    .line 236
    :cond_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getAvailableInternalMemorySizeInBytes()J

    move-result-wide v6

    cmp-long v5, v6, v0

    if-gez v5, :cond_0

    .line 240
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public verifyFileStatusForAllRecords()V
    .locals 6

    .prologue
    .line 249
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getAllCacheFilesByMD5()Ljava/util/List;

    move-result-object v1

    .line 251
    .local v1, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 252
    .local v0, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->doesFileExistForCacheFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileStatus()Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    if-ne v3, v4, :cond_1

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong file status found for DELETED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->deleteFromInternalCache(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateFileStatusWithMD5(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    goto :goto_0

    .line 262
    .end local v0    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_2
    return-void
.end method
