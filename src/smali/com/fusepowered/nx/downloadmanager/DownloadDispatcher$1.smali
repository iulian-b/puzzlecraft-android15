.class Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$1;
.super Ljava/lang/Object;
.source "DownloadDispatcher.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

.field final synthetic val$callbackHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$1;->this$0:Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher;

    iput-object p2, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$1;->val$callbackHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/nx/downloadmanager/DownloadDispatcher$1;->val$callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void
.end method
