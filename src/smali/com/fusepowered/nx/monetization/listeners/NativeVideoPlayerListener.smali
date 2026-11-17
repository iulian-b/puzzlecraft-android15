.class public Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;
.super Ljava/lang/Object;
.source "NativeVideoPlayerListener.java"

# interfaces
.implements Lcom/fusepowered/nx/videoplayer/VideoListener;


# instance fields
.field private mMRAIDContainerName:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method private trackVideoProgress(Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V
    .locals 2
    .param p1, "videoProgress"    # Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track Video - video progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mMRAIDContainerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mMRAIDContainerName:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mMRAIDContainerName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mVideoUrl:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->trackVideoProgress(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public on25PercentCompleted()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_25_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->trackVideoProgress(Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V

    .line 33
    return-void
.end method

.method public on50PercentCompleted()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_50_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->trackVideoProgress(Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V

    .line 38
    return-void
.end method

.method public on75PercentCompleted()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_75_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->trackVideoProgress(Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V

    .line 43
    return-void
.end method

.method public onClosedEarly()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPlayer Listener onClosedEarly() container name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mMRAIDContainerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mMRAIDContainerName:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mMRAIDContainerName:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->videoCancelled(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_COMPLETED:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->trackVideoProgress(Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPlayer Listener onCompleted() container name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mMRAIDContainerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mMRAIDContainerName:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mMRAIDContainerName:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->videoCompleted(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_STARTED:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->trackVideoProgress(Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V

    .line 28
    return-void
.end method

.method public setMRAIDContainerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "containerName"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mMRAIDContainerName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setVideoResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/listeners/NativeVideoPlayerListener;->mVideoUrl:Ljava/lang/String;

    .line 19
    return-void
.end method
