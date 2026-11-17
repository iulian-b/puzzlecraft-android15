.class Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2$1;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2$1;->this$1:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2$1;->this$1:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;

    iget-object v1, v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->access$300(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unhandled exception"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
