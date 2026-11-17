.class public Lcom/fusepowered/nx/monetization/tasks/CachingTask;
.super Ljava/lang/Object;
.source "CachingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final cacheResponseData:Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;)V
    .locals 0
    .param p1, "responseData"    # Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->cacheResponseData:Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    .line 31
    return-void
.end method

.method private deleteFilesWithFileStatusDeleted()V
    .locals 4

    .prologue
    .line 251
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getCacheFilesForFileStatusDeleted()Ljava/util/List;

    move-result-object v1

    .line 252
    .local v1, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 253
    .local v0, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->deleteFromInternalCache(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v0    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_0
    return-void
.end method

.method private initiateDownloads()V
    .locals 6

    .prologue
    .line 381
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getCacheFilesForDownload()Ljava/util/List;

    move-result-object v1

    .line 382
    .local v1, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 383
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 385
    .local v0, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->doesFileExistForCacheFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateFileStatusWithMD5IfNotInUse(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 382
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->push(Lcom/fusepowered/nx/monetization/business/CacheFile;)V

    goto :goto_1

    .line 391
    .end local v0    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_1
    return-void
.end method

.method private purgeFreeSpace(J)V
    .locals 9
    .param p1, "freeSpaceNeeded"    # J

    .prologue
    .line 258
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getCacheFilesForPurging()Ljava/util/List;

    move-result-object v1

    .line 260
    .local v1, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    const-wide/16 v2, 0x0

    .line 262
    .local v2, "spaceFreed":J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 264
    .local v0, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    cmp-long v5, v2, p1

    if-ltz v5, :cond_2

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared enough space, freeSpaceNeeded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", space freed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 266
    invoke-static {v2, v3}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-static {v4}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 280
    .end local v0    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_1
    return-void

    .line 270
    .restart local v0    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_2
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v5, v6, v7}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateFileStatusWithMD5(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 273
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->deleteFromInternalCache(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->doesFileExistForCacheFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0
.end method

.method private updateOfferIdToCacheFiles(Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;)V
    .locals 6
    .param p1, "responseData"    # Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    .prologue
    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 284
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/nx/monetization/business/CacheOffers;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/business/CacheOffers;->getOfferId()J

    move-result-wide v4

    .line 285
    .local v4, "offerId":J
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/nx/monetization/business/CacheOffers;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/business/CacheOffers;->getFiles()Ljava/util/List;

    move-result-object v0

    .line 286
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 287
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setOfferId(J)V

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    .end local v2    # "j":I
    .end local v4    # "offerId":J
    :cond_1
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/manager/CacheDownloadManager;->stopAllDownloads()V

    .line 245
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->deleteAllCacheFilesExceptInUse()V

    .line 246
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->cleanUpNativeXCachedDirectory()V

    .line 247
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->deleteFilesWithFileStatusDeleted()V

    .line 248
    return-void
.end method

.method public executeCachingAlgorithm()V
    .locals 35

    .prologue
    .line 44
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getCacheUtilIntegerFreeSpaceMin()J

    move-result-wide v26

    .line 47
    .local v26, "freeSpaceMinMegabytes":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->cacheResponseData:Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->getFreeSpaceMinMegabytes()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 48
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->cacheResponseData:Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->getFreeSpaceMinMegabytes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    .line 49
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateCacheUtilFreeSpaceMin(J)V

    .line 53
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getAvailableInternalMemorySizeInBytes()J

    move-result-wide v10

    .line 54
    .local v10, "deviceInternalFreeSpaceInBytes":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Available internal free space "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v10, v11}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getInternalCacheDirectorySizeInBytes()J

    move-result-wide v12

    .line 58
    .local v12, "cacheDirectorySizeInBytes":J
    invoke-static/range {v26 .. v27}, Lcom/fusepowered/nx/common/Utilities;->convertMBtoBytes(J)J

    move-result-wide v6

    .line 59
    .local v6, "freeSpaceMinInBytes":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->cacheResponseData:Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->getCacheSizeMax()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/fusepowered/nx/common/Utilities;->convertMBtoBytes(J)J

    move-result-wide v8

    .line 61
    .local v8, "cacheSizeMaxInBytes":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "freeSpaceMin: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6, v7}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " cacheSizeMax: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 62
    invoke-static {v8, v9}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " deviceInternalFreeSpace: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 63
    invoke-static {v10, v11}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {v5}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->getExtendedOperationLock()Ljava/lang/Object;

    move-result-object v34

    monitor-enter v34

    move-object/from16 v5, p0

    .line 68
    :try_start_0
    invoke-virtual/range {v5 .. v13}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->shouldClearCacheByEvaluatingCacheSizeMax(JJJJ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->clearCache()V

    .line 111
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->deleteOffersWithFileStatusDeleted()V

    .line 113
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->cleanUpNativeXCachedDirectory()V

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->deleteFilesWithFileStatusDeleted()V

    .line 115
    monitor-exit v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->initiateDownloads()V

    .line 118
    return-void

    .line 77
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->cacheResponseData:Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->updateOfferIdToCacheFiles(Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;)V

    .line 79
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->cacheResponseData:Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_3

    .line 80
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->cacheResponseData:Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fusepowered/nx/monetization/business/CacheOffers;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/business/CacheOffers;->getOfferId()J

    move-result-wide v30

    .line 81
    .local v30, "offerId":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->cacheResponseData:Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fusepowered/nx/monetization/business/CacheOffers;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/business/CacheOffers;->getFiles()Ljava/util/List;

    move-result-object v4

    .line 82
    .local v4, "files":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2, v4}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->updateDatabaseWithIncomingData(JLjava/util/List;)V

    .line 79
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 87
    .end local v4    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    .end local v30    # "offerId":J
    :cond_3
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getTotalSizeOfCacheFiles()J

    move-result-wide v32

    .line 88
    .local v32, "totalCacheSize":J
    const-wide/16 v16, 0x0

    cmp-long v5, v32, v16

    if-gez v5, :cond_4

    const-wide/16 v32, 0x0

    .line 91
    :cond_4
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getSizeOfDownloadedCacheFiles()J

    move-result-wide v22

    .line 94
    .local v22, "downloadedCacheSizeInBytes":J
    sub-long v24, v32, v22

    .local v24, "unDownloadedCacheSizeInBytes":J
    move-object/from16 v15, p0

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    .line 96
    invoke-virtual/range {v15 .. v25}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->findSpaceNeededForPurging(JJJJJ)J

    move-result-wide v28

    .line 103
    .local v28, "freeSpaceNeededToPurgeInBytes":J
    const-wide/16 v16, 0x0

    cmp-long v5, v28, v16

    if-lez v5, :cond_1

    .line 104
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->purgeFreeSpace(J)V

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cache size after purging "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 106
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getTotalSizeOfCacheFiles()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-static {v5}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .end local v14    # "i":I
    .end local v22    # "downloadedCacheSizeInBytes":J
    .end local v24    # "unDownloadedCacheSizeInBytes":J
    .end local v28    # "freeSpaceNeededToPurgeInBytes":J
    .end local v32    # "totalCacheSize":J
    :catchall_0
    move-exception v5

    monitor-exit v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public findSpaceNeededForPurging(JJJJJ)J
    .locals 13
    .param p1, "freeSpaceMin"    # J
    .param p3, "cacheSizeMax"    # J
    .param p5, "deviceInternalFreeSpace"    # J
    .param p7, "downloadedCacheSize"    # J
    .param p9, "unDownloadedCacheSize"    # J

    .prologue
    .line 166
    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    .line 167
    invoke-virtual/range {v1 .. v7}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->findSpaceNeededToMaintainFreeSpaceMin(JJJ)J

    move-result-wide v10

    .local v10, "spaceNeededToMaintainFreeSpaceMin":J
    move-object v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    .line 173
    invoke-virtual/range {v1 .. v7}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->findSpaceNeededToMaintainCacheSizeMax(JJJ)J

    move-result-wide v8

    .line 178
    .local v8, "spaceNeededToMaintainCacheSizeMax":J
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public findSpaceNeededToMaintainCacheSizeMax(JJJ)J
    .locals 9
    .param p1, "cacheSizeMax"    # J
    .param p3, "downloadedCacheSize"    # J
    .param p5, "unDownloadedCacheSize"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 220
    cmp-long v4, p1, v6

    if-gez v4, :cond_0

    const-wide/16 p1, 0x0

    .line 221
    :cond_0
    cmp-long v4, p3, v6

    if-gez v4, :cond_1

    const-wide/16 p3, 0x0

    .line 222
    :cond_1
    cmp-long v4, p5, v6

    if-gez v4, :cond_2

    const-wide/16 p5, 0x0

    .line 224
    :cond_2
    add-long v2, p3, p5

    .line 225
    .local v2, "totalCacheSize":J
    const-wide/16 v0, 0x0

    .line 227
    .local v0, "spaceNeededToMaintainCacheSizeMax":J
    cmp-long v4, v2, p1

    if-lez v4, :cond_3

    .line 228
    sub-long v0, v2, p1

    .line 231
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CacheSizeMax: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CacheSize (downloaded + undownloaded): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 232
    invoke-static {v2, v3}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Free Space needed to purge "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 233
    invoke-static {v0, v1}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-static {v4}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 235
    return-wide v0
.end method

.method public findSpaceNeededToMaintainFreeSpaceMin(JJJ)J
    .locals 9
    .param p1, "freeSpaceMin"    # J
    .param p3, "deviceInternalFreeSpace"    # J
    .param p5, "unDownloadedCacheSize"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 190
    cmp-long v4, p1, v6

    if-gez v4, :cond_0

    const-wide/16 p1, 0x0

    .line 191
    :cond_0
    cmp-long v4, p5, v6

    if-gez v4, :cond_1

    const-wide/16 p5, 0x0

    .line 197
    :cond_1
    sub-long v0, p3, p5

    .line 199
    .local v0, "deviceFreeSpaceAfterCaching":J
    const-wide/16 v2, 0x0

    .line 201
    .local v2, "freeSpaceNeeded":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceFreeSpaceAfterCaching: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 203
    cmp-long v4, p1, v0

    if-lez v4, :cond_2

    .line 204
    sub-long v2, p1, v0

    .line 207
    :cond_2
    return-wide v2
.end method

.method public run()V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->executeCachingAlgorithm()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception in caching algorithm."

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shouldClearCacheByEvaluatingCacheSizeMax(JJJJ)Z
    .locals 5
    .param p1, "freeSpaceMin"    # J
    .param p3, "cacheSizeMax"    # J
    .param p5, "deviceInternalFreeSpace"    # J
    .param p7, "cacheDirectorySize"    # J

    .prologue
    .line 126
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gez v2, :cond_0

    const-wide/16 p3, 0x0

    .line 127
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    const-wide/16 p1, 0x0

    .line 128
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_2

    const-wide/16 p5, 0x0

    .line 129
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-gez v2, :cond_3

    const-wide/16 p7, 0x0

    .line 136
    :cond_3
    add-long v0, p5, p7

    .line 137
    .local v0, "maxDeviceFreeSpaceAvailable":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum DeviceFreeSpaceAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/fusepowered/nx/common/Utilities;->convertBytesToMbAsString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 139
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_4

    .line 140
    const-string v2, "CacheSizeMax is zero, deleting all the cached files."

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x1

    .line 150
    :goto_0
    return v2

    .line 143
    :cond_4
    cmp-long v2, p1, v0

    if-lez v2, :cond_5

    .line 146
    const-string v2, "FreeSpaceMin is greater than maximum available device free space, deleting all the cached files."

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x1

    goto :goto_0

    .line 150
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method syncDBRecordsWithIncomingCacheFiles(JLjava/util/List;)V
    .locals 7
    .param p1, "offerId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p3, "serverCacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getMD5InOffer(J)Ljava/util/Set;

    move-result-object v0

    .line 365
    .local v0, "dbCacheFilesMD5Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 368
    .local v3, "serverCacheFilesMD5Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 369
    .local v2, "serverCacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    .end local v2    # "serverCacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 373
    .local v1, "dbMD5":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting Cache File from DB during syncing with server cache list for offer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->deleteCacheFilesMatchingOfferId(JLjava/lang/String;)V

    goto :goto_1

    .line 378
    .end local v1    # "dbMD5":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method updateDatabaseWithIncomingData(JLjava/util/List;)V
    .locals 11
    .param p1, "offerId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p3, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    if-nez p3, :cond_1

    .line 353
    :cond_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;->syncDBRecordsWithIncomingCacheFiles(JLjava/util/List;)V

    .line 306
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 307
    .local v3, "incomingCacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "incomingCacheFileMd5":Ljava/lang/String;
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getTopOneCacheFileMatchingMD5(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/business/CacheFile;

    move-result-object v0

    .line 310
    .local v0, "cacheFileInDB":Lcom/fusepowered/nx/monetization/business/CacheFile;
    sget-object v5, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 312
    .local v5, "status":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    if-nez v0, :cond_2

    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File not present in DB, adding for Downloading."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    .line 316
    :try_start_0
    invoke-virtual {v3, v5}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 317
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->addCache(Lcom/fusepowered/nx/monetization/business/CacheFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 327
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v7

    .line 328
    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getExpiryTime()J

    move-result-wide v8

    .line 327
    invoke-virtual {v7, v4, v8, v9}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateCacheExpiryTime(Ljava/lang/String;J)V

    .line 331
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileStatus()Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v1

    .line 334
    .local v1, "dbFileStatus":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    sget-object v7, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    if-eq v1, v7, :cond_3

    sget-object v7, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    if-eq v1, v7, :cond_3

    sget-object v7, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    if-ne v1, v7, :cond_4

    .line 335
    :cond_3
    move-object v5, v1

    .line 340
    :cond_4
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v7

    .line 341
    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getRelativeUrl()Ljava/lang/String;

    move-result-object v8

    .line 340
    invoke-virtual {v7, v4, p1, p2, v8}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->isOfferIdAndRelativeUrlFoundForMD5(Ljava/lang/String;JLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 343
    :try_start_1
    invoke-virtual {v3, v5}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 344
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->addCache(Lcom/fusepowered/nx/monetization/business/CacheFile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 345
    :catch_1
    move-exception v2

    .line 346
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateFileStatusWithMD5(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    goto/16 :goto_0
.end method
