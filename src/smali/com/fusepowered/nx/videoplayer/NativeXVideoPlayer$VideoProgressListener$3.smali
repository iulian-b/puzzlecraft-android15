.class Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;
.super Ljava/lang/Object;
.source "NativeXVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->detectAndHandleVideoProgressMilestones()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;->this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;->this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :try_start_1
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;->this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1000(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;->this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;->this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mMediaPlayerOfProgressListener:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;->this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;

    iget-object v3, v3, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v3}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 644
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;->this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1000(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/fusepowered/nx/videoplayer/VideoListener;->on50PercentCompleted()V

    .line 646
    :cond_0
    monitor-exit v2

    .line 650
    :goto_0
    return-void

    .line 646
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;->this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
