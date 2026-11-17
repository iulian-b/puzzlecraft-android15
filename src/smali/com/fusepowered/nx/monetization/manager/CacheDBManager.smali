.class public Lcom/fusepowered/nx/monetization/manager/CacheDBManager;
.super Ljava/lang/Object;
.source "CacheDBManager.java"


# static fields
.field private static cacheDB:Landroid/database/sqlite/SQLiteDatabase;

.field private static cacheDBCreator:Lcom/fusepowered/nx/monetization/database/CacheDatabase;

.field private static instance:Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

.field private static final singletonLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->singletonLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->open()V

    .line 58
    return-void
.end method

.method private getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 740
    invoke-static {}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->values()[Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 741
    .local v0, "s":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 745
    .end local v0    # "s":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    :goto_1
    return-object v0

    .line 740
    .restart local v0    # "s":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    .end local v0    # "s":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;
    .locals 3

    .prologue
    .line 38
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    if-nez v1, :cond_1

    .line 39
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->singletonLock:Ljava/lang/Object;

    monitor-enter v2

    .line 40
    :try_start_0
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;-><init>()V

    sput-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    .line 43
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDBCreator:Lcom/fusepowered/nx/monetization/database/CacheDatabase;

    if-nez v1, :cond_2

    .line 48
    :try_start_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->open()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    .local v0, "e":Landroid/database/SQLException;
    :cond_2
    :goto_0
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    return-object v1

    .line 43
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .restart local v0    # "e":Landroid/database/SQLException;
    const-string v1, "Exception in opening caching database access."

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/fusepowered/nx/monetization/database/CacheDatabase;

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/monetization/database/CacheDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDBCreator:Lcom/fusepowered/nx/monetization/database/CacheDatabase;

    .line 68
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDBCreator:Lcom/fusepowered/nx/monetization/database/CacheDatabase;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/database/CacheDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    :cond_0
    return-void
.end method

.method public static release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDBCreator:Lcom/fusepowered/nx/monetization/database/CacheDatabase;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDBCreator:Lcom/fusepowered/nx/monetization/database/CacheDatabase;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/database/CacheDatabase;->close()V

    .line 77
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    :cond_1
    sput-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDBCreator:Lcom/fusepowered/nx/monetization/database/CacheDatabase;

    .line 82
    sput-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    sput-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->instance:Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    .line 84
    return-void
.end method


# virtual methods
.method public addCache(Lcom/fusepowered/nx/monetization/business/CacheFile;)V
    .locals 4
    .param p1, "cacheFile"    # Lcom/fusepowered/nx/monetization/business/CacheFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 87
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "OfferId"

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getOfferId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v1, "FileStatus"

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileStatus()Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "ExpirationDateUTC"

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getExpiryTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "FileSize"

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "RelativeUrl"

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getRelativeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "MD5"

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "Ext"

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "CDN"

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getCDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cache_files"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method addCacheUtilFreeSpaceMin(J)V
    .locals 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 869
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 883
    :goto_0
    return-void

    .line 873
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 874
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "cache_util"

    const-string v3, "free_space_min"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v2, "cache_util_value_int"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 878
    :try_start_0
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cache_utils"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 881
    throw v0
.end method

.method public addDownloadId(Lcom/fusepowered/nx/monetization/business/CacheFile;)I
    .locals 4
    .param p1, "cacheFile"    # Lcom/fusepowered/nx/monetization/business/CacheFile;

    .prologue
    .line 934
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 935
    const/4 v1, -0x1

    .line 941
    :goto_0
    return v1

    .line 938
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 939
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "cachefile"

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download_map"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0
.end method

.method checkFileStatusDeletedForOffer(J)V
    .locals 13
    .param p1, "offerId"    # J

    .prologue
    const/4 v2, 0x0

    .line 776
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    const-string v3, "OfferId=?"

    .line 781
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 783
    .local v4, "args":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v9, "cacheIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v12, 0x0

    .line 786
    .local v12, "statusOtherThanDelete":Z
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 788
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 789
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    :cond_2
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v11

    .line 792
    .local v11, "status":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    if-ne v11, v0, :cond_4

    .line 793
    const-string v0, "cache_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 801
    .end local v11    # "status":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    :cond_3
    if-nez v12, :cond_5

    .line 803
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 804
    .local v8, "cacheId":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->deleteCacheFileWithCacheId(J)V

    goto :goto_2

    .line 795
    .end local v8    # "cacheId":Ljava/lang/Long;
    .restart local v11    # "status":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    :cond_4
    const/4 v12, 0x1

    goto :goto_1

    .line 808
    .end local v11    # "status":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    :cond_5
    if-eqz v10, :cond_0

    .line 809
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public deleteAllCacheFiles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 860
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 865
    :goto_0
    return-void

    .line 864
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteAllCacheFilesExceptInUse()V
    .locals 4

    .prologue
    .line 847
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 854
    :goto_0
    return-void

    .line 851
    :cond_0
    const-string v0, "FileStatus<>?"

    .line 852
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 853
    .local v1, "args":[Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cache_files"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method deleteCacheFileWithCacheId(J)V
    .locals 5
    .param p1, "cacheId"    # J

    .prologue
    .line 813
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 821
    :goto_0
    return-void

    .line 817
    :cond_0
    const-string v0, "cache_id=? AND FileStatus<>?"

    .line 818
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 820
    .local v1, "args":[Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cache_files"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteCacheFilesMatchingMD5(Ljava/lang/String;)V
    .locals 4
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 836
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 844
    :goto_0
    return-void

    .line 840
    :cond_0
    const-string v0, "MD5=? AND FileStatus<>?"

    .line 841
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 843
    .local v1, "args":[Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cache_files"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteCacheFilesMatchingOfferId(JLjava/lang/String;)V
    .locals 5
    .param p1, "offerId"    # J
    .param p3, "md5"    # Ljava/lang/String;

    .prologue
    .line 824
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 833
    :goto_0
    return-void

    .line 828
    :cond_0
    const-string v0, "OfferId=? AND MD5=? AND FileStatus<>?"

    .line 830
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 832
    .local v1, "args":[Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cache_files"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteDownloadId(I)V
    .locals 4
    .param p1, "downloadId"    # I

    .prologue
    .line 945
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 953
    :goto_0
    return-void

    .line 949
    :cond_0
    const-string v0, "download_id=?"

    .line 950
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 952
    .local v1, "args":[Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "download_map"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteOffersWithFileStatusDeleted()V
    .locals 4

    .prologue
    .line 753
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT DISTINCT OfferId FROM cache_files"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 758
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 759
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 761
    :cond_2
    const-string v1, "OfferId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->checkFileStatusDeletedForOffer(J)V

    .line 762
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 766
    :cond_3
    if-eqz v0, :cond_0

    .line 767
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getAllCacheFiles()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 165
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-object v9

    .line 171
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 174
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 175
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    :cond_2
    new-instance v8, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/fusepowered/nx/monetization/business/CacheFile;-><init>()V

    .line 178
    .local v8, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 179
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 180
    const-string v0, "MD5"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 181
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 182
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 183
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileSize(J)V

    .line 184
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setRelativeUrl(Ljava/lang/String;)V

    .line 185
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setOfferId(J)V

    .line 186
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    .end local v8    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_3
    if-eqz v10, :cond_0

    .line 192
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getAllCacheFilesByMD5()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v9

    .line 209
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    const-string v5, "MD5"

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 212
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 213
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    :cond_2
    new-instance v8, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/fusepowered/nx/monetization/business/CacheFile;-><init>()V

    .line 216
    .local v8, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 217
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 218
    const-string v0, "MD5"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 219
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 220
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 221
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileSize(J)V

    .line 222
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setRelativeUrl(Ljava/lang/String;)V

    .line 223
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setOfferId(J)V

    .line 224
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    .end local v8    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_3
    if-eqz v10, :cond_0

    .line 230
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getAllCacheFilesForOffer(J)Ljava/util/List;
    .locals 11
    .param p1, "offerId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 445
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-object v9

    .line 451
    :cond_1
    const-string v3, "OfferId=?"

    .line 452
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 454
    .local v4, "args":[Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 457
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 458
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    :cond_2
    new-instance v8, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/fusepowered/nx/monetization/business/CacheFile;-><init>()V

    .line 461
    .local v8, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 462
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 463
    const-string v0, "MD5"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 464
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 465
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 466
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileSize(J)V

    .line 467
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setRelativeUrl(Ljava/lang/String;)V

    .line 468
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setOfferId(J)V

    .line 469
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    .end local v8    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_3
    if-eqz v10, :cond_0

    .line 475
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getCacheFileForDownloadId(I)Lcom/fusepowered/nx/monetization/business/CacheFile;
    .locals 12
    .param p1, "downloadId"    # I

    .prologue
    const/4 v2, 0x0

    .line 956
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 982
    :goto_0
    return-object v2

    .line 960
    :cond_0
    const-string v3, "download_id=?"

    .line 961
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 963
    .local v4, "args":[Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_map"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 966
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 967
    .local v10, "file":Lcom/fusepowered/nx/monetization/business/CacheFile;
    if-eqz v9, :cond_3

    .line 968
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 970
    :cond_1
    const-string v0, "cachefile"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 971
    .local v8, "cacheFileJson":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 972
    new-instance v11, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v11}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    .line 973
    .local v11, "gson":Lcom/fusepowered/nx/gson/Gson;
    const-class v0, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-virtual {v11, v8, v0}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "file":Lcom/fusepowered/nx/monetization/business/CacheFile;
    check-cast v10, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 975
    .end local v11    # "gson":Lcom/fusepowered/nx/gson/Gson;
    .restart local v10    # "file":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 979
    .end local v8    # "cacheFileJson":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_4

    .line 980
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, v10

    .line 982
    goto :goto_0
.end method

.method public getCacheFilesForDownload()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 284
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-object v9

    .line 290
    :cond_1
    const-string v3, "FileStatus=?"

    .line 291
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 293
    .local v4, "args":[Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    const-string v5, "MD5"

    const-string v7, "ExpirationDateUTC DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 296
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 297
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    :cond_2
    new-instance v8, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/fusepowered/nx/monetization/business/CacheFile;-><init>()V

    .line 300
    .local v8, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 301
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 302
    const-string v0, "MD5"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 303
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 304
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 305
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileSize(J)V

    .line 306
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setRelativeUrl(Ljava/lang/String;)V

    .line 307
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setOfferId(J)V

    .line 308
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    .end local v8    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_3
    if-eqz v10, :cond_0

    .line 314
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getCacheFilesForFileStatusDeleted()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 484
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-object v9

    .line 490
    :cond_1
    const-string v3, "FileStatus=?"

    .line 491
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 493
    .local v4, "args":[Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 496
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 497
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    :cond_2
    new-instance v8, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/fusepowered/nx/monetization/business/CacheFile;-><init>()V

    .line 500
    .local v8, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 501
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 502
    const-string v0, "MD5"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 503
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 504
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 505
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileSize(J)V

    .line 506
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setRelativeUrl(Ljava/lang/String;)V

    .line 507
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setOfferId(J)V

    .line 508
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    .end local v8    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_3
    if-eqz v10, :cond_0

    .line 514
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getCacheFilesForPurging()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 242
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-object v9

    .line 248
    :cond_1
    const-string v3, "FileStatus<>? AND FileStatus<>?"

    .line 249
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 251
    .local v4, "args":[Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    const-string v5, "MD5"

    const-string v7, "ExpirationDateUTC ASC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 254
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 255
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    :cond_2
    new-instance v8, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/fusepowered/nx/monetization/business/CacheFile;-><init>()V

    .line 258
    .local v8, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 259
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 260
    const-string v0, "MD5"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 261
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 262
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 263
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileSize(J)V

    .line 264
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setRelativeUrl(Ljava/lang/String;)V

    .line 265
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setOfferId(J)V

    .line 266
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    .end local v8    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_3
    if-eqz v10, :cond_0

    .line 272
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getCacheFilesMatchingMD5(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 325
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v8, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-object v8

    .line 331
    :cond_1
    const-string v3, "MD5=?"

    .line 333
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 334
    .local v4, "args":[Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 338
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 339
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    :cond_2
    new-instance v10, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-direct {v10}, Lcom/fusepowered/nx/monetization/business/CacheFile;-><init>()V

    .line 342
    .local v10, "file":Lcom/fusepowered/nx/monetization/business/CacheFile;
    const-string v0, "CDN"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 343
    const-string v0, "Ext"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 344
    const-string v0, "MD5"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 345
    const-string v0, "FileStatus"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 346
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 347
    const-string v0, "FileSize"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileSize(J)V

    .line 348
    const-string v0, "RelativeUrl"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setRelativeUrl(Ljava/lang/String;)V

    .line 349
    const-string v0, "OfferId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setOfferId(J)V

    .line 350
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 355
    .end local v10    # "file":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_3
    if-eqz v9, :cond_0

    .line 356
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getCacheUtilIntegerFreeSpaceMin()J
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 908
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 909
    const-wide/16 v10, 0x0

    .line 930
    :cond_0
    :goto_0
    return-wide v10

    .line 912
    :cond_1
    const-string v3, "cache_util=?"

    .line 913
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "free_space_min"

    aput-object v1, v4, v0

    .line 915
    .local v4, "args":[Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 916
    .local v10, "value":J
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_utils"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 919
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 920
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    :cond_2
    const-string v0, "cache_util_value_int"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 923
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 927
    :cond_3
    if-eqz v8, :cond_0

    .line 928
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getDownloadMap()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/DownloadMap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 987
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v11, "downloadMapList":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/DownloadMap;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-object v11

    .line 992
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_map"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 994
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 995
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 997
    :cond_2
    new-instance v13, Lcom/fusepowered/nx/monetization/business/DownloadMap;

    invoke-direct {v13}, Lcom/fusepowered/nx/monetization/business/DownloadMap;-><init>()V

    .line 998
    .local v13, "map":Lcom/fusepowered/nx/monetization/business/DownloadMap;
    const-string v0, "download_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/fusepowered/nx/monetization/business/DownloadMap;->setDownloadId(I)V

    .line 999
    const-string v0, "cachefile"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1000
    .local v9, "cacheFileJson":Ljava/lang/String;
    new-instance v12, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v12}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    .line 1001
    .local v12, "gson":Lcom/fusepowered/nx/gson/Gson;
    const-class v0, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-virtual {v12, v9, v0}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 1002
    .local v8, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    invoke-virtual {v13, v8}, Lcom/fusepowered/nx/monetization/business/DownloadMap;->setCacheFile(Lcom/fusepowered/nx/monetization/business/CacheFile;)V

    .line 1003
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1008
    .end local v8    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    .end local v9    # "cacheFileJson":Ljava/lang/String;
    .end local v12    # "gson":Lcom/fusepowered/nx/gson/Gson;
    .end local v13    # "map":Lcom/fusepowered/nx/monetization/business/DownloadMap;
    :cond_3
    if-eqz v10, :cond_0

    .line 1009
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getFileNamesOfAllCacheFiles()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 558
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 560
    .local v10, "fileNameList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-object v10

    .line 564
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    const-string v5, "MD5"

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 567
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 568
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 570
    :cond_2
    const-string v0, "MD5"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 571
    .local v11, "md5":Ljava/lang/String;
    const-string v0, "Ext"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 572
    .local v9, "ext":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    .end local v9    # "ext":Ljava/lang/String;
    .end local v11    # "md5":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_0

    .line 578
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getMD5InOffer(J)Ljava/util/Set;
    .locals 11
    .param p1, "offerId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 525
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 527
    .local v9, "md5List":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-object v9

    .line 531
    :cond_1
    const-string v3, "OfferId=?"

    .line 532
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 535
    .local v4, "args":[Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    const-string v5, "MD5"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 538
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 539
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    :cond_2
    const-string v0, "MD5"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 546
    :cond_3
    if-eqz v8, :cond_0

    .line 547
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getOffersCachedList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v1, "offersCachedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v4, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-object v1

    .line 596
    :cond_1
    sget-object v4, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT DISTINCT OfferId FROM cache_files"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 598
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 599
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 601
    :cond_2
    const-string v4, "OfferId"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 602
    .local v2, "offerId":J
    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->isOfferCached(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 603
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 609
    .end local v2    # "offerId":J
    :cond_4
    if-eqz v0, :cond_0

    .line 610
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getReadyCacheFilesForOffer(J)Ljava/util/List;
    .locals 11
    .param p1, "offerId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 404
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-object v9

    .line 410
    :cond_1
    const-string v3, "OfferId=? AND (FileStatus=? OR FileStatus=?)"

    .line 411
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 412
    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 414
    .local v4, "args":[Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 417
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 418
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    :cond_2
    new-instance v8, Lcom/fusepowered/nx/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/fusepowered/nx/monetization/business/CacheFile;-><init>()V

    .line 421
    .local v8, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 422
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 423
    const-string v0, "MD5"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 424
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 425
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 426
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileSize(J)V

    .line 427
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setRelativeUrl(Ljava/lang/String;)V

    .line 428
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setOfferId(J)V

    .line 429
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    .end local v8    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    :cond_3
    if-eqz v10, :cond_0

    .line 435
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getSizeOfDownloadedCacheFiles()J
    .locals 6

    .prologue
    .line 717
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 718
    const-wide/16 v2, 0x0

    .line 736
    :goto_0
    return-wide v2

    .line 721
    :cond_0
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT SUM(FileSize) FROM (SELECT MAX(FileSize) as FileSize FROM cache_files WHERE FileStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 725
    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FileStatus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 726
    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GROUP BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MD5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AS TOTALSIZE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 721
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 729
    .local v0, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .line 731
    .local v2, "result":J
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    .line 735
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getTopOneCacheFileMatchingMD5(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/business/CacheFile;
    .locals 10
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 367
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-object v2

    .line 371
    :cond_0
    const/4 v8, 0x0

    .line 372
    .local v8, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    const-string v3, "MD5=?"

    .line 374
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 375
    .local v4, "args":[Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    const-string v7, "ExpirationDateUTC DESC limit 1"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 377
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 378
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    :cond_1
    new-instance v8, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .end local v8    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    invoke-direct {v8}, Lcom/fusepowered/nx/monetization/business/CacheFile;-><init>()V

    .line 381
    .restart local v8    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    const-string v0, "CDN"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 382
    const-string v0, "Ext"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 383
    const-string v0, "MD5"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 384
    const-string v0, "FileStatus"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 385
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 386
    const-string v0, "FileSize"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setFileSize(J)V

    .line 387
    const-string v0, "RelativeUrl"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setRelativeUrl(Ljava/lang/String;)V

    .line 388
    const-string v0, "OfferId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->setOfferId(J)V

    .line 389
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_2
    if-eqz v9, :cond_3

    .line 394
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, v8

    .line 396
    goto/16 :goto_0
.end method

.method public getTotalSizeOfCacheFiles()J
    .locals 6

    .prologue
    .line 691
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 692
    const-wide/16 v2, 0x0

    .line 709
    :goto_0
    return-wide v2

    .line 695
    :cond_0
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT SUM(FileSize) FROM (SELECT MAX(FileSize) AS FileSize FROM cache_files WHERE FileStatus<>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 699
    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GROUP BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MD5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AS TOTALSIZE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 695
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 702
    .local v0, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .line 704
    .local v2, "result":J
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    .line 708
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public isOfferCached(J)Z
    .locals 13
    .param p1, "offerId"    # J

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 655
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    move v10, v11

    .line 682
    :cond_0
    :goto_0
    return v10

    .line 659
    :cond_1
    const-string v3, "OfferId=?"

    .line 660
    .local v3, "WHERE":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 662
    .local v4, "args":[Ljava/lang/String;
    const/4 v10, 0x1

    .line 663
    .local v10, "offerCached":Z
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 666
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 667
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 669
    :cond_2
    const-string v0, "FileStatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/fusepowered/nx/monetization/enums/FileStatus;

    move-result-object v9

    .line 670
    .local v9, "fileStatus":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    if-eq v9, v0, :cond_3

    sget-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    if-ne v9, v0, :cond_5

    :cond_3
    move v0, v12

    :goto_1
    if-nez v0, :cond_6

    .line 672
    const/4 v10, 0x0

    .line 679
    .end local v9    # "fileStatus":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    :cond_4
    :goto_2
    if-eqz v8, :cond_0

    .line 680
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v9    # "fileStatus":Lcom/fusepowered/nx/monetization/enums/FileStatus;
    :cond_5
    move v0, v11

    .line 670
    goto :goto_1

    .line 675
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2
.end method

.method public isOfferIdAndRelativeUrlFoundForMD5(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 10
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "offerId"    # J
    .param p4, "relativeUrl"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 622
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v9

    .line 626
    :cond_1
    const-string v3, "MD5=? AND OfferId=? AND RelativeUrl=?"

    .line 629
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object p4, v4, v0

    .line 631
    .local v4, "args":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 632
    .local v9, "found":Z
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 635
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 636
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    :cond_2
    const/4 v9, 0x1

    .line 639
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 643
    :cond_3
    if-eqz v8, :cond_0

    .line 644
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public updateCacheExpiryTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "expirationTime"    # J

    .prologue
    .line 108
    sget-object v3, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 120
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string v0, "MD5=?"

    .line 114
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 116
    .local v1, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "ExpirationDateUTC"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v3, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateCacheUtilFreeSpaceMin(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 886
    sget-object v6, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    const-string v0, "cache_util=?"

    .line 891
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "free_space_min"

    aput-object v7, v1, v6

    .line 893
    .local v1, "args":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "cache_util_value_int"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 896
    sget-object v6, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "cache_utils"

    invoke-virtual {v6, v7, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v4, v6

    .line 897
    .local v4, "rowsAffected":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 899
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->addCacheUtilFreeSpaceMin(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 900
    :catch_0
    move-exception v2

    .line 901
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateFileStatusWithMD5(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V
    .locals 5
    .param p1, "MD5"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .prologue
    .line 127
    sget-object v3, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "MD5=?"

    .line 132
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 134
    .local v1, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 135
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "FileStatus"

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v3, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateFileStatusWithMD5IfNotInUse(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V
    .locals 5
    .param p1, "MD5"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .prologue
    .line 145
    sget-object v3, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 157
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string v0, "MD5=?"

    .line 150
    .local v0, "WHERE":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND FileStatus != ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 153
    .local v1, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "FileStatus"

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/enums/FileStatus;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v3, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
