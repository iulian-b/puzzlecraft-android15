.class Lcom/fusepowered/nx/videoplayer/VideoActivity$6;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/videoplayer/VideoActivity;->initializeVideo(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

.field final synthetic val$videoWidthHeightProportion:F


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$6;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    iput p2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$6;->val$videoWidthHeightProportion:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$6;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    iget v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$6;->val$videoWidthHeightProportion:F

    invoke-static {v1, v2}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$502(Lcom/fusepowered/nx/videoplayer/VideoActivity;F)F

    .line 245
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$6;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$602(Lcom/fusepowered/nx/videoplayer/VideoActivity;Z)Z

    .line 246
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$6;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$700(Lcom/fusepowered/nx/videoplayer/VideoActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$6;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$300(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
