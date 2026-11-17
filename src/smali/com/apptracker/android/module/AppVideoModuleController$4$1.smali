.class Lcom/apptracker/android/module/AppVideoModuleController$4$1;
.super Ljava/lang/Object;
.source "c"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppVideoModuleController$4;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/apptracker/android/module/AppVideoModuleController$4;


# direct methods
.method constructor <init>(Lcom/apptracker/android/module/AppVideoModuleController$4;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppVideoModuleController$4;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1582
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1391
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Lcom/apptracker/android/module/AppVideoModuleController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v1

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Lcom/apptracker/android/module/AppVideoModuleController;Z)V

    .line 1305
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    iget-object v0, v0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getMediaProgress25Url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->trackUrl(Ljava/lang/String;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->m(Lcom/apptracker/android/module/AppVideoModuleController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v1

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 1478
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/apptracker/android/module/AppVideoModuleController;->F(Lcom/apptracker/android/module/AppVideoModuleController;Z)V

    .line 795
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    iget-object v0, v0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getMediaProgress50Url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->trackUrl(Ljava/lang/String;)V

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->K(Lcom/apptracker/android/module/AppVideoModuleController;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppVideoView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v1

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppVideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 1329
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/apptracker/android/module/AppVideoModuleController;->k(Lcom/apptracker/android/module/AppVideoModuleController;Z)V

    .line 783
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    iget-object v0, v0, Lcom/apptracker/android/module/AppVideoModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getMediaProgress75Url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->trackUrl(Ljava/lang/String;)V

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->G(Lcom/apptracker/android/module/AppVideoModuleController;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->m(Lcom/apptracker/android/module/AppVideoModuleController;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->K(Lcom/apptracker/android/module/AppVideoModuleController;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 996
    :cond_3
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$4$1;->m:Lcom/apptracker/android/module/AppVideoModuleController$4;

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController$4;->G(Lcom/apptracker/android/module/AppVideoModuleController$4;)Lcom/apptracker/android/module/AppVideoModuleController;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Lcom/apptracker/android/advert/AppVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1151
    :cond_4
    return-void
.end method
