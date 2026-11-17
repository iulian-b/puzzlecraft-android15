.class public Lcom/fusepowered/nx/monetization/listeners/CacheDownloadStatusListener;
.super Ljava/lang/Object;
.source "CacheDownloadStatusListener.java"

# interfaces
.implements Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(I)V
    .locals 4
    .param p1, "downloadId"    # I

    .prologue
    .line 20
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getCacheFileForDownloadId(I)Lcom/fusepowered/nx/monetization/business/CacheFile;

    move-result-object v0

    .line 21
    .local v0, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateFileStatusWithMD5IfNotInUse(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 23
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->deleteDownloadId(I)V

    .line 25
    :cond_0
    return-void
.end method

.method public onDownloadFailed(I)V
    .locals 4
    .param p1, "downloadId"    # I

    .prologue
    .line 29
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getCacheFileForDownloadId(I)Lcom/fusepowered/nx/monetization/business/CacheFile;

    move-result-object v0

    .line 30
    .local v0, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_FAILED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateFileStatusWithMD5IfNotInUse(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 32
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->deleteDownloadId(I)V

    .line 34
    :cond_0
    return-void
.end method

.method public onDownloadStarted(I)V
    .locals 4
    .param p1, "downloadId"    # I

    .prologue
    .line 12
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getCacheFileForDownloadId(I)Lcom/fusepowered/nx/monetization/business/CacheFile;

    move-result-object v0

    .line 13
    .local v0, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateFileStatusWithMD5IfNotInUse(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 16
    :cond_0
    return-void
.end method
