.class public interface abstract Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;
.super Ljava/lang/Object;
.source "IUnityAdsVideoPlayerListener.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/fusepowered/u1/view/IUnityAdsViewListener;


# virtual methods
.method public abstract onEventPositionReached(Lcom/fusepowered/u1/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V
.end method

.method public abstract onVideoHidden()V
.end method

.method public abstract onVideoPlaybackError()V
.end method

.method public abstract onVideoPlaybackStarted()V
.end method

.method public abstract onVideoSkip()V
.end method
