.class Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 538
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$202(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z

    .line 544
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$400(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$1700(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$1700(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 551
    return-void
.end method
