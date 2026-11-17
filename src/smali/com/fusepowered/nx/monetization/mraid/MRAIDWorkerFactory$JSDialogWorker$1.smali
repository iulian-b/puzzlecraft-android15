.class Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$1;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->finishWorker()V

    .line 416
    return-void
.end method
