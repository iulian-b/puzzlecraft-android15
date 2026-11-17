.class Lcom/apptracker/android/module/AppVideoModuleController$3;
.super Ljava/lang/Object;
.source "c"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController$3;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1586
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0014>\u00062\r\u0001\u000b2\u0015y\r9\'%\u00108\u0010w\u0015?\u0003#_"

    invoke-static {v2}, Lcom/apptracker/android/module/AppAd;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "F{\u000f#\u001e)\u000bf"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1483
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$3;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;)Lcom/apptracker/android/advert/AppVideoView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/apptracker/android/advert/AppVideoView;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 969
    iget-object v1, p0, Lcom/apptracker/android/module/AppVideoModuleController$3;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/apptracker/android/module/AppVideoModuleController;->b(Lcom/apptracker/android/module/AppVideoModuleController;Z)V

    .line 1358
    return v0
.end method
