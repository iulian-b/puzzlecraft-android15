.class public Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
.super Landroid/widget/RelativeLayout;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Lcom/fusepowered/nx/monetization/interfaces/ICustomVideoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoProgressChanged;,
        Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;,
        Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;,
        Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;
    }
.end annotation


# static fields
.field private static final CONTROLS_DEFAULT_TIMEOUT:I = 0xbb8

.field private static final CONTROLS_HINT_DEFAULT_TIMEOUT:I = 0xbb8

.field private static final CONTROLS_PLAY_BUTTON_SIZE:I = 0x23

.field private static final ID_CHILD_VIDEO_VIEW:I = 0x3e8

.field private static final ID_CLOSE:I = 0x3eb

.field private static final ID_CONTROLS:I = 0x3ea

.field private static final ID_CUSTOM_VIDEO_VIEW:I = 0x3e9

.field private static final ID_PROGRESS_BAR:I = 0x3ec

.field private static final ID_PROGRESS_CONTAINER:I = 0x3ef

.field private static final ID_TIME_DURATION:I = 0x3ee

.field private static final ID_TIME_ELAPSED:I = 0x3ed

.field private static final MARGIN_CONTROLS_BOTTOM:I = 0xa

.field private static final MARGIN_CONTROLS_LEFT:I = 0xa

.field private static final MARGIN_CONTROLS_RIGHT:I = 0xa

.field private static final MARGIN_CONTROLS_TOP:I = 0xa

.field private static final MSG_HIDE:I = 0x3e9

.field private static final MSG_HIDE_CONTROLS_ANIMATION_END:I = 0x3ec

.field private static final MSG_HIDE_CONTROLS_HINT_ANIMATION_END:I = 0x3ef

.field private static final MSG_HIDE_HINT:I = 0x3eb

.field private static final MSG_SHOW_CONTROLS_ANIMATION_END:I = 0x3ed

.field private static final MSG_SHOW_CONTROLS_HINT_ANIMATION_END:I = 0x3ee

.field private static final MSG_UPDATE_BUFFER:I = 0x3ea

.field private static final MSG_UPDATE_PROGRESS:I = 0x3e8

.field private static final PROGRESS_BAR_UPDATE_PERIOD:I = 0x1f4

.field private static final PROGRESS_UPDATE_PERIOD:I = 0x64

.field private static final closeButtonSize:Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;

.field private static final handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;


# instance fields
.field private buffered:I

.field private controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

.field private controlsAreDisplayed:Z

.field private controlsHint:Landroid/widget/TextView;

.field private errorDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

.field private errorOccurred:Z

.field private finished:Z

.field private hidePlayButton:Z

.field private onClose:Landroid/view/View$OnClickListener;

.field private final onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final onError:Landroid/media/MediaPlayer$OnErrorListener;

.field private final onLayoutClick:Landroid/view/View$OnClickListener;

.field private final onPlayPauseClicked:Landroid/view/View$OnClickListener;

.field private final onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private paused:Z

.field private prepared:Z

.field private starting:Z

.field private userOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private userSetOnCompletionListener:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

.field private videoDuration:Ljava/lang/String;

