.class public final Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/videoplayer/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field public allowMute:Z

.field public allowSkipAfterMilliseconds:I

.field public allowSkipAfterVideoStuckForMilliseconds:I

.field public controlIconMaxDimensionInDensityIndependentPixels:I

.field public controlsAlpha:I

.field public controlsDistanceFromScreenEdgeInDensityIndependentPixels:I

.field public countdownAfterMilliseconds:I

.field public countdownMessageFormat:Ljava/lang/String;

.field public countdownMessageTextColor:I

.field public errorMessageToast:Ljava/lang/String;

.field public mutedButtonIcon:Landroid/graphics/drawable/Drawable;

.field public notMutedButtonIcon:Landroid/graphics/drawable/Drawable;

.field public orientation:I

.field public skipButtonIcon:Landroid/graphics/drawable/Drawable;

.field public specialSkipCountdownMessageFormat:Ljava/lang/String;

.field public startMuted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->orientation:I

    .line 49
    iput-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowMute:Z

    .line 54
    iput-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->startMuted:Z

    .line 70
    iput v1, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowSkipAfterMilliseconds:I

    .line 82
    iput v1, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownAfterMilliseconds:I

    .line 88
    const-string v0, "Video ends in %d seconds"

    iput-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownMessageFormat:Ljava/lang/String;

    .line 94
    iput v1, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownMessageTextColor:I

    .line 100
    const-string v0, "Skip in %d seconds"

    iput-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->specialSkipCountdownMessageFormat:Ljava/lang/String;

    .line 106
    const/16 v0, 0xff

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsAlpha:I

    .line 112
    const/16 v0, 0x1e

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlIconMaxDimensionInDensityIndependentPixels:I

    .line 118
    const/16 v0, 0xa

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsDistanceFromScreenEdgeInDensityIndependentPixels:I

    .line 125
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowSkipAfterVideoStuckForMilliseconds:I

    .line 130
    const-string v0, "Sorry, something went wrong"

    iput-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->errorMessageToast:Ljava/lang/String;

    return-void
.end method
