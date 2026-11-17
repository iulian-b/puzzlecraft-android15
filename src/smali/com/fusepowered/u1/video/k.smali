.class final Lcom/fusepowered/u1/video/k;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    iget-object v0, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->m(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->n(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->g(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->a(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;Z)Z

    .line 400
    iget-object v0, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->o(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v0, v1}, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton;->setState(Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;)V

    .line 401
    iget-object v0, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->i(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v1}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->p(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)F

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v2}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->p(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->a(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;Z)Z

    .line 405
    iget-object v0, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->o(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->Muted:Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v0, v1}, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton;->setState(Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;)V

    .line 406
    iget-object v0, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->h(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V

    .line 407
    iget-object v0, p0, Lcom/fusepowered/u1/video/k;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->i(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method
