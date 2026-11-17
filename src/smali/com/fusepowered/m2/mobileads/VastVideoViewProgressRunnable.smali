.class public Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;
.super Lcom/fusepowered/m2/mobileads/RepeatingHandlerRunnable;
.source "VastVideoViewProgressRunnable.java"


# instance fields
.field private final mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "videoViewController"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 24
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .line 26
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8

    .prologue
    .line 30
    iget-object v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v6}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getDuration()I

    move-result v5

    .line 31
    .local v5, "videoLength":I
    iget-object v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v6}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    .line 33
    .local v0, "currentPosition":I
    iget-object v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v6}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->updateProgressBar()V

    .line 35
    if-lez v5, :cond_2

    .line 36
    iget-object v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v6, v0, v5}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v4

    .line 38
    .local v4, "trackersToTrack":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, "trackUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/m2/mobileads/VastTracker;

    .line 41
    .local v3, "tracker":Lcom/fusepowered/m2/mobileads/VastTracker;
    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastTracker;->getTrackingUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastTracker;->setTracked()V

    goto :goto_0

    .line 44
    .end local v3    # "tracker":Lcom/fusepowered/m2/mobileads/VastTracker;
    :cond_0
    new-instance v6, Lcom/fusepowered/m2/mobileads/VastMacroHelper;

    invoke-direct {v6, v2}, Lcom/fusepowered/m2/mobileads/VastMacroHelper;-><init>(Ljava/util/List;)V

    iget-object v7, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v7}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fusepowered/m2/mobileads/VastMacroHelper;->withAssetUri(Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/VastMacroHelper;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fusepowered/m2/mobileads/VastMacroHelper;->withContentPlayHead(Ljava/lang/Integer;)Lcom/fusepowered/m2/mobileads/VastMacroHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fusepowered/m2/mobileads/VastMacroHelper;->getUris()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v7}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 52
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "trackUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v6, v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->handleIconDisplay(I)V

    .line 54
    .end local v4    # "trackersToTrack":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    :cond_2
    return-void
.end method
