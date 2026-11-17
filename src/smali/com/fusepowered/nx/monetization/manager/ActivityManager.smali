.class public Lcom/fusepowered/nx/monetization/manager/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static correctiveActionForPlayerFailure(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 1
    .param p0, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isVideoAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->stopAlphaAnimationAndDismissAd(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireVideoCancelledEvent()V

    goto :goto_0
.end method

.method public static startMRAIDInterstitial(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userCall"    # Z

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mraidAdName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "mraidUserCall"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 86
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public static startMRAIDVideo(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->getNativeVideoPlayerListener()Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->setVideoResource(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->getNativeVideoPlayerListener()Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->setMRAIDContainerName(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->getInstance()Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getVideoOptions()Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v2

    .line 56
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->getNativeVideoPlayerListener()Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;

    move-result-object v4

    invoke-static {}, Lcom/fusepowered/nx/common/Log;->isLogging()Z

    move-result v5

    move-object v1, p1

    move-object v3, p0

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->play(Ljava/lang/String;Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;Landroid/content/Context;Lcom/fusepowered/nx/videoplayer/VideoListener;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {p2}, Lcom/fusepowered/nx/monetization/manager/ActivityManager;->correctiveActionForPlayerFailure(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v6

    .line 60
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "VideoPlayer error: Failed to start"

    invoke-static {v0, v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    invoke-static {p2}, Lcom/fusepowered/nx/monetization/manager/ActivityManager;->correctiveActionForPlayerFailure(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    goto :goto_0
.end method
