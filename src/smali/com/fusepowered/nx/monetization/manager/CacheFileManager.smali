.class public Lcom/fusepowered/nx/monetization/manager/CacheFileManager;
.super Ljava/lang/Object;
.source "CacheFileManager.java"


# static fields
.field private static final NATIVEX_CACHE_DIRECTORY:Ljava/lang/String; = "/nativex/ad_assets/"

.field private static final pathSeparator:Ljava/lang/String; = "/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanUpCacheDB()V
    .locals 6

    .prologue
    .line 76
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getAllCacheFilesByMD5()Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 78
    .local v0, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->doesFileExistForCacheFile(Ljava/lang/String;)Z

    move-result v2

    .line 79
    .local v2, "fileExits":Z
    if-nez v2, :cond_0

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up record from cache DB that doesn\'t have associated physical cached file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/nx/common/Log;->i(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->deleteCacheFilesMatchingMD5(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    .end local v2    # "fileExits":Z
    :cond_1
    return-void
.end method

.method public static cleanUpNativeXCachedDirectory()V
    .locals 9

    .prologue
    .line 92
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getNativeXCacheDirectoryPath()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "internalCacheDirectoryPath":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 94
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileNamesOfAllCacheFiles()Ljava/util/Set;

    move-result-object v1

    .line 95
    .local v1, "fileNamesOfCacheFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v4, "subDirectoryFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 98
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_3

    .line 99
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v0, v2, v5

    .line 100
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 99
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cleaning up unknown file from Nativex cache directory. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/nx/common/Log;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAILED to clean up unknown file from Nativex cache directory. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileNamesOfCacheFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "files":[Ljava/io/File;
    .end local v4    # "subDirectoryFile":Ljava/io/File;
    :cond_3
    return-void
.end method

.method public static createNativeXCacheDirectoryIfNotExists()V
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getNativeXCacheDirectoryPath()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "nativeXCacheDirectoryPath":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 37
    const-string v2, "Couldn\'t Create Nativex Cache directory. Couldn\'t find the application\'s files directory path."

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "nativeXCacheDirectoryFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static deleteAllFiles()V
    .locals 5

    .prologue
    .line 126
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getNativeXCacheDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "cacheDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 128
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static deleteFromInternalCache(Ljava/lang/String;)V
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getNativeXCacheDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "internalCacheDirectoryPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "internalCacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 123
    .end local v1    # "internalCacheFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static doesFileExistForCacheFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getNativeXCacheDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "internalCacheDirectoryPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 135
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "internalCacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 140
    .end local v1    # "internalCacheFile":Ljava/io/File;
    :goto_0
    return v2

    .line 138
    :cond_0
    const-string v2, "Could not find the application files directory path."

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 140
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySizeInBytes()J
    .locals 8

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 65
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 67
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 68
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getInternalCacheDirectorySizeInBytes()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 144
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getNativeXCacheDirectoryPath()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "internalCacheDirectoryPath":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 161
    :cond_0
    return-wide v4

    .line 149
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v3, "internalCacheFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 152
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v6, v1

    if-eqz v6, :cond_0

    .line 156
    const-wide/16 v4, 0x0

    .line 157
    .local v4, "totalSize":J
    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v1, v6

    .line 158
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 157
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static getNativeXCacheDirectoryPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getApplicationFilesDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "appFilesDirectoryPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/nativex/ad_assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
