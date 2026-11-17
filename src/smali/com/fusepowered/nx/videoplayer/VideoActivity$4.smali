.class Lcom/fusepowered/nx/videoplayer/VideoActivity$4;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/videoplayer/VideoActivity;->enableSkip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

.field final synthetic val$desiredVisibility:I


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$4;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    iput p2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$4;->val$desiredVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$4;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$200(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    iget v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$4;->val$desiredVisibility:I

    if-eq v1, v2, :cond_0

    .line 203
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$4;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$200(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$4;->val$desiredVisibility:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$4;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$300(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
