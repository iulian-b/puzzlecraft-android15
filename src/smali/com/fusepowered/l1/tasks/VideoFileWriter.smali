.class public Lcom/fusepowered/l1/tasks/VideoFileWriter;
.super Ljava/lang/Object;
.source "VideoFileWriter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/io/FileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private mStream:Ljava/io/InputStream;

.field private mVideoFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/fusepowered/l1/tasks/VideoFileWriter;->mStream:Ljava/io/InputStream;

    .line 20
    iput-object p2, p0, Lcom/fusepowered/l1/tasks/VideoFileWriter;->mVideoFile:Ljava/io/File;

    .line 21
    return-void
.end method


# virtual methods
.method public call()Ljava/io/FileDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    const-string v6, "debug"

    const-string v7, "VideoFileWriter call()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v2, 0x0

    .line 28
    .local v2, "filePath":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/fusepowered/l1/tasks/VideoFileWriter;->mVideoFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 29
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 30
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 31
    .local v4, "length":I
    :goto_0
    iget-object v6, p0, Lcom/fusepowered/l1/tasks/VideoFileWriter;->mStream:Ljava/io/InputStream;

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 33
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    const-string v6, "debug"

    const-string v7, "VideoFileWriter end"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-object v2

    .line 36
    .restart local v0    # "buffer":[B
    .restart local v4    # "length":I
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 37
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/fusepowered/l1/tasks/VideoFileWriter;->mVideoFile:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 38
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/fusepowered/l1/tasks/VideoFileWriter;->call()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method
