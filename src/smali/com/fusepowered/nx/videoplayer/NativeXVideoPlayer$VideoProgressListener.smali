.class Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;
.super Ljava/lang/Object;
.source "NativeXVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoProgressListener"
.end annotation


# static fields
.field private static final SLEEP_INTERVAL_MILLISECONDS:I = 0xfa


# instance fields
.field mForceDisplayOfCountdownTimer:Z

.field mIsSkipEnabledDueToBeingStuck:Z

.field mIsSkipPointPassed:Z

.field mIsVideoProgressStuck:Z

.field mLastMilestoneCompleted:I

.field final mMediaPlayerOfProgressListener:Landroid/media/MediaPlayer;

.field mPercentCompleted:I

.field mPositionMilliseconds:I

.field mPreviousLastMilestoneCompleted:F

.field mPreviousPositionMilliseconds:I

.field mSecondsRemainingLastDisplayed:I

.field mShowSkipCountdownTimer:Z

.field mStuckSinceTimeMilliseconds:J

.field mWasVideoProgressStuck:Z

.field final synthetic this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Landroid/media/MediaPlayer;)V
    .locals 2
    .param p2, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 502
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    .line 485
    iput v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPreviousPositionMilliseconds:I

    .line 488
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPreviousLastMilestoneCompleted:F

    .line 489
    iput-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsSkipPointPassed:Z

    .line 492
    const/4 v0, -0x1

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mSecondsRemainingLastDisplayed:I

    .line 493
    iput-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mForceDisplayOfCountdownTimer:Z

    .line 494
    iput-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mShowSkipCountdownTimer:Z

    .line 497
    iput-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsVideoProgressStuck:Z

    .line 498
    iput-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mWasVideoProgressStuck:Z

    .line 499
    iput-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsSkipEnabledDueToBeingStuck:Z

    .line 500
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mStuckSinceTimeMilliseconds:J

    .line 503
    iput-object p2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mMediaPlayerOfProgressListener:Landroid/media/MediaPlayer;

    .line 504
    return-void
.end method

