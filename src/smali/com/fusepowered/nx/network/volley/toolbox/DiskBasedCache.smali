.class public Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;,
        Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20120504

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field private static final HYSTERESIS_FACTOR:F = 0.9f


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDirectory"    # Ljava/io/File;

    .prologue
    .line 83
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "maxCacheSizeInBytes"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 73
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 74
    iput p2, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 75
    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 237
    .local v0, "firstHalfLength":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "localFilename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    return-object v1
.end method

.method private pruneIfNeeded(I)V
    .locals 14
    .param p1, "neededSpace"    # I

    .prologue
    .line 254
    iget-wide v10, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v12, p1

    add-long/2addr v10, v12

    iget v7, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-gez v7, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    sget-boolean v7, Lcom/fusepowered/nx/network/volley/VolleyLog;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 258
    const-string v7, "Pruning old cache entries."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v10}, Lcom/fusepowered/nx/network/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :cond_2
    iget-wide v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 262
    .local v0, "before":J
    const/4 v6, 0x0

    .line 263
    .local v6, "prunedFiles":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 265
    .local v8, "startTime":J
    iget-object v7, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 266
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;>;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 267
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 268
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 269
    .local v3, "e":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-object v7, v3, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    .line 270
    .local v2, "deleted":Z
    if-eqz v2, :cond_5

    .line 271
    iget-wide v10, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v12, v3, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 276
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 277
    add-int/lit8 v6, v6, 0x1

    .line 279
    iget-wide v10, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v12, p1

    add-long/2addr v10, v12

    long-to-float v7, v10

    iget v10, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v10, v11

    cmpg-float v7, v7, v10

    if-gez v7, :cond_3

    .line 284
    .end local v2    # "deleted":Z
    .end local v3    # "e":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    :cond_4
    sget-boolean v7, Lcom/fusepowered/nx/network/volley/VolleyLog;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 285
    const-string v7, "pruned %d files, %d bytes, %d ms"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 286
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-wide v12, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    sub-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    .line 285
    invoke-static {v7, v10}, Lcom/fusepowered/nx/network/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 273
    .restart local v2    # "deleted":Z
    .restart local v3    # "e":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    :cond_5
    const-string v7, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 274
    invoke-direct {p0, v12}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 273
    invoke-static {v7, v10}, Lcom/fusepowered/nx/network/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private putEntry(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;

    .prologue
    .line 296
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    iget-wide v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p2, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 300
    .local v0, "oldEntry":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-wide v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p2, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-wide v6, v0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    goto :goto_0
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 476
    .local v0, "b":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 477
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 479
    :cond_0
    return v0
.end method

.method static readInt(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "n":I
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 492
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 493
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 494
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 495
    return v0
.end method

.method static readLong(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xff

    .line 510
    const-wide/16 v0, 0x0

    .line 511
    .local v0, "n":J
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 512
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 513
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 514
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 515
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 516
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 517
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 518
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 519
    return-wide v0
.end method

.method static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 530
    .local v1, "n":I
    invoke-static {p0, v1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 531
    .local v0, "b":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method static readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 548
    .local v3, "size":I
    if-nez v3, :cond_0

    .line 549
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 551
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 552
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 556
    .restart local v0    # "i":I
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method

.method private removeEntry(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 310
    .local v0, "entry":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    if-eqz v0, :cond_0

    .line 311
    iget-wide v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v4, v0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 312
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    return-void
.end method

.method private static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    new-array v0, p1, [B

    .line 322
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 323
    .local v2, "pos":I
    :goto_0
    if-ge v2, p1, :cond_0

    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 324
    add-int/2addr v2, v1

    goto :goto_0

    .line 326
    .end local v1    # "count":I
    :cond_0
    if-eq v2, p1, :cond_1

    .line 327
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 329
    :cond_1
    return-object v0
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 484
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 485
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 486
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 487
    return-void
.end method

.method static writeLong(Ljava/io/OutputStream;J)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 500
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 501
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 502
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 503
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 504
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 505
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 506
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 507
    return-void
.end method

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 524
    .local v0, "b":[B
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 525
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 526
    return-void
.end method

.method static writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 536
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 537
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 538
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 539
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 544
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 92
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 93
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 94
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 98
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 99
    const-string v2, "Cache cleared."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/fusepowered/nx/network/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 91
    .end local v1    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/fusepowered/nx/network/volley/Cache$Entry;
    .locals 14
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    .local v4, "entry":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    if-nez v4, :cond_1

    .line 132
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 113
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 114
    .local v5, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 118
    .local v0, "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 119
    .local v6, "fileLength":J
    new-instance v1, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$1;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .end local v0    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    .local v1, "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    :try_start_3
    invoke-static {v1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 121
    invoke-static {v1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;->access$100(Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;)I

    move-result v10

    int-to-long v10, v10

    sub-long v10, v6, v10

    long-to-int v10, v10

    invoke-static {v1, v10}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 122
    .local v2, "data":[B
    invoke-virtual {v4, v2}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/fusepowered/nx/network/volley/Cache$Entry;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v10

    .line 128
    if-eqz v1, :cond_2

    .line 130
    :try_start_4
    invoke-virtual {v1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v9, v10

    .line 132
    goto :goto_0

    .line 131
    :catch_0
    move-exception v8

    .line 132
    .local v8, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 123
    .end local v1    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    .end local v2    # "data":[B
    .end local v6    # "fileLength":J
    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v0    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catch_1
    move-exception v3

    .line 124
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v10, "%s: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/nx/network/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 128
    if-eqz v0, :cond_0

    .line 130
    :try_start_6
    invoke-virtual {v0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 131
    :catch_2
    move-exception v8

    .line 132
    .restart local v8    # "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 128
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v0, :cond_3

    .line 130
    :try_start_7
    invoke-virtual {v0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 132
    :cond_3
    :try_start_8
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 107
    .end local v0    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    .end local v4    # "entry":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v5    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 131
    .restart local v0    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v4    # "entry":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v5    # "file":Ljava/io/File;
    :catch_3
    move-exception v8

    .line 132
    .restart local v8    # "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 128
    .end local v0    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v6    # "fileLength":J
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v0    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    goto :goto_2

    .line 123
    .end local v0    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v1    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v0    # "cis":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CountingInputStream;
    goto :goto_1
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 145
    iget-object v6, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    .line 146
    const-string v6, "Unable to create cache dir %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/fusepowered/nx/network/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 152
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 155
    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 158
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {v5}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v1

    .line 160
    .local v1, "entry":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 161
    iget-object v8, v1, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v8, v1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 168
    if-eqz v5, :cond_2

    .line 169
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v4, v5

    .line 155
    .end local v1    # "entry":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 171
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "entry":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    move-object v4, v5

    .line 172
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 162
    .end local v1    # "entry":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v2, :cond_4

    .line 164
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    :cond_4
    if-eqz v4, :cond_3

    .line 169
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 171
    :catch_2
    move-exception v8

    goto :goto_1

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 168
    :goto_3
    if-eqz v4, :cond_5

    .line 169
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 171
    :cond_5
    :goto_4
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 144
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 171
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 167
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 162
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fullExpire"    # Z

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/fusepowered/nx/network/volley/Cache$Entry;

    move-result-object v0

    .line 184
    .local v0, "entry":Lcom/fusepowered/nx/network/volley/Cache$Entry;
    if-eqz v0, :cond_1

    .line 185
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/fusepowered/nx/network/volley/Cache$Entry;->softTtl:J

    .line 186
    if-eqz p2, :cond_0

    .line 187
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/fusepowered/nx/network/volley/Cache$Entry;->ttl:J

    .line 189
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Cache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_1
    monitor-exit p0

    return-void

    .line 183
    .end local v0    # "entry":Lcom/fusepowered/nx/network/volley/Cache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Cache$Entry;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/fusepowered/nx/network/volley/Cache$Entry;

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v4, p2, Lcom/fusepowered/nx/network/volley/Cache$Entry;->data:[B

    array-length v4, v4

    invoke-direct {p0, v4}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->pruneIfNeeded(I)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 202
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 203
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v1, p1, p2}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Cache$Entry;)V

    .line 204
    .local v1, "e":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    invoke-virtual {v1, v3}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    .line 205
    iget-object v4, p2, Lcom/fusepowered/nx/network/volley/Cache$Entry;->data:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 206
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 207
    invoke-direct {p0, p1, v1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .end local v1    # "e":Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 209
    :catch_0
    move-exception v4

    .line 211
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 212
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 213
    const-string v4, "Could not clean up file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/fusepowered/nx/network/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "deleted":Z
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 223
    .local v0, "deleted":Z
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    .line 224
    if-nez v0, :cond_0

    .line 225
    const-string v1, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 226
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 225
    invoke-static {v1, v2}, Lcom/fusepowered/nx/network/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    monitor-exit p0

    return-void

    .line 222
    .end local v0    # "deleted":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
