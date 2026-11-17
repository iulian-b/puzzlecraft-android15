.class public Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;
.super Ljava/lang/Object;
.source "VideoPlayerOptions.java"


# instance fields
.field private allowMute:Z
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "allowMute"
    .end annotation
.end field

.field private allowSkipAfterMilliseconds:I
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "allowSkipAfterMilliseconds"
    .end annotation
.end field

.field private allowSkipAfterVideoStuckForMilliseconds:I
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "allowSkipAfterVideoStuckForMilliseconds"
    .end annotation
.end field

.field private autoPlay:Z
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "autoPlay"
    .end annotation
.end field

.field private controlsAlpha:I
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "controlsAlpha"
    .end annotation
.end field

.field private countdownAfterMilliseconds:I
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "countdownAfterMilliseconds"
    .end annotation
.end field

.field private countdownMessageFormat:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "countdownMessageFormat"
    .end annotation
.end field

.field private countdownMessageTextColor:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "countdownMessageTextColor"
    .end annotation
.end field

.field private errorMessageToast:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "errorMessageToast"
    .end annotation
.end field

.field private iconMaximumDimensionInDIP:I
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "controlIconMaxDimensionInDensityIndependentPixels"
    .end annotation
.end field

.field private iconsDistanceFromScreenEdgeInDIP:I
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "controlsDistanceFromScreenEdgeInDensityIndependentPixels"
    .end annotation
.end field

.field private specialSkipCountdownMessageFormat:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "specialSkipCountdownMessageFormat"
    .end annotation
.end field

.field private startMuted:Z
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "startMuted"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->allowSkipAfterMilliseconds:I

    .line 21
    iput v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->countdownAfterMilliseconds:I

    .line 25
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->countdownMessageTextColor:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->allowSkipAfterVideoStuckForMilliseconds:I

    .line 33
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->countdownMessageFormat:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->specialSkipCountdownMessageFormat:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->errorMessageToast:Ljava/lang/String;

    .line 45
    iput v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->iconMaximumDimensionInDIP:I

    .line 49
    iput v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->iconsDistanceFromScreenEdgeInDIP:I

    .line 53
    iput v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->controlsAlpha:I

    return-void
.end method


# virtual methods
.method public getAllowSkipAfterMilliseconds()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->allowSkipAfterMilliseconds:I

    return v0
.end method

.method public getAllowSkipAfterVideoStuckForMilliseconds()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->allowSkipAfterVideoStuckForMilliseconds:I

    return v0
.end method

.method public getControlsAlpha()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->controlsAlpha:I

    return v0
.end method

.method public getCountdownAfterMilliseconds()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->countdownAfterMilliseconds:I

    return v0
.end method

.method public getCountdownMessageFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->countdownMessageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getCountdownMessageTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->countdownMessageTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessageToast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->errorMessageToast:Ljava/lang/String;

    return-object v0
.end method

.method public getIconMaximumDimensionInDIP()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->iconMaximumDimensionInDIP:I

    return v0
.end method

.method public getIconsDistanceFromScreenEdgeInDIP()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->iconsDistanceFromScreenEdgeInDIP:I

    return v0
.end method

.method public getSpecialSkipCountdownMessageFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->specialSkipCountdownMessageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowMute()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->allowMute:Z

    return v0
.end method

.method public isStartMuted()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->startMuted:Z

    return v0
.end method
