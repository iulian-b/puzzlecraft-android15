.class Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener$1;
.super Ljava/lang/Object;
.source "NativeXVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;

.field final synthetic val$videoListener:Lcom/fusepowered/nx/videoplayer/VideoListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;Lcom/fusepowered/nx/videoplayer/VideoListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener$1;->this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;

    iput-object p2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener$1;->val$videoListener:Lcom/fusepowered/nx/videoplayer/VideoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener$1;->val$videoListener:Lcom/fusepowered/nx/videoplayer/VideoListener;

    invoke-interface {v1}, Lcom/fusepowered/nx/videoplayer/VideoListener;->onClosedEarly()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener$1;->this$1:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$MediaPlayerListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