.method private detectAndHandleGettingStuckOrUnstuck()V
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 600
    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    iget v3, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPreviousPositionMilliseconds:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsVideoProgressStuck:Z

    .line 601
    iget-wide v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mStuckSinceTimeMilliseconds:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mWasVideoProgressStuck:Z

    .line 602
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsVideoProgressStuck:Z

    iget-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mWasVideoProgressStuck:Z

    if-eq v0, v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoProgressListener: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsVideoProgressStuck:Z

    if-eqz v0, :cond_3

    const-string v0, "video is not progressing"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$800(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsVideoProgressStuck:Z

    invoke-interface {v0, v1}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->isStuck(Z)V

    .line 605
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsVideoProgressStuck:Z

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_3
    iput-wide v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mStuckSinceTimeMilliseconds:J

    .line 606
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsSkipEnabledDueToBeingStuck:Z

    .line 608
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 600
    goto :goto_0

    :cond_2
    move v1, v2

    .line 601
    goto :goto_1

    .line 603
    :cond_3
    const-string v0, "video is now progressing"

    goto :goto_2

    :cond_4
    move-wide v0, v4

    .line 605
    goto :goto_3
.end method

.method private detectAndHandleSkipPointReached()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 699
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v0

    iget v0, v0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowSkipAfterMilliseconds:I

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsSkipPointPassed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .line 701
    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v1

    iget v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowSkipAfterMilliseconds:I

    if-lt v0, v1, :cond_1

    .line 703
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: skip point reached"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 706
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mShowSkipCountdownTimer:Z

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: hiding skip countdown timer"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mShowSkipCountdownTimer:Z

    .line 709
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$800(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->displaySecondsRemainingUntilSkippable(I)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$800(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->enableSkip(Z)V

    .line 713
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsSkipPointPassed:Z

    .line 715
    :cond_1
    return-void
.end method

.method private detectAndHandleSkipRequestedButNotAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 675
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1500(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    if-lez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: skip requested but not available"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1502(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Z)Z

    .line 682
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v0

    iget v0, v0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowSkipAfterMilliseconds:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v0

    iget v0, v0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowSkipAfterMilliseconds:I

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$600(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 683
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: skip will be possible later - displaying skip countdown timer"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 685
    iput-boolean v3, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mShowSkipCountdownTimer:Z

    .line 687
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$800(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->displaySecondsRemaining(I)V

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mSecondsRemainingLastDisplayed:I

    if-ne v0, v2, :cond_0

    .line 690
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: skip won\'t be possible later - forcing display of regular countdown timer"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 692
    iput-boolean v3, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mForceDisplayOfCountdownTimer:Z

    goto :goto_0
.end method

.method private detectAndHandleVideoProgressMilestones()V
    .locals 5

    .prologue
    .line 612
    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPercentCompleted:I

    div-int/lit8 v0, v0, 0x19

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mLastMilestoneCompleted:I

    .line 614
    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mLastMilestoneCompleted:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPreviousLastMilestoneCompleted:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "milestone reached: %d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mLastMilestoneCompleted:I

    mul-int/lit8 v4, v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 618
    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mLastMilestoneCompleted:I

    packed-switch v0, :pswitch_data_0

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 620
    :pswitch_0
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: 25% completed"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$2;-><init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 637
    :pswitch_1
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: 50% completed"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$3;-><init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 654
    :pswitch_2
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: 75% completed"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$4;-><init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private detectAndHandleVideoStart()V
    .locals 2

    .prologue
    .line 578
    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPreviousPositionMilliseconds:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    if-lez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: video started"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener$1;-><init>(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 596
    :cond_0
    return-void
.end method

.method private getVideoProgressStatus()V
    .locals 5

    .prologue
    .line 567
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    .line 571
    :cond_0
    iget v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$600(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)I

    move-result v1

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPercentCompleted:I

    .line 573
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: current position %dms (%d%% completed); last position %dms"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    .line 574
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPercentCompleted:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPreviousPositionMilliseconds:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 573
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method private maintainCompletionCountdownTimer()V
    .locals 3

    .prologue
    .line 749
    iget-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mShowSkipCountdownTimer:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mForceDisplayOfCountdownTimer:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .line 751
    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v1

    iget v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownAfterMilliseconds:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .line 752
    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v2

    iget v2, v2, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownAfterMilliseconds:I

    if-le v1, v2, :cond_1

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$600(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)I

    move-result v1

    iget v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    sub-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v0, v1, 0x1

    .line 758
    .local v0, "secondsRemaining":I
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mSecondsRemainingLastDisplayed:I

    if-eq v0, v1, :cond_1

    .line 759
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v2, "VideoProgressListener: updating countdown timer"

    invoke-static {v1, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$800(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->displaySecondsRemaining(I)V

    .line 761
    iput v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mSecondsRemainingLastDisplayed:I

    .line 764
    .end local v0    # "secondsRemaining":I
    :cond_1
    return-void
.end method

.method private maintainSkipCountdownTimer()V
    .locals 3

    .prologue
    .line 734
    iget-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mShowSkipCountdownTimer:Z

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v1

    iget v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowSkipAfterMilliseconds:I

    iget v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    sub-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v0, v1, 0x1

    .line 740
    .local v0, "skipSecondsRemaining":I
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mSecondsRemainingLastDisplayed:I

    if-eq v0, v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v2, "VideoProgressListener: updating skip countdown timer"

    invoke-static {v1, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$800(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->displaySecondsRemainingUntilSkippable(I)V

    .line 745
    .end local v0    # "skipSecondsRemaining":I
    :cond_0
    return-void
.end method

.method private maintainSkippabilityForGettingStuckOrUnstuck()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 719
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsVideoProgressStuck:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsSkipEnabledDueToBeingStuck:Z

    if-nez v0, :cond_1

    .line 720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mStuckSinceTimeMilliseconds:J

    iget-object v4, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v4}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$1200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v4

    iget v4, v4, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowSkipAfterVideoStuckForMilliseconds:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: allowing skip due to being stuck for a while"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$800(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->enableSkip(Z)V

    .line 723
    iput-boolean v6, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsSkipEnabledDueToBeingStuck:Z

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mWasVideoProgressStuck:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsVideoProgressStuck:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsSkipPointPassed:Z

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v1, "VideoProgressListener: removing skip ability since we\'re unstuck and not past skip point"

    invoke-static {v0, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$800(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Lcom/fusepowered/nx/videoplayer/VideoDisplayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fusepowered/nx/videoplayer/VideoDisplayer;->enableSkip(Z)V

    goto :goto_0
.end method

.method private runInternal()V
    .locals 4

    .prologue
    .line 525
    :goto_0
    const-wide/16 v2, 0xfa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$200(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 534
    :try_start_1
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$700(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mMediaPlayerOfProgressListener:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-static {v3}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$300(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    const-string v3, "VideoProgressListener: exiting due to target video no longer being displayed"

    invoke-static {v1, v3}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->access$100(Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;Ljava/lang/String;)V

    .line 536
    monitor-exit v2

    :goto_1
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 539
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->getVideoProgressStatus()V

    .line 541
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->detectAndHandleVideoStart()V

    .line 543
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->detectAndHandleGettingStuckOrUnstuck()V

    .line 545
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->detectAndHandleVideoProgressMilestones()V

    .line 547
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->detectAndHandleSkipRequestedButNotAvailable()V

    .line 549
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->detectAndHandleSkipPointReached()V

    .line 551
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->maintainSkippabilityForGettingStuckOrUnstuck()V

    .line 553
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->maintainSkipCountdownTimer()V

    .line 555
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->maintainCompletionCountdownTimer()V

    .line 556
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    iget v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPositionMilliseconds:I

    iput v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPreviousPositionMilliseconds:I

    .line 559
    iget-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mIsVideoProgressStuck:Z

    iput-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mWasVideoProgressStuck:Z

    .line 560
    iget v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mLastMilestoneCompleted:I

    int-to-float v1, v1

    iput v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->mPreviousLastMilestoneCompleted:F

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 510
    :try_start_0
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->runInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoProgressListener;->this$0:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
