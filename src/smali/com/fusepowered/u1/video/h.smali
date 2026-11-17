.class final Lcom/fusepowered/u1/video/h;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/fusepowered/u1/video/h;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-static {}, Lcom/fusepowered/u1/UnityAdsDeviceLog;->entered()V

    .line 274
    iget-object v0, p0, Lcom/fusepowered/u1/video/h;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0, p1}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->a(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 276
    iget-object v0, p0, Lcom/fusepowered/u1/video/h;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->g(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/fusepowered/u1/video/h;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->h(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V

    .line 278
    iget-object v0, p0, Lcom/fusepowered/u1/video/h;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->i(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/u1/video/h;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->j(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Z

    .line 282
    return-void
.end method
