.class Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/videoplayer/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceHolderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;


# direct methods
.method private constructor <init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;Lcom/fusepowered/nx/videoplayer/VideoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;
    .param p2, "x1"    # Lcom/fusepowered/nx/videoplayer/VideoActivity$1;

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;-><init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 421
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$300(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-virtual {v0, p1, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->surfaceCreated(Landroid/view/SurfaceHolder;Lcom/fusepowered/nx/videoplayer/VideoDisplayer;)V

    .line 413
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 417
    return-void
.end method
