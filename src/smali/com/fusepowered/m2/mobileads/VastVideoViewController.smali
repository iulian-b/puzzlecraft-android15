.class public Lcom/fusepowered/m2/mobileads/VastVideoViewController;
.super Lcom/fusepowered/m2/mobileads/BaseVideoViewController;
.source "VastVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mobileads/VastVideoViewController$11;
    }
.end annotation


# static fields
.field static final CURRENT_POSITION:Ljava/lang/String; = "current_position"

.field static final DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x1388

.field static final MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x3e80

.field private static final MAX_VIDEO_RETRIES:I = 0x1

.field private static final MOPUB_BROWSER_REQUEST_CODE:I = 0x1

.field static final RESUMED_VAST_CONFIGURATION:Ljava/lang/String; = "resumed_vast_configuration"

.field private static final SEEKER_POSITION_NOT_INITIALIZED:I = -0x1

.field static final VAST_VIDEO_CONFIGURATION:Ljava/lang/String; = "vast_video_configuration"

.field private static final VIDEO_COUNTDOWN_UPDATE_INTERVAL:J = 0xfaL

.field private static final VIDEO_PROGRESS_TIMER_CHECKER_DELAY:J = 0x32L

.field private static final VIDEO_VIEW_FILE_PERMISSION_ERROR:I = -0x80000000

.field public static final WEBVIEW_PADDING:I = 0x10


# instance fields
.field private mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBottomGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mClickThroughListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCloseButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCompanionAdView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCountdownRunnable:Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCtaButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDuration:I

.field private mHasSkipOffset:Z

.field private final mIconView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsCalibrationDone:Z

.field private mIsVideoFinishedPlaying:Z

.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProgressBarWidget:Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProgressCheckerRunnable:Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRadialCountdownWidget:Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSeekerPositionOnPause:I

.field private mShowCloseButtonDelay:I

.field private mShowCloseButtonEventFired:Z

.field private mTopGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

.field private mVideoError:Z

.field private mVideoRetries:I

