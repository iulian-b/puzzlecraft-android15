.class public Lcom/fusepowered/m2/common/CacheService;
.super Ljava/lang/Object;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/common/CacheService$DiskLruCachePutTask;,
        Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;,
        Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;
    }
.end annotation


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final DISK_CACHE_INDEX:I = 0x0

.field static final UNIQUE_CACHE_NAME:Ljava/lang/String; = "mopub-cache"

.field private static final VALUE_COUNT:I = 0x1

.field private static sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method public static clearAndNullCaches()V
    .locals 3
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 235
    sget-object v1, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    sget-object v1, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    invoke-virtual {v1}, Lcom/fusepowered/m2/common/DiskLruCache;->delete()V

    .line 238
    const/4 v1, 0x0

    sput-object v1, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .local v0, "ignore":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 239
    .end local v0    # "ignore":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 240
    .restart local v0    # "ignore":Ljava/io/IOException;
    sput-object v2, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    goto :goto_0
.end method

.method public static containsKeyDiskCache(Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 72
    sget-object v3, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    if-nez v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v2

    .line 77
    :cond_1
    :try_start_0
    sget-object v3, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    invoke-static {p0}, Lcom/fusepowered/m2/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fusepowered/m2/common/DiskLruCache;->get(Ljava/lang/String;)Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    .local v1, "snapshot":Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "snapshot":Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/fusepowered/m2/common/util/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDiskCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mopub-cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDiskLruCache()Lcom/fusepowered/m2/common/DiskLruCache;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    sget-object v0, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    return-object v0
.end method

.method public static getFilePathDiskCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    invoke-virtual {v1}, Lcom/fusepowered/m2/common/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/fusepowered/m2/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFromDiskCache(Ljava/lang/String;)[B
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 100
    sget-object v6, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    if-nez v6, :cond_1

    move-object v1, v5

    .line 130
    :cond_0
    :goto_0
    return-object v1

    .line 104
    :cond_1
    const/4 v1, 0x0

    .line 105
    .local v1, "bytes":[B
    const/4 v4, 0x0

    .line 107
    .local v4, "snapshot":Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;
    :try_start_0
    sget-object v6, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    invoke-static {p0}, Lcom/fusepowered/m2/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fusepowered/m2/common/DiskLruCache;->get(Ljava/lang/String;)Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 108
    if-nez v4, :cond_3

    .line 125
    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {v4}, Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;->close()V

    :cond_2
    move-object v1, v5

    goto :goto_0

    .line 112
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v5}, Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    .line 113
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_4

    .line 114
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v6

    long-to-int v5, v6

    new-array v1, v5, [B

    .line 115
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    .local v0, "buffIn":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-static {v0, v1}, Lcom/fusepowered/m2/common/util/Streams;->readStream(Ljava/io/InputStream;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :try_start_3
    invoke-static {v0}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    .end local v0    # "buffIn":Ljava/io/BufferedInputStream;
    :cond_4
    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {v4}, Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 119
    .restart local v0    # "buffIn":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-static {v0}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    .end local v0    # "buffIn":Ljava/io/BufferedInputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "Unable to get from DiskLruCache"

    invoke-static {v5, v2}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {v4}, Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 125
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    if-eqz v4, :cond_5

    .line 126
    invoke-virtual {v4}, Lcom/fusepowered/m2/common/DiskLruCache$Snapshot;->close()V

    :cond_5
    throw v5
.end method

.method public static getFromDiskCacheAsync(Ljava/lang/String;Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "diskLruCacheGetListener"    # Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;

    .prologue
    .line 134
    new-instance v0, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;-><init>(Ljava/lang/String;Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/fusepowered/m2/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    .line 60
    return-void
.end method

.method public static initializeDiskCache(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 37
    if-nez p0, :cond_1

    .line 38
    const/4 v4, 0x0

    .line 55
    :cond_0
    :goto_0
    return v4

    .line 41
    :cond_1
    sget-object v5, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    if-nez v5, :cond_0

    .line 42
    invoke-static {p0}, Lcom/fusepowered/m2/common/CacheService;->getDiskCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, "cacheDirectory":Ljava/io/File;
    invoke-static {v0}, Lcom/fusepowered/m2/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;)J

    move-result-wide v2

    .line 45
    .local v2, "diskCacheSizeBytes":J
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {v0, v5, v6, v2, v3}, Lcom/fusepowered/m2/common/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/fusepowered/m2/common/DiskLruCache;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Unable to create DiskLruCache"

    invoke-static {v5, v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static putToDiskCache(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 142
    sget-object v4, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    if-nez v4, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v3

    .line 146
    :cond_1
    const/4 v1, 0x0

    .line 148
    .local v1, "editor":Lcom/fusepowered/m2/common/DiskLruCache$Editor;
    :try_start_0
    sget-object v4, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    invoke-static {p0}, Lcom/fusepowered/m2/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/m2/common/DiskLruCache;->edit(Ljava/lang/String;)Lcom/fusepowered/m2/common/DiskLruCache$Editor;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 155
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/fusepowered/m2/common/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 157
    .local v2, "outputStream":Ljava/io/OutputStream;
    invoke-static {p1, v2}, Lcom/fusepowered/m2/common/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 158
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 159
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 161
    sget-object v4, Lcom/fusepowered/m2/common/CacheService;->sDiskLruCache:Lcom/fusepowered/m2/common/DiskLruCache;

    invoke-virtual {v4}, Lcom/fusepowered/m2/common/DiskLruCache;->flush()V

    .line 162
    invoke-virtual {v1}, Lcom/fusepowered/m2/common/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v3, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Unable to put to DiskLruCache"

    invoke-static {v4, v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    if-eqz v1, :cond_0

    .line 167
    :try_start_1
    invoke-virtual {v1}, Lcom/fusepowered/m2/common/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 169
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static putToDiskCache(Ljava/lang/String;[B)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "content"    # [B

    .prologue
    .line 138
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v0}, Lcom/fusepowered/m2/common/CacheService;->putToDiskCache(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public static putToDiskCacheAsync(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "content"    # [B

    .prologue
    .line 178
    new-instance v0, Lcom/fusepowered/m2/common/CacheService$DiskLruCachePutTask;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/common/CacheService$DiskLruCachePutTask;-><init>(Ljava/lang/String;[B)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/CacheService$DiskLruCachePutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    return-void
.end method
