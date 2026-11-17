.class public Lcom/fusepowered/l1/VideoController;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPlayerWebView:Lcom/fusepowered/l1/AdView;

.field private mStretch:Lcom/fusepowered/l1/VideoStretchOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/fusepowered/l1/VideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/VideoController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Lcom/fusepowered/l1/AdView;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "playerView"    # Lcom/fusepowered/l1/AdView;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/fusepowered/l1/VideoStretchOption;->NONE:Lcom/fusepowered/l1/VideoStretchOption;

    iput-object v0, p0, Lcom/fusepowered/l1/VideoController;->mStretch:Lcom/fusepowered/l1/VideoStretchOption;

    .line 21
    sget-object v0, Lcom/fusepowered/l1/VideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "VideoController initialization"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 22
    iput-object p2, p0, Lcom/fusepowered/l1/VideoController;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    .line 24
    invoke-direct {p0, p1}, Lcom/fusepowered/l1/VideoController;->preparePlayer(Ljava/io/FileDescriptor;)V

    .line 25
    return-void
.end method

.method private preparePlayer(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "descriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 51
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    .line 52
    iget-object v1, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 53
    iget-object v1, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 54
    iget-object v1, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 56
    iget-object v1, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 59
    iget-object v1, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fusepowered/l1/VideoState;->BROKEN:Lcom/fusepowered/l1/VideoState;

    invoke-direct {p0, v1}, Lcom/fusepowered/l1/VideoController;->setVideoState(Lcom/fusepowered/l1/VideoState;)V

    goto :goto_0
.end method

.method private setVideoState(Lcom/fusepowered/l1/VideoState;)V
    .locals 1
    .param p1, "state"    # Lcom/fusepowered/l1/VideoState;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/l1/VideoController;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/fusepowered/l1/VideoController;->mPlayerWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/AdView;->setVideoState(Lcom/fusepowered/l1/VideoState;)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/fusepowered/l1/VideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "destroy"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 44
    iget-object v0, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    .line 48
    :cond_0
    return-void
.end method

.method getPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fusepowered/l1/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getStreachVideoParameter()Lcom/fusepowered/l1/VideoStretchOption;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fusepowered/l1/VideoController;->mStretch:Lcom/fusepowered/l1/VideoStretchOption;

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 77
    sget-object v0, Lcom/fusepowered/l1/VideoController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 78
    sget-object v0, Lcom/fusepowered/l1/VideoState;->BUFFERING:Lcom/fusepowered/l1/VideoState;

    invoke-direct {p0, v0}, Lcom/fusepowered/l1/VideoController;->setVideoState(Lcom/fusepowered/l1/VideoState;)V

    .line 79
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "errorMess":Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/l1/VideoController;->LOG_TAG:Ljava/lang/String;

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 85
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 71
    sget-object v0, Lcom/fusepowered/l1/VideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPrepared"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 72
    sget-object v0, Lcom/fusepowered/l1/VideoState;->READY:Lcom/fusepowered/l1/VideoState;

    invoke-direct {p0, v0}, Lcom/fusepowered/l1/VideoController;->setVideoState(Lcom/fusepowered/l1/VideoState;)V

    .line 73
    return-void
.end method

.method public setStreachVideoParameter(Lcom/fusepowered/l1/VideoStretchOption;)V
    .locals 3
    .param p1, "option"    # Lcom/fusepowered/l1/VideoStretchOption;

    .prologue
    .line 34
    sget-object v0, Lcom/fusepowered/l1/VideoController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreachVideoParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fusepowered/l1/VideoStretchOption;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 35
    iput-object p1, p0, Lcom/fusepowered/l1/VideoController;->mStretch:Lcom/fusepowered/l1/VideoStretchOption;

    .line 36
    return-void
.end method
