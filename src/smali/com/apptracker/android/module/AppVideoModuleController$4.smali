.class Lcom/apptracker/android/module/AppVideoModuleController$4;
.super Ljava/lang/Object;
.source "c"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppVideoModuleController;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/apptracker/android/module/AppVideoModuleController;


# direct methods
.method constructor <init>(Lcom/apptracker/android/module/AppVideoModuleController;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController$4;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    return-object v0
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 1355
    const-string v0, "APTr"

    const-string v1, "GPU\\^oX\\F\u0017^WaKTIPKT]"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptracker/android/advert/AppVideoView;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 1413
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->b(Lcom/apptracker/android/module/AppVideoModuleController;Z)V

    .line 1493
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0, v2}, Lcom/apptracker/android/module/AppVideoModuleController;->m(Lcom/apptracker/android/module/AppVideoModuleController;Z)V

    .line 1549
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->L(Lcom/apptracker/android/module/AppVideoModuleController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->J(Lcom/apptracker/android/module/AppVideoModuleController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0, v2}, Lcom/apptracker/android/module/AppVideoModuleController;->L(Lcom/apptracker/android/module/AppVideoModuleController;Z)V

    .line 812
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    iget-object v0, v0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getAllowSkip()I

    move-result v0

    .line 1035
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    .line 660
    iget-object v2, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-virtual {v2, v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->G(II)Z

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->getLastPausedPosition()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    .line 1172
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-virtual {v1, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->G(I)V

    .line 890
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->getSkipAllowTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->getLastPausedPosition()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    .line 671
    if-ltz v0, :cond_1

    .line 1250
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-virtual {v1, v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(I)V

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    new-instance v1, Lcom/apptracker/android/module/AppVideoModuleController$4$1;

    invoke-direct {v1, p0}, Lcom/apptracker/android/module/AppVideoModuleController$4$1;-><init>(Lcom/apptracker/android/module/AppVideoModuleController$4;)V

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppVideoView;->post(Ljava/lang/Runnable;)Z

    .line 1133
    return-void
.end method
