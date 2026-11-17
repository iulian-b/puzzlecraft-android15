.class Lcom/fusepowered/nx/videoplayer/VideoActivity$5;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/videoplayer/VideoActivity;->isStuck(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

.field final synthetic val$isStuck:Z


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$5;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    iput-boolean p2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$5;->val$isStuck:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$5;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$400(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    iget-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$5;->val$isStuck:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    return-void

    .line 219
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$5;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$300(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/Exception;)V

    goto :goto_1
.end method
