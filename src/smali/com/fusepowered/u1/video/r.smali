.class final Lcom/fusepowered/u1/video/r;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/video/l;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/video/l;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/fusepowered/u1/video/r;->a:Lcom/fusepowered/u1/video/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 711
    iget-object v0, p0, Lcom/fusepowered/u1/video/r;->a:Lcom/fusepowered/u1/video/l;

    iget-object v0, v0, Lcom/fusepowered/u1/video/l;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->n(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/fusepowered/u1/video/r;->a:Lcom/fusepowered/u1/video/l;

    iget-object v0, v0, Lcom/fusepowered/u1/video/l;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->e(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/fusepowered/u1/video/r;->a:Lcom/fusepowered/u1/video/l;

    iget-object v0, v0, Lcom/fusepowered/u1/video/l;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->C(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Z

    .line 714
    iget-object v0, p0, Lcom/fusepowered/u1/video/r;->a:Lcom/fusepowered/u1/video/l;

    iget-object v0, v0, Lcom/fusepowered/u1/video/l;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->e(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;->onVideoPlaybackStarted()V

    .line 715
    iget-object v0, p0, Lcom/fusepowered/u1/video/r;->a:Lcom/fusepowered/u1/video/l;

    iget-object v0, v0, Lcom/fusepowered/u1/video/l;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->a(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;J)J

    .line 716
    iget-object v0, p0, Lcom/fusepowered/u1/video/r;->a:Lcom/fusepowered/u1/video/l;

    iget-object v0, v0, Lcom/fusepowered/u1/video/l;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->b(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;J)J

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/u1/video/r;->a:Lcom/fusepowered/u1/video/l;

    iget-object v0, v0, Lcom/fusepowered/u1/video/l;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->A(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/u1/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/fusepowered/u1/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/fusepowered/u1/video/r;->a:Lcom/fusepowered/u1/video/l;

    iget-object v0, v0, Lcom/fusepowered/u1/video/l;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->A(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/u1/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/fusepowered/u1/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v0, p0, Lcom/fusepowered/u1/video/r;->a:Lcom/fusepowered/u1/video/l;

    iget-object v0, v0, Lcom/fusepowered/u1/video/l;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->e(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/u1/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/fusepowered/u1/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v0, v1}, Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/fusepowered/u1/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 724
    :cond_1
    return-void
.end method