.field private final mVideoView:Landroid/widget/VideoView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentExtras"    # Landroid/os/Bundle;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "broadcastIdentifier"    # J
    .param p6, "baseVideoViewControllerListener"    # Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 117
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p1, v3, p6}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 101
    const/16 v3, 0x1388

    iput v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 107
    iput-boolean v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    .line 108
    iput-boolean v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    .line 118
    iput v4, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "resumedVastConfiguration":Ljava/io/Serializable;
    if-eqz p3, :cond_0

    .line 122
    const-string v3, "resumed_vast_configuration"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 125
    :cond_0
    const-string v3, "vast_video_configuration"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 126
    .local v2, "serializable":Ljava/io/Serializable;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    if-eqz v3, :cond_1

    .line 128
    check-cast v1, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    .end local v1    # "resumedVastConfiguration":Ljava/io/Serializable;
    iput-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    .line 129
    const-string v3, "current_position"

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 137
    .end local v2    # "serializable":Ljava/io/Serializable;
    :goto_0
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 138
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "VastVideoConfiguration does not have a video disk path"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .restart local v1    # "resumedVastConfiguration":Ljava/io/Serializable;
    .restart local v2    # "serializable":Ljava/io/Serializable;
    :cond_1
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    if-eqz v3, :cond_2

    .line 132
    check-cast v2, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    .end local v2    # "serializable":Ljava/io/Serializable;
    iput-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    goto :goto_0

    .line 134
    .restart local v2    # "serializable":Ljava/io/Serializable;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "VastVideoConfiguration is invalid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    .end local v1    # "resumedVastConfiguration":Ljava/io/Serializable;
    .end local v2    # "serializable":Ljava/io/Serializable;
    :cond_3
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getVastCompanionAd()Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    .line 142
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getVastIcon()Lcom/fusepowered/m2/mobileads/VastIcon;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    .line 144
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->createMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 146
    new-instance v3, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;

    invoke-direct {v3, p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    .line 167
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 170
    invoke-direct {p0, p1, v6}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Landroid/widget/VideoView;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    .line 171
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->requestFocus()Z

    .line 174
    invoke-direct {p0, p1, v6}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->addTopGradientStripWidget(Landroid/content/Context;I)V

    .line 177
    invoke-direct {p0, p1, v5}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->addProgressBarWidget(Landroid/content/Context;I)V

    .line 180
    invoke-direct {p0, p1, v6}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->addBottomGradientStripWidget(Landroid/content/Context;I)V

    .line 183
    invoke-direct {p0, p1, v5}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->addRadialCountdownWidget(Landroid/content/Context;I)V

    .line 186
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    invoke-virtual {p0, p1, v3, v5}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastCompanionAd;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCompanionAdView:Landroid/view/View;

    .line 189
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    invoke-virtual {p0, p1, v3, v5}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->createIconView(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastIcon;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    .line 192
    invoke-direct {p0, p1, v5}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->addBlurredLastVideoFrameImageView(Landroid/content/Context;I)V

    .line 195
    const/16 v3, 0x8

    invoke-direct {p0, p1, v3}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->addCloseButtonWidget(Landroid/content/Context;I)V

    .line 198
    invoke-direct {p0, p1, v5}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->addCtaButtonWidget(Landroid/content/Context;I)V

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 201
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v3, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;

    invoke-direct {v3, p0, v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;

    .line 202
    new-instance v3, Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;

    invoke-direct {v3, p0, v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->shouldAllowClickThrough()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->stopRunnables()V

    return-void
.end method

.method static synthetic access$1200(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoError:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoError:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->remainingProgressTrackerCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastCompanionAd;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mDuration:I

    return v0
.end method

.method static synthetic access$302(Lcom/fusepowered/m2/mobileads/VastVideoViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mDuration:I

    return p1
.end method

.method static synthetic access$400(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->adjustSkipOffset()V

    return-void
.end method

.method static synthetic access$600(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->prepareBlurredLastVideoFrame()V

    return-void
.end method

.method static synthetic access$700(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return v0
.end method

.method static synthetic access$800(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;

    return-object v0
.end method

.method private addBlurredLastVideoFrameImageView(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    const/4 v2, -0x1

    .line 621
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    .line 622
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 627
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    return-void
.end method

.method private addBottomGradientStripWidget(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 520
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;II)V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    .line 524
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {v0, p2}, Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    .line 525
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 526
    return-void
.end method

.method private addCloseButtonWidget(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 559
    new-instance v3, Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;

    invoke-direct {v3, p1}, Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;

    .line 560
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, p2}, Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 562
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 564
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V

    .line 594
    .local v0, "closeOnTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v0}, Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    .line 597
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getCustomSkipText()Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "customSkipText":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 599
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v2}, Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonText(Ljava/lang/String;)V

    .line 603
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "customCloseIconUrl":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 605
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v1}, Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonIcon(Ljava/lang/String;)V

    .line 607
    :cond_1
    return-void
.end method

.method private addCtaButtonWidget(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 541
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 543
    .local v1, "hasCompanionAd":Z
    :goto_0
    new-instance v2, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getId()I

    move-result v3

    invoke-direct {v2, p1, v3, v1}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;

    .line 545
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v2, p2}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 547
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 549
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 552
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "customCtaText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 554
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->updateCtaText(Ljava/lang/String;)V

    .line 556
    :cond_0
    return-void

    .line 541
    .end local v0    # "customCtaText":Ljava/lang/String;
    .end local v1    # "hasCompanionAd":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addProgressBarWidget(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 529
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    .line 530
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p2}, Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 531
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 532
    return-void
.end method

.method private addRadialCountdownWidget(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 535
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;

    invoke-direct {v0, p1}, Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;

    .line 536
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {v0, p2}, Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 537
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 538
    return-void
.end method

.method private addTopGradientStripWidget(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 511
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getId()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;II)V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    .line 515
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {v0, p2}, Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    .line 516
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 517
    return-void
.end method

.method private adjustSkipOffset()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 305
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getDuration()I

    move-result v5

    .line 308
    .local v5, "videoDuration":I
    const/16 v6, 0x3e80

    if-ge v5, v6, :cond_0

    .line 309
    iput v5, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 313
    :cond_0
    iget-object v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v6}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getSkipOffset()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "skipOffsetString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 316
    :try_start_0
    invoke-static {v4}, Lcom/fusepowered/m2/common/util/Strings;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 317
    invoke-static {v4}, Lcom/fusepowered/m2/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 318
    .local v2, "skipOffsetMilliseconds":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v5, :cond_1

    .line 319
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 320
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    .line 336
    .end local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    invoke-static {v4}, Lcom/fusepowered/m2/common/util/Strings;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 323
    const-string v6, "%"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float v1, v6, v7

    .line 324
    .local v1, "percentage":F
    int-to-float v6, v5

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 325
    .local v3, "skipOffsetMillisecondsRounded":I
    if-ge v3, v5, :cond_1

    .line 326
    iput v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 327
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mHasSkipOffset:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v1    # "percentage":F
    .end local v3    # "skipOffsetMillisecondsRounded":I
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "Failed to parse skipoffset %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_1
    const-string v6, "Invalid VAST skipoffset format: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private createMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 611
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 612
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 615
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createVideoView(Landroid/content/Context;I)Landroid/widget/VideoView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 419
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 421
    .local v0, "videoView":Landroid/widget/VideoView;
    invoke-static {}, Lcom/fusepowered/m2/common/util/Utils;->generateUniqueId()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setId(I)V

    .line 423
    new-instance v1, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 437
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 439
    new-instance v1, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Landroid/widget/VideoView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 480
    new-instance v1, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 504
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 507
    return-object v0
.end method

.method private prepareBlurredLastVideoFrame()V
    .locals 7

    .prologue
    .line 339
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 340
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v3, :cond_0

    .line 343
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    iget-object v4, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v4}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getDuration()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 360
    .local v2, "lastVideoFrame":Landroid/graphics/Bitmap;
    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/fusepowered/m2/common/util/ImageUtils;->applyFastGaussianBlurToBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 363
    .local v0, "blurredLastVideoFrame":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 364
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    const/16 v4, 0x80

    invoke-static {v3, v4}, Lcom/fusepowered/m2/common/util/ImageUtils;->setImageViewAlpha(Landroid/widget/ImageView;I)V

    .line 368
    .end local v0    # "blurredLastVideoFrame":Landroid/graphics/Bitmap;
    .end local v2    # "lastVideoFrame":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0x80000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    const-string v3, "MediaMetadataRetriever.setDataSource() failed: status = 0x80000000"

    invoke-static {v3}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_1
    throw v1
.end method

.method private remainingProgressTrackerCount()I
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 415
    invoke-virtual {p0, v0, v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private shouldAllowClickThrough()Z
    .locals 1

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method private startRunnables()V
    .locals 4

    .prologue
    .line 893
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;->startRepeating(J)V

    .line 894
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;->startRepeating(J)V

    .line 895
    return-void
.end method

.method private stopRunnables()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;->stop()V

    .line 899
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;->stop()V

    .line 900
    return-void
.end method


# virtual methods
.method public backButtonEnabled()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method createCompanionAdView(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastCompanionAd;I)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vastCompanionAd"    # Lcom/fusepowered/m2/mobileads/VastCompanionAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "initialVisibility"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 722
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 724
    if-nez p2, :cond_0

    .line 725
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 726
    .local v2, "emptyView":Landroid/view/View;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 771
    .end local v2    # "emptyView":Landroid/view/View;
    :goto_0
    return-object v2

    .line 730
    :cond_0
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 731
    .local v4, "relativeLayout":Landroid/widget/RelativeLayout;
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 732
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 736
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->getVastResource()Lcom/fusepowered/m2/mobileads/VastResource;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/fusepowered/m2/mobileads/VastWebView;->createView(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastResource;)Lcom/fusepowered/m2/mobileads/VastWebView;

    move-result-object v1

    .line 740
    .local v1, "companionView":Lcom/fusepowered/m2/mobileads/VastWebView;
    new-instance v5, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;

    invoke-direct {v5, p0, p2, p1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Lcom/fusepowered/m2/mobileads/VastCompanionAd;Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lcom/fusepowered/m2/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/fusepowered/m2/mobileads/VastWebView$VastWebViewClickListener;)V

    .line 754
    new-instance v5, Lcom/fusepowered/m2/mobileads/VastVideoViewController$8;

    invoke-direct {v5, p0, p2, p1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController$8;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Lcom/fusepowered/m2/mobileads/VastCompanionAd;Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lcom/fusepowered/m2/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 762
    invoke-virtual {v1, p3}, Lcom/fusepowered/m2/mobileads/VastWebView;->setVisibility(I)V

    .line 764
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    int-to-float v5, v5

    invoke-static {v5, p1}, Lcom/fusepowered/m2/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v5

    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    invoke-static {v6, p1}, Lcom/fusepowered/m2/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 768
    .local v0, "companionAdLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 770
    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v1

    .line 771
    goto :goto_0
.end method

.method createIconView(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastIcon;I)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vastIcon"    # Lcom/fusepowered/m2/mobileads/VastIcon;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "initialVisibility"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 784
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 786
    if-nez p2, :cond_0

    .line 787
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 823
    :goto_0
    return-object v0

    .line 790
    :cond_0
    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastIcon;->getVastResource()Lcom/fusepowered/m2/mobileads/VastResource;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/fusepowered/m2/mobileads/VastWebView;->createView(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastResource;)Lcom/fusepowered/m2/mobileads/VastWebView;

    move-result-object v0

    .line 791
    .local v0, "iconView":Lcom/fusepowered/m2/mobileads/VastWebView;
    new-instance v2, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;

    invoke-direct {v2, p0, p2, p1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Lcom/fusepowered/m2/mobileads/VastIcon;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/fusepowered/m2/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/fusepowered/m2/mobileads/VastWebView$VastWebViewClickListener;)V

    .line 804
    new-instance v2, Lcom/fusepowered/m2/mobileads/VastVideoViewController$10;

    invoke-direct {v2, p0, p2}, Lcom/fusepowered/m2/mobileads/VastVideoViewController$10;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Lcom/fusepowered/m2/mobileads/VastIcon;)V

    invoke-virtual {v0, v2}, Lcom/fusepowered/m2/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 811
    invoke-virtual {v0, p3}, Lcom/fusepowered/m2/mobileads/VastWebView;->setVisibility(I)V

    .line 814
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastIcon;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    invoke-static {v2, p1}, Lcom/fusepowered/m2/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {p2}, Lcom/fusepowered/m2/mobileads/VastIcon;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-static {v3, p1}, Lcom/fusepowered/m2/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 818
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 819
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 821
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method getBlurredLastVideoFrameImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getBottomGradientStripWidget()Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method getCloseButtonWidget()Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;

    return-object v0
.end method

.method getCompanionAdView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 968
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method getCountdownRunnable()Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 912
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;

    return-object v0
.end method

.method getCtaButtonWidget()Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;

    return-object v0
.end method

.method getCurrentPosition()I
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method getDuration()I
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method getHasSkipOffset()Z
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    return v0
.end method

.method getIconView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 989
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    if-nez v0, :cond_0

    .line 859
    const/4 v0, 0x0

    .line 861
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getProgressBarWidget()Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    return-object v0
.end method

.method getProgressCheckerRunnable()Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/fusepowered/m2/mobileads/VastVideoViewProgressRunnable;

    return-object v0
.end method

.method getRadialCountdownWidget()Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;

    return-object v0
.end method

.method getShowCloseButtonDelay()I
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 933
    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return v0
.end method

.method getTopGradientStripWidget()Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 996
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method getUntriggeredTrackersBefore(II)Ljava/util/List;
    .locals 12
    .param p1, "currentPositionMillis"    # I
    .param p2, "videoLengthMillis"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    if-lez p2, :cond_2

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Lcom/fusepowered/m2/common/Preconditions$NoThrow;->checkArgument(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 379
    int-to-float v10, p1

    int-to-float v11, p2

    div-float v7, v10, v11

    .line 380
    .local v7, "progressFraction":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v9, "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    iget-object v10, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v10}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getAbsoluteTrackers()Ljava/util/ArrayList;

    move-result-object v2

    .line 383
    .local v2, "absoluteTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;>;"
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;

    const-string v10, ""

    invoke-direct {v0, v10, p1}, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    .line 384
    .local v0, "absoluteTest":Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 385
    .local v1, "absoluteTrackerCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 386
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;

    .line 387
    .local v8, "tracker":Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;
    invoke-virtual {v8, v0}, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;->compareTo(Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;)I

    move-result v10

    if-lez v10, :cond_3

    .line 395
    .end local v8    # "tracker":Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;
    :cond_0
    iget-object v10, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v10}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getFractionalTrackers()Ljava/util/ArrayList;

    move-result-object v5

    .line 396
    .local v5, "fractionalTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;>;"
    new-instance v3, Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;

    const-string v10, ""

    invoke-direct {v3, v10, v7}, Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    .line 397
    .local v3, "fractionalTest":Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 398
    .local v4, "fractionalTrackerCount":I
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_1

    .line 399
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;

    .line 400
    .local v8, "tracker":Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;
    invoke-virtual {v8, v3}, Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;->compareTo(Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;)I

    move-result v10

    if-lez v10, :cond_5

    .line 410
    .end local v0    # "absoluteTest":Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;
    .end local v1    # "absoluteTrackerCount":I
    .end local v2    # "absoluteTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;>;"
    .end local v3    # "fractionalTest":Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;
    .end local v4    # "fractionalTrackerCount":I
    .end local v5    # "fractionalTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;>;"
    .end local v6    # "i":I
    .end local v7    # "progressFraction":F
    .end local v8    # "tracker":Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;
    .end local v9    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    :cond_1
    :goto_3
    return-object v9

    .line 378
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 390
    .restart local v0    # "absoluteTest":Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;
    .restart local v1    # "absoluteTrackerCount":I
    .restart local v2    # "absoluteTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;>;"
    .restart local v6    # "i":I
    .restart local v7    # "progressFraction":F
    .local v8, "tracker":Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;
    .restart local v9    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    :cond_3
    invoke-virtual {v8}, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;->isTracked()Z

    move-result v10

    if-nez v10, :cond_4

    .line 391
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 403
    .restart local v3    # "fractionalTest":Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;
    .restart local v4    # "fractionalTrackerCount":I
    .restart local v5    # "fractionalTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;>;"
    .local v8, "tracker":Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;
    :cond_5
    invoke-virtual {v8}, Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;->isTracked()Z

    move-result v10

    if-nez v10, :cond_6

    .line 404
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 410
    .end local v0    # "absoluteTest":Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;
    .end local v1    # "absoluteTrackerCount":I
    .end local v2    # "absoluteTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;>;"
    .end local v3    # "fractionalTest":Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;
    .end local v4    # "fractionalTrackerCount":I
    .end local v5    # "fractionalTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;>;"
    .end local v6    # "i":I
    .end local v7    # "progressFraction":F
    .end local v8    # "tracker":Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;
    .end local v9    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_3
.end method

.method getVideoError()Z
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoError:Z

    return v0
.end method

.method getVideoRetries()I
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 919
    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoRetries:I

    return v0
.end method

.method protected getVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method handleClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "clickThroughUrl"    # Ljava/lang/String;
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 673
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 677
    :cond_0
    const-string v0, "com.fusepowered.m2.action.interstitial.click"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 679
    new-instance v0, Lcom/fusepowered/m2/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/fusepowered/m2/common/UrlHandler$Builder;-><init>()V

    sget-object v1, Lcom/fusepowered/m2/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/fusepowered/m2/common/UrlAction;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/fusepowered/m2/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->OPEN_APP_MARKET:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/fusepowered/m2/common/UrlAction;[Lcom/fusepowered/m2/common/UrlAction;)Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/m2/mobileads/VastVideoViewController$6;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController$6;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withResultActions(Lcom/fusepowered/m2/common/UrlHandler$ResultActions;)Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->build()Lcom/fusepowered/m2/common/UrlHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/fusepowered/m2/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleIconDisplay(I)V
    .locals 3
    .param p1, "currentPosition"    # I

    .prologue
    .line 872
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastIcon;->getOffsetMS()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/fusepowered/m2/mobileads/VastIcon;->handleImpression(Landroid/content/Context;ILjava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastIcon;->getDurationMS()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastIcon;->getOffsetMS()I

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastIcon;->getDurationMS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method isCalibrationDone()Z
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    return v0
.end method

.method isShowCloseButtonEventFired()Z
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method isVideoFinishedPlaying()Z
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return v0
.end method

.method makeVideoInteractable()V
    .locals 2

    .prologue
    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    .line 837
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->notifyVideoSkippable()V

    .line 841
    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 299
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 302
    :cond_0
    return-void
.end method

.method protected onCreate()V
    .locals 5

    .prologue
    .line 212
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;->onCreate()V

    .line 214
    sget-object v0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$11;->$SwitchMap$com$mopub$common$util$DeviceUtils$ForceOrientation:[I

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getCustomForceOrientation()Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getImpressionTrackers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 236
    const-string v0, "com.fusepowered.m2.action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 237
    return-void

    .line 216
    :pswitch_1
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetRequestedOrientation(I)V

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetRequestedOrientation(I)V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->stopRunnables()V

    .line 282
    const-string v0, "com.fusepowered.m2.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->stopRunnables()V

    .line 266
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 267
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 268
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getPauseTrackers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 277
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoRetries:I

    .line 244
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->startRunnables()V

    .line 246
    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    if-lez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 252
    :cond_1
    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 253
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getResumeTrackers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 261
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 287
    const-string v0, "current_position"

    iget v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v0, "resumed_vast_configuration"

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 289
    return-void
.end method

.method retryMediaPlayer(Landroid/media/MediaPlayer;II)Z
    .locals 8
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 637
    invoke-static {}, Lcom/fusepowered/m2/common/util/VersionCode;->currentApiLevel()Lcom/fusepowered/m2/common/util/VersionCode;

    move-result-object v6

    sget-object v7, Lcom/fusepowered/m2/common/util/VersionCode;->JELLY_BEAN:Lcom/fusepowered/m2/common/util/VersionCode;

    invoke-virtual {v6, v7}, Lcom/fusepowered/m2/common/util/VersionCode;->isBelow(Lcom/fusepowered/m2/common/util/VersionCode;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne p2, v4, :cond_0

    const/high16 v6, -0x80000000

    if-ne p3, v6, :cond_0

    iget v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoRetries:I

    if-ge v6, v4, :cond_0

    .line 642
    const/4 v2, 0x0

    .line 644
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 645
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-virtual {v6}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 654
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 655
    iget-object v6, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 660
    invoke-static {v3}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 661
    iget v5, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoRetries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoRetries:I

    .line 664
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    return v4

    .line 657
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 661
    iget v4, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoRetries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoRetries:I

    move v4, v5

    goto :goto_0

    .line 660
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/fusepowered/m2/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 661
    iget v5, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoRetries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoRetries:I

    throw v4

    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    :cond_0
    move v4, v5

    .line 664
    goto :goto_0

    .line 660
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 657
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method setCloseButtonVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 947
    iput-boolean p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    .line 948
    return-void
.end method

.method setMediaMetadataRetriever(Landroid/media/MediaMetadataRetriever;)V
    .locals 0
    .param p1, "mediaMetadataRetriever"    # Landroid/media/MediaMetadataRetriever;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 1046
    return-void
.end method

.method setProgressBarWidget(Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;)V
    .locals 0
    .param p1, "progressBarWidget"    # Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    .line 1060
    return-void
.end method

.method setRadialCountdownWidget(Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;)V
    .locals 0
    .param p1, "radialCountdownWidget"    # Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;

    .line 1053
    return-void
.end method

.method setVideoError()V
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mVideoError:Z

    .line 976
    return-void
.end method

.method shouldBeInteractable()Z
    .locals 2

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateCountdown()V
    .locals 3

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;

    iget v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;->updateCountdownProgress(II)V

    .line 851
    :cond_0
    return-void
.end method

.method updateProgressBar()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    .line 855
    return-void
.end method
