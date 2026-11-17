.class public Lcom/apptracker/android/advert/AppVideoView;
.super Landroid/widget/VideoView;
.source "tb"


# static fields
.field static final d:I = 0x190


# instance fields
.field protected A:Landroid/media/MediaPlayer;

.field e:I

.field h:I

.field k:Z

.field m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apptracker/android/module/AppAd;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/apptracker/android/module/AppAd;

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 194
    iput-boolean v1, p0, Lcom/apptracker/android/advert/AppVideoView;->k:Z

    .line 246
    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppVideoView;->m:Z

    .line 147
    iput v0, p0, Lcom/apptracker/android/advert/AppVideoView;->h:I

    .line 7
    invoke-virtual {p2}, Lcom/apptracker/android/module/AppAd;->getAllowSkip()I

    move-result v0

    iput v0, p0, Lcom/apptracker/android/advert/AppVideoView;->e:I

    .line 5
    return-void
.end method


# virtual methods
.method public getLastPausedPosition()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/apptracker/android/advert/AppVideoView;->h:I

    return v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/apptracker/android/advert/AppVideoView;->A:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getSkipAllowTime()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/apptracker/android/advert/AppVideoView;->e:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I

    .prologue
    .line 17
    invoke-super/range {p0 .. p5}, Landroid/widget/VideoView;->onLayout(ZIIII)V

    .line 40
    invoke-virtual {p0}, Lcom/apptracker/android/advert/AppVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 164
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 8
    const-string v0, "APTr"

    invoke-virtual {p0}, Lcom/apptracker/android/advert/AppVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/apptracker/android/advert/AppVideoView;->h:I

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u001eY/\u007f6M:F\t@:^qF1y>\\,Lw\u0000e"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/apptracker/android/advert/AppVideoView;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/apptracker/android/advert/AppVideoView;->pause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 74
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "h/Y\t@;L0\u007f6L(\u00070G\rL,\\2Lw\u0000e"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/apptracker/android/advert/AppVideoView;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/apptracker/android/advert/AppVideoView;->h:I

    invoke-virtual {p0, v0}, Lcom/apptracker/android/advert/AppVideoView;->seekTo(I)V

    .line 99
    invoke-virtual {p0}, Lcom/apptracker/android/advert/AppVideoView;->start()V

    .line 243
    return-void
.end method

.method public setLastPausedPosition(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/apptracker/android/advert/AppVideoView;->h:I

    .line 26
    return-void
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/apptracker/android/advert/AppVideoView;->A:Landroid/media/MediaPlayer;

    .line 67
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "APTr"

    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 254
    const-string v1, "\r\u0003?\u000f4<2\u000f,J(\u001e:\u0018/"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppVideoView;->m:Z

    .line 213
    return-void
.end method
