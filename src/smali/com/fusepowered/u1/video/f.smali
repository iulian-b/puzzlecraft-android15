.class final Lcom/fusepowered/u1/video/f;
.super Landroid/widget/VideoView;
.source "UnityAdsVideoPlayView.java"


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/fusepowered/u1/video/f;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 250
    if-nez p1, :cond_1

    .line 251
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/u1/video/f;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->d(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/fusepowered/u1/video/f;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->e(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;->onVideoHidden()V

    goto :goto_0
.end method
