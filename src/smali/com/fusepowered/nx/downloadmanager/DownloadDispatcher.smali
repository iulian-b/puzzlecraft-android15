.class Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;
.super Ljava/lang/Thread;
.source "DownloadDispatcher.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final LOGGING_TAG:Ljava/lang/String; = "NativeXDownloadManager"


# instance fields
.field private final mCallBackExecutor:Ljava/util/concurrent/Executor;

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

.field private volatile mIsCancelRequested:Z

.field private volatile mIsQuitRequested:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/fusepowered/nx/downloadmanager/DownloadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "downloadQueue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Lcom/fusepowered/nx/downloadmanager/DownloadRequest;>;"
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mIsCancelRequested:Z

    .line 31
    iput-boolean v1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mIsQuitRequested:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    .local v0, "callbackHandler":Landroid/os/Handler;
    new-instance v1, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$1;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$1;-><init>(Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    .line 46
    iput-object p1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mDownloadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 48
    const-string v1, "NativeX-CacheDownload"

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->setName(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private cleanUpDestination(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V
    .locals 2
    .param p1, "downloadRequest"    # Lcom/fusepowered/nx/downloadmanager/DownloadRequest;

    .prologue
    .line 188
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "destinationFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 192
    :cond_0
    return-void
.end method

.method private downloadFile(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V
    .locals 18
    .param p1, "downloadRequest"    # Lcom/fusepowered/nx/downloadmanager/DownloadRequest;

    .prologue
    .line 101
    const-string v13, "NativeXDownloadManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Starting download request: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v3, 0x0

    .line 105
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 106
    .local v7, "inputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 107
    .local v9, "outputStream":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 110
    .local v8, "outputFileDescriptor":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 112
    const/16 v13, 0x4e20

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 113
    const/16 v13, 0x4e20

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 115
    invoke-direct/range {p0 .. p1}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->cleanUpDestination(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V

    .line 117
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 119
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v4, "destinationFile":Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v10, v4, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .local v10, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    move-object v0, v10

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 124
    const/16 v13, 0x1000

    new-array v1, v13, [B

    .line 126
    .local v1, "buffer":[B
    const/4 v6, 0x0

    .line 127
    .local v6, "hasDownloadStarted":Z
    const/4 v12, 0x0

    .line 129
    .local v12, "wasDownloadCancelled":Z
    :cond_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    if-lez v2, :cond_2

    .line 131
    const/4 v13, 0x0

    invoke-virtual {v10, v1, v13, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 134
    if-nez v6, :cond_1

    .line 135
    const/4 v6, 0x1

    .line 136
    invoke-direct/range {p0 .. p1}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->postDownloadStarted(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V

    .line 139
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mIsCancelRequested:Z

    if-eqz v13, :cond_0

    .line 140
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mIsCancelRequested:Z

    .line 141
    const/4 v12, 0x1

    .line 146
    :cond_2
    if-nez v12, :cond_3

    .line 147
    invoke-direct/range {p0 .. p1}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->postDownloadCompleted(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V

    .line 148
    const-string v13, "NativeXDownloadManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Finished download "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    :cond_3
    if-eqz v3, :cond_4

    .line 161
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_4
    if-eqz v7, :cond_5

    .line 166
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 171
    :cond_5
    :goto_0
    if-eqz v10, :cond_6

    .line 173
    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 178
    :cond_6
    :goto_1
    if-eqz v8, :cond_f

    .line 180
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/SyncFailedException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v9, v10

    .line 185
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v4    # "destinationFile":Ljava/io/File;
    .end local v6    # "hasDownloadStarted":Z
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "wasDownloadCancelled":Z
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    :cond_7
    :goto_2
    return-void

    .line 181
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v4    # "destinationFile":Ljava/io/File;
    .restart local v6    # "hasDownloadStarted":Z
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "wasDownloadCancelled":Z
    :catch_0
    move-exception v13

    move-object v9, v10

    .line 182
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 151
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v4    # "destinationFile":Ljava/io/File;
    .end local v6    # "hasDownloadStarted":Z
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "wasDownloadCancelled":Z
    :catch_1
    move-exception v5

    .line 153
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v13, "NativeXDownloadManager"

    const-string v14, "Download %d failed: %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct/range {p0 .. p1}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->cleanUpDestination(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V

    .line 157
    invoke-direct/range {p0 .. p1}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->postDownloadFailed(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    if-eqz v3, :cond_8

    .line 161
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_8
    if-eqz v7, :cond_9

    .line 166
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 171
    :cond_9
    :goto_4
    if-eqz v9, :cond_a

    .line 173
    :try_start_7
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 178
    :cond_a
    :goto_5
    if-eqz v8, :cond_7

    .line 180
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catch Ljava/io/SyncFailedException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 181
    :catch_2
    move-exception v13

    goto :goto_2

    .line 160
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v3, :cond_b

    .line 161
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_b
    if-eqz v7, :cond_c

    .line 166
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 171
    :cond_c
    :goto_7
    if-eqz v9, :cond_d

    .line 173
    :try_start_a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 178
    :cond_d
    :goto_8
    if-eqz v8, :cond_e

    .line 180
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V
    :try_end_b
    .catch Ljava/io/SyncFailedException; {:try_start_b .. :try_end_b} :catch_9

    .line 182
    :cond_e
    :goto_9
    throw v13

    .line 167
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v4    # "destinationFile":Ljava/io/File;
    .restart local v6    # "hasDownloadStarted":Z
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "wasDownloadCancelled":Z
    :catch_3
    move-exception v13

    goto :goto_0

    .line 174
    :catch_4
    move-exception v13

    goto :goto_1

    .line 167
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v4    # "destinationFile":Ljava/io/File;
    .end local v6    # "hasDownloadStarted":Z
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "wasDownloadCancelled":Z
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v13

    goto :goto_4

    .line 174
    :catch_6
    move-exception v13

    goto :goto_5

    .line 167
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v14

    goto :goto_7

    .line 174
    :catch_8
    move-exception v14

    goto :goto_8

    .line 181
    :catch_9
    move-exception v14

    goto :goto_9

    .line 160
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "destinationFile":Ljava/io/File;
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    goto :goto_6

    .line 151
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    :catch_a
    move-exception v5

    move-object v9, v10

    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v6    # "hasDownloadStarted":Z
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "wasDownloadCancelled":Z
    :cond_f
    move-object v9, v10

    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private postDownloadCompleted(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V
    .locals 2
    .param p1, "downloadRequest"    # Lcom/fusepowered/nx/downloadmanager/DownloadRequest;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$3;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$3;-><init>(Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method private postDownloadFailed(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V
    .locals 2
    .param p1, "downloadRequest"    # Lcom/fusepowered/nx/downloadmanager/DownloadRequest;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$4;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$4;-><init>(Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method private postDownloadStarted(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V
    .locals 2
    .param p1, "downloadRequest"    # Lcom/fusepowered/nx/downloadmanager/DownloadRequest;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$2;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$2;-><init>(Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method


# virtual methods
.method cancelCurrentDownload()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mIsCancelRequested:Z

    .line 86
    return-void
.end method

.method quit()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mIsQuitRequested:Z

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mIsQuitRequested:Z

    .line 92
    invoke-virtual {p0}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->interrupt()V

    .line 94
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 59
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 61
    :goto_0
    iget-boolean v2, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mIsQuitRequested:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    .line 66
    :try_start_1
    iget-object v2, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mDownloadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .local v0, "currentDownloadRequest":Lcom/fusepowered/nx/downloadmanager/DownloadRequest;
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->mIsCancelRequested:Z

    .line 75
    invoke-direct {p0, v0}, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->downloadFile(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 77
    .end local v0    # "currentDownloadRequest":Lcom/fusepowered/nx/downloadmanager/DownloadRequest;
    :catch_0
    move-exception v2

    .line 78
    :cond_0
    return-void

    .line 68
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e1":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
