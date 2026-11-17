.class public Lcom/fusepowered/nx/downloadmanager/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# instance fields
.field private final mDownloadDispatcher:Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

.field private final mDownloadQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/fusepowered/nx/downloadmanager/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mDownloadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mIsReleased:Z

    .line 18
    new-instance v0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

    iget-object v1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mDownloadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    iput-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mDownloadDispatcher:Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

    .line 19
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mDownloadDispatcher:Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

    invoke-virtual {v0}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->start()V

    .line 20
    return-void
.end method


# virtual methods
.method public cancelAllDownloads()V
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mIsReleased:Z

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mDownloadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 58
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mDownloadDispatcher:Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

    invoke-virtual {v0}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->cancelCurrentDownload()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mIsReleased:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->cancelAllDownloads()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mIsReleased:Z

    .line 75
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mDownloadDispatcher:Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

    invoke-virtual {v0}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->quit()V

    goto :goto_0
.end method

.method public requestDownload(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V
    .locals 2
    .param p1, "downloadRequest"    # Lcom/fusepowered/nx/downloadmanager/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "downloadRequest cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mIsReleased:Z

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DownloadManager was already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadManager;->mDownloadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
