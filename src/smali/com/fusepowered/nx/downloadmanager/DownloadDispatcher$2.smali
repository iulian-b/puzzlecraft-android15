.class Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$2;
.super Ljava/lang/Object;
.source "DownloadDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;->postDownloadStarted(Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

.field final synthetic val$downloadRequest:Lcom/fusepowered/nx/downloadmanager/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;Lcom/fusepowered/nx/downloadmanager/DownloadRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$2;->this$0:Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

    iput-object p2, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$2;->val$downloadRequest:Lcom/fusepowered/nx/downloadmanager/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$2;->val$downloadRequest:Lcom/fusepowered/nx/downloadmanager/DownloadRequest;

    invoke-virtual {v1}, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->getDownloadListener()Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;

    move-result-object v0

    .line 200
    .local v0, "listener":Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$2;->val$downloadRequest:Lcom/fusepowered/nx/downloadmanager/DownloadRequest;

    invoke-virtual {v1}, Lcom/fusepowered/nx/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;->onDownloadStarted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "listener":Lcom/fusepowered/nx/downloadmanager/DownloadStatusListener;
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v1

    goto :goto_0
.end method
