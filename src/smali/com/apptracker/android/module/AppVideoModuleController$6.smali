.class Lcom/apptracker/android/module/AppVideoModuleController$6;
.super Ljava/lang/Object;
.source "c"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/apptracker/android/module/AppVideoModuleController$6;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    .line 1529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1089
    const-string v0, "APTr"

    const-string v1, "\u0012B\u0000N\u000b}\rN\u0013\u0005\u000bE\'D\t[\u0008N\u0010B\u000bE"

    invoke-static {v1}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$6;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->B(Lcom/apptracker/android/module/AppVideoModuleController;Z)V

    .line 724
    iget-object v0, p0, Lcom/apptracker/android/module/AppVideoModuleController$6;->m:Lcom/apptracker/android/module/AppVideoModuleController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->L(Z)V

    .line 705
    return-void
.end method
