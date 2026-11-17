.class Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v0, 0x0

    .line 763
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 764
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 765
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 766
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 767
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 768
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 769
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 770
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 771
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$002(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoLayout: buffered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$1900(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2000(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2000(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2100(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;->videoCompleted(Z)V

    .line 776
    :cond_0
    return-void
.end method
