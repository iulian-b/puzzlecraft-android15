.class public Lcom/fusepowered/nx/downloadmanager/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# instance fields
.field private mDestinationUri:Landroid/net/Uri;

.field private mDownloadId:I

.field private mDownloadListener:Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;

.field private final mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Landroid/net/Uri;Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;)V
    .locals 4
    .param p1, "downloadId"    # I
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "destinationUri"    # Landroid/net/Uri;
    .param p4, "downloadListener"    # Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p2, :cond_0

    .line 19
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Download source Uri cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_0
    if-nez p3, :cond_1

    .line 23
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Destination Uri cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 28
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_3
    iput p1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mDownloadId:I

    .line 32
    iput-object p2, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mSourceUri:Landroid/net/Uri;

    .line 33
    iput-object p3, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mDestinationUri:Landroid/net/Uri;

    .line 34
    iput-object p4, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mDownloadListener:Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;

    .line 35
    return-void
.end method


# virtual methods
.method getDestinationURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mDestinationUri:Landroid/net/Uri;

    return-object v0
.end method

.method final getDownloadId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mDownloadId:I

    return v0
.end method

.method getDownloadListener()Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mDownloadListener:Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;

    return-object v0
.end method

.method getSourceUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mSourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "downloadString":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "DownloadId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mDownloadId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "Source URI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "Destination Path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->mDestinationUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
