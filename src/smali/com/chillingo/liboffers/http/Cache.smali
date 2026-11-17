.class public Lcom/chillingo/liboffers/http/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# static fields
.field static final FILE_PREFIX:Ljava/lang/String; = "ptocache_"

.field static final FILE_TIMESTAMP_SEPARATOR:Ljava/lang/String; = "_-_"


# instance fields
.field context:Landroid/content/Context;
    .annotation build Lcom/googlecode/androidannotations/annotations/RootContext;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private getCacheFileForIdIfExists(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v3, p0, Lcom/chillingo/liboffers/http/Cache;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 228
    .local v0, "cacheFolder":Ljava/io/File;
    new-instance v1, Lcom/chillingo/liboffers/http/Cache$4;

    invoke-direct {v1, p0, p1}, Lcom/chillingo/liboffers/http/Cache$4;-><init>(Lcom/chillingo/liboffers/http/Cache;Ljava/lang/String;)V

    .line 246
    .local v1, "idFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "matchingFiles":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 248
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCacheFileForWrite(Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "expiry"    # Ljava/util/Date;

    .prologue
    .line 261
    if-nez p2, :cond_0

    .line 262
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No expiry set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No ID set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/chillingo/liboffers/http/Cache;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 267
    .local v0, "cacheFolder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ptocache_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_-_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public clearCacheOfAllItems()V
    .locals 10

    .prologue
    .line 121
    iget-object v8, p0, Lcom/chillingo/liboffers/http/Cache;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 122
    .local v1, "cacheFolder":Ljava/io/File;
    new-instance v7, Lcom/chillingo/liboffers/http/Cache$1;

    invoke-direct {v7, p0}, Lcom/chillingo/liboffers/http/Cache$1;-><init>(Lcom/chillingo/liboffers/http/Cache;)V

    .line 132
    .local v7, "prefixFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "matchingFiles":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 135
    .local v3, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "fileToDelete":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "fileToDelete":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearCacheOfAllItemsExpiringBefore(Ljava/util/Date;)V
    .locals 10
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 142
    iget-object v8, p0, Lcom/chillingo/liboffers/http/Cache;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 143
    .local v1, "cacheFolder":Ljava/io/File;
    new-instance v7, Lcom/chillingo/liboffers/http/Cache$2;

    invoke-direct {v7, p0, p1}, Lcom/chillingo/liboffers/http/Cache$2;-><init>(Lcom/chillingo/liboffers/http/Cache;Ljava/util/Date;)V

    .line 176
    .local v7, "prefixFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "matchingFiles":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 179
    .local v3, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "fileToDelete":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "fileToDelete":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearCacheOfAllItemsWithId(Ljava/lang/String;)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v8, p0, Lcom/chillingo/liboffers/http/Cache;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 187
    .local v1, "cacheFolder":Ljava/io/File;
    new-instance v7, Lcom/chillingo/liboffers/http/Cache$3;

    invoke-direct {v7, p0, p1}, Lcom/chillingo/liboffers/http/Cache$3;-><init>(Lcom/chillingo/liboffers/http/Cache;Ljava/lang/String;)V

    .line 210
    .local v7, "prefixFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "matchingFiles":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 213
    .local v3, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "fileToDelete":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "fileToDelete":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getCacheItemForId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 37
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Bad ID"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    :cond_1
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/http/Cache;->getCacheFileForIdIfExists(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 40
    .local v1, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 43
    .local v4, "object":Ljava/lang/Object;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    const/4 v2, 0x0

    .line 46
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    .local v5, "objectIn":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 59
    if-eqz v3, :cond_2

    .line 61
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "objectIn":Ljava/io/ObjectInputStream;
    :cond_2
    :goto_0
    return-object v4

    .line 62
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "objectIn":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "objectIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    const/4 v4, 0x0

    .line 59
    .end local v4    # "object":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 61
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 62
    :catch_2
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "object":Ljava/lang/Object;
    :catch_3
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 59
    if-eqz v2, :cond_2

    .line 61
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 62
    :catch_4
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 55
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 59
    if-eqz v2, :cond_2

    .line 61
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 62
    :catch_6
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 59
    if-eqz v2, :cond_2

    .line 61
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_0

    .line 62
    :catch_8
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_3

    .line 61
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 64
    :cond_3
    :goto_6
    throw v6

    .line 62
    :catch_9
    move-exception v0

    .line 63
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 56
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 54
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 52
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 49
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public putCacheItemForId(Ljava/lang/String;Ljava/io/Serializable;Ljava/util/Date;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/io/Serializable;
    .param p3, "expiryDate"    # Ljava/util/Date;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 90
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Bad ID"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 91
    :cond_1
    if-nez p2, :cond_2

    .line 92
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Null object"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 95
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/chillingo/liboffers/http/Cache;->getCacheFileForWrite(Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;

    move-result-object v1

    .line 96
    .local v1, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 99
    .local v4, "objectOut":Ljava/io/ObjectOutputStream;
    const/4 v2, 0x0

    .line 100
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    .local v5, "objectOut":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    if-eqz v5, :cond_5

    .line 111
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v5

    .line 117
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    :cond_3
    :goto_0
    return-void

    .line 112
    .end local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 114
    .end local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 104
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    if-eqz v4, :cond_3

    .line 111
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 112
    :catch_2
    move-exception v6

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 109
    if-eqz v4, :cond_3

    .line 111
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 112
    :catch_4
    move-exception v6

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_4

    .line 111
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 114
    :cond_4
    :goto_4
    throw v6

    .line 112
    :catch_5
    move-exception v7

    goto :goto_4

    .line 109
    .end local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 106
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 104
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    :cond_5
    move-object v4, v5

    .end local v5    # "objectOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOut":Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method

.method public replaceCacheItemForId(Ljava/lang/String;Ljava/io/Serializable;Ljava/util/Date;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/io/Serializable;
    .param p3, "expiryDate"    # Ljava/util/Date;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/chillingo/liboffers/http/Cache;->clearCacheOfAllItemsWithId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/chillingo/liboffers/http/Cache;->putCacheItemForId(Ljava/lang/String;Ljava/io/Serializable;Ljava/util/Date;)V

    .line 84
    return-void
.end method
