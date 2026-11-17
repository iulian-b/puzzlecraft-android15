.class Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;
.super Ljava/lang/Object;
.source "NativeXVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;


# direct methods
.method private constructor <init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
    .param p2, "x1"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;-><init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v2, "onCompletion called"

    invoke-static {v1, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v3, "mediaPlayer null, and mediaPlayer is not current instance"

    invoke-static {v1, v3}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 448
    monitor-exit v2

    .line 470
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1000(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoListener;

    move-result-object v0

    .line 453
    .local v0, "videoListener":Lcom/fusepowered/nx/videoplayer/VideoListener;
    if-eqz v0, :cond_2

    .line 454
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener$2;

    invoke-direct {v3, p0, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener$2;-><init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;Lcom/fusepowered/nx/videoplayer/VideoListener;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1400(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)V

    .line 467
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v2, "onCompletion finished"

    invoke-static {v1, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    .end local v0    # "videoListener":Lcom/fusepowered/nx/videoplayer/VideoListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 9
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v8, 0x1

    .line 400
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eq p1, v2, :cond_1

    .line 404
    :cond_0
    monitor-exit v3

    .line 435
    :goto_0
    return v8

    .line 407
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v4, "MediaPlayer %d: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$900(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1000(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoListener;

    move-result-object v1

    .line 413
    .local v1, "videoListener":Lcom/fusepowered/nx/videoplayer/VideoListener;
    if-eqz v1, :cond_2

    .line 414
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener$1;

    invoke-direct {v4, p0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener$1;-><init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;Lcom/fusepowered/nx/videoplayer/VideoListener;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v2

    iget-object v2, v2, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->errorMessageToast:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v2

    iget-object v2, v2, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->errorMessageToast:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 427
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v4}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v4

    iget-object v4, v4, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->errorMessageToast:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 428
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 432
    .end local v0    # "toast":Landroid/widget/Toast;
    .end local v1    # "videoListener":Lcom/fusepowered/nx/videoplayer/VideoListener;
    :cond_3
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1400(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)V

    .line 433
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "listener.onPrepared called"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$400(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    move-result-object v0

    sget-object v2, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->PREPARING:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    if-eq v0, v2, :cond_1

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v2, "mediaPlayer null, or not the same media player, or not preparing.. exiting.."

    invoke-static {v0, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 381
    monitor-exit v1

    .line 396
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    sget-object v2, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->PREPARED:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    invoke-static {v0, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$402(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    .line 385
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v3}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$502(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;F)F

    .line 386
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v0, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$602(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;I)I

    .line 388
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$700(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v2, "video is being displayed; initializing and starting video..."

    invoke-static {v0, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$800(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    move-result-object v0

    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$500(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)F

    move-result v2

    invoke-interface {v0, v2}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->initializeVideo(F)V

    .line 391
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 393
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "onPrepared finished"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