.field private videoURI:Ljava/lang/String;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    .line 94
    new-instance v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;

    const/16 v1, 0x19

    const/16 v2, 0x28

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;-><init>(IIII)V

    sput-object v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->closeButtonSize:Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;

    .line 308
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    .line 60
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .line 61
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoURI:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    .line 96
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    .line 97
    iput v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->buffered:I

    .line 98
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorOccurred:Z

    .line 99
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    .line 100
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    .line 101
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->hidePlayButton:Z

    .line 102
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->starting:Z

    .line 103
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z

    .line 104
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z

    .line 105
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    .line 107
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$1;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onPlayPauseClicked:Landroid/view/View$OnClickListener;

    .line 538
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 756
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->userSetOnCompletionListener:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    .line 758
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 779
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$4;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onLayoutClick:Landroid/view/View$OnClickListener;

    .line 788
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onError:Landroid/media/MediaPlayer$OnErrorListener;

    .line 846
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onClose:Landroid/view/View$OnClickListener;

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenSize"    # Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    .line 60
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .line 61
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoURI:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    .line 96
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    .line 97
    iput v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->buffered:I

    .line 98
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorOccurred:Z

    .line 99
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    .line 100
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    .line 101
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->hidePlayButton:Z

    .line 102
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->starting:Z

    .line 103
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z

    .line 104
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z

    .line 105
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    .line 107
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$1;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onPlayPauseClicked:Landroid/view/View$OnClickListener;

    .line 538
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$2;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 756
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->userSetOnCompletionListener:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    .line 758
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$3;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 779
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$4;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onLayoutClick:Landroid/view/View$OnClickListener;

    .line 788
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onError:Landroid/media/MediaPlayer$OnErrorListener;

    .line 846
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onClose:Landroid/view/View$OnClickListener;

    .line 143
    invoke-direct {p0, p2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->setParams(Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->createVideoView(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z

    return v0
.end method

.method static synthetic access$002(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->updateBuffer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onHideControlsAnimationEnd()V

    return-void
.end method

.method static synthetic access$1200(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onHideControlsHintAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->userOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->closeButtonSize:Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->buffered:I

    return v0
.end method

.method static synthetic access$200(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->userSetOnCompletionListener:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorOccurred:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorOccurred:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;J)V
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->showControls(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    return v0
.end method

.method static synthetic access$302(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->starting:Z

    return v0
.end method

.method static synthetic access$700(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->updateProgress()V

    return-void
.end method

.method static synthetic access$800(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->hideControls()V

    return-void
.end method

.method static synthetic access$900(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->hideControlsHint()V

    return-void
.end method

.method private convertTime(I)Ljava/lang/String;
    .locals 8
    .param p1, "time"    # I

    .prologue
    const/16 v7, 0x9

    .line 410
    div-int/lit16 v4, p1, 0x3e8

    div-int/lit16 v1, v4, 0xe10

    .line 411
    .local v1, "hours":I
    div-int/lit16 v4, p1, 0x3e8

    div-int/lit8 v2, v4, 0x3c

    .line 412
    .local v2, "minutes":I
    div-int/lit16 v4, p1, 0x3e8

    rem-int/lit8 v3, v4, 0x3c

    .line 414
    .local v3, "seconds":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-le v2, v7, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-le v3, v7, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "convertedTime":Ljava/lang/String;
    return-object v0

    .line 414
    .end local v0    # "convertedTime":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private createControls()V
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    .line 217
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .line 218
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setId(I)V

    .line 220
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onPlayPauseClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setOnPlayPauseClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->hidePlayButton:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->hidePlayPauseButton()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->addView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onClose:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$600(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onLayoutClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method

.method private createVideoView(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x2

    const/high16 v5, 0x41a00000    # 20.0f

    .line 170
    invoke-virtual {p0, v7}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->setWillNotDraw(Z)V

    .line 171
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 173
    new-instance v3, Landroid/widget/VideoView;

    invoke-direct {v3, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    .line 174
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setId(I)V

    .line 176
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v7}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 178
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onError:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 179
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 180
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v0

    .line 183
    .local v0, "hintPadding":I
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    .line 184
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    sget-object v4, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_PLAYER_CONTROLS_HINT:Lcom/fusepowered/nx/monetization/enums/StringResources;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/manager/StringsManager;->getString(Lcom/fusepowered/nx/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    sget-object v4, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_TEXT_COLOR:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    sget-object v4, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_BACKGROUND:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v3, v4}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)V

    .line 188
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 190
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 191
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 192
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v1, "hintParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->addView(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method private hideControls()V
    .locals 9

    .prologue
    const/16 v8, 0x3ec

    .line 422
    sget-object v5, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    const/16 v6, 0x3ed

    invoke-virtual {v5, v6}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 423
    sget-object v5, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    invoke-virtual {v5, v8}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 424
    sget-object v5, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 425
    sget-object v5, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 426
    const-wide/16 v2, 0x0

    .line 427
    .local v2, "animationDuration":J
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v5, :cond_1

    .line 428
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->clearAnimations()V

    .line 429
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    .line 430
    sget-object v5, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HIDE_ANIMATION:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 431
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    .line 432
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 433
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v5, v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_5

    .line 450
    invoke-virtual {p0, v8, v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 455
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    :goto_1
    return-void

    .line 435
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    sget-object v5, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_CLOSE_HIDE_ANIMATION:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 436
    .local v1, "closeAnimation":Landroid/view/animation/Animation;
    sget-object v5, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAYER_HIDE_ANIMATION:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v4

    .line 437
    .local v4, "progressAnimation":Landroid/view/animation/Animation;
    if-nez v1, :cond_3

    if-eqz v4, :cond_0

    .line 438
    :cond_3
    if-eqz v1, :cond_4

    .line 439
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 440
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$600(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 443
    :cond_4
    if-eqz v4, :cond_0

    .line 444
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 445
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1600(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 452
    .end local v1    # "closeAnimation":Landroid/view/animation/Animation;
    .end local v4    # "progressAnimation":Landroid/view/animation/Animation;
    :cond_5
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideControlsHint()V
    .locals 6

    .prologue
    .line 317
    sget-object v1, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_HIDE_ANIMATION:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 318
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x0

    .line 319
    .local v2, "duration":J
    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 321
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 323
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 324
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onHideControlsAnimationEnd()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setVisibility(I)V

    .line 253
    :cond_0
    return-void
.end method

.method private onHideControlsHintAnimation()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    :cond_0
    return-void
.end method

.method private setParams(Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;)V
    .locals 3
    .param p1, "screenSize"    # Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;

    .prologue
    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;

    const/4 v1, 0x0

    sget-object v2, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->closeButtonSize:Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->setScreenSizes(Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;[Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;)V

    .line 159
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->setId(I)V

    .line 160
    return-void
.end method

.method private showControls(J)V
    .locals 13
    .param p1, "timeout"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/16 v9, 0x3ed

    const/16 v8, 0x3e9

    .line 466
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v5, :cond_2

    .line 467
    iget-boolean v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    if-nez v5, :cond_1

    .line 468
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    .line 469
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->updateProgress()V

    .line 470
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->clearAnimations()V

    .line 471
    const-wide/16 v2, 0x0

    .line 472
    .local v2, "animationDuration":J
    sget-object v5, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_SHOW_ANIMATION:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 473
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_3

    .line 474
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v5, v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 475
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 488
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setVisibility(I)V

    .line 489
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->bringToFront()V

    .line 490
    sget-object v5, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    invoke-virtual {v5, v9}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 491
    cmp-long v5, v2, v10

    if-lez v5, :cond_1

    .line 492
    invoke-virtual {p0, v9, v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 495
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "animationDuration":J
    :cond_1
    cmp-long v5, p1, v10

    if-lez v5, :cond_2

    .line 496
    sget-object v5, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    invoke-virtual {v5, v8}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 497
    sget-object v5, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    const/16 v6, 0x3ec

    invoke-virtual {v5, v6}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 498
    const-wide/16 v6, 0xbb8

    invoke-virtual {p0, v8, v6, v7}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 501
    :cond_2
    return-void

    .line 477
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    .restart local v2    # "animationDuration":J
    :cond_3
    sget-object v5, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_CLOSE_SHOW_ANIMATION:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 478
    .local v1, "closeAnimation":Landroid/view/animation/Animation;
    sget-object v5, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAYER_SHOW_ANIMATION:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v4

    .line 479
    .local v4, "progressAnimation":Landroid/view/animation/Animation;
    if-eqz v1, :cond_4

    .line 480
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$600(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 481
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 483
    :cond_4
    if-eqz v4, :cond_0

    .line 484
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1600(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 485
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method private showControlsHint()V
    .locals 4

    .prologue
    .line 518
    sget-object v1, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_SHOW_ANIMATION:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 519
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    const/16 v1, 0x3eb

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 524
    return-void
.end method

.method private updateBuffer()V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->buffered:I

    .line 246
    :cond_0
    const/16 v0, 0x3ea

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 247
    return-void
.end method

.method private updateProgress()V
    .locals 8

    .prologue
    .line 354
    iget-boolean v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    if-nez v5, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    if-eqz v5, :cond_0

    .line 360
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v5, :cond_0

    .line 363
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    .line 364
    .local v3, "position":I
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    .line 365
    .local v1, "duration":I
    if-le v3, v1, :cond_2

    .line 366
    move v3, v1

    .line 372
    :cond_2
    if-lez v1, :cond_4

    .line 373
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->getMax()I

    move-result v5

    mul-int/2addr v5, v3

    div-int v2, v5, v1

    .line 378
    .local v2, "newPosition":I
    :goto_1
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->getMax()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v6

    mul-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x64

    .line 381
    .local v0, "bufferedPosition":I
    if-lez v1, :cond_5

    .line 382
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 383
    invoke-direct {p0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->convertTime(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    .line 385
    :cond_3
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    .line 390
    .local v4, "videoLength":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setPosition(I)V

    .line 391
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setBufferPosition(I)V

    .line 392
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1400(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->convertTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1500(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 396
    const/16 v5, 0x3e8

    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v5, v6, v7}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    goto :goto_0

    .line 375
    .end local v0    # "bufferedPosition":I
    .end local v2    # "newPosition":I
    .end local v4    # "videoLength":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "newPosition":I
    goto :goto_1

    .line 387
    .restart local v0    # "bufferedPosition":I
    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->convertTime(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "videoLength":Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method public displayPlayPauseButton(Z)V
    .locals 1
    .param p1, "display"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_1

    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->showPlayPauseButton()V

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->hidePlayPauseButton()V

    goto :goto_0

    .line 208
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->hidePlayButton:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public getVideoProgress()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 331
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    int-to-float v2, v3

    .line 332
    .local v2, "position":F
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    int-to-float v1, v3

    .line 333
    .local v1, "duration":F
    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    .line 334
    move v2, v1

    .line 339
    :cond_0
    cmpl-float v3, v1, v4

    if-lez v3, :cond_2

    .line 340
    div-float v0, v2, v1

    .line 344
    .local v0, "currentPosition":F
    :goto_0
    cmpg-float v3, v0, v4

    if-gez v3, :cond_1

    .line 345
    const/4 v0, 0x0

    .line 347
    :cond_1
    return v0

    .line 342
    .end local v0    # "currentPosition":F
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "currentPosition":F
    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    .line 529
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPause()V

    .line 534
    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->release()V

    .line 614
    iput-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 618
    iput-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    .line 620
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 621
    sget-object v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 622
    sget-object v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 623
    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->removeAllViews()V

    .line 625
    return-void
.end method

.method replay()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 838
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z

    .line 839
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z

    .line 840
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    .line 841
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->starting:Z

    .line 844
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 597
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->updateProgress()V

    .line 598
    return-void
.end method

.method sendHandlerMessage(IJ)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "delay"    # J

    .prologue
    .line 234
    sget-object v1, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    invoke-virtual {v1, p1, p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 235
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 236
    sget-object v1, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    sget-object v1, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setOnCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClose"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->onClose:Landroid/view/View$OnClickListener;

    .line 583
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$600(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->userSetOnCompletionListener:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    .line 577
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->userOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 557
    return-void
.end method

.method public setVideoSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoURI:Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->starting:Z

    .line 508
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-nez v0, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->createControls()V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPlay()V

    .line 512
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->buffered:I

    .line 513
    const/16 v0, 0x3ea

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 514
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->showControlsHint()V

    .line 515
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 562
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPause()V

    .line 565
    :cond_0
    return-void
.end method
