.class Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$2;
.super Ljava/lang/Object;
.source "OfferDownloadControllerImpl_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->offerDataDownloadFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$2;->this$0:Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;

    iput-object p2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$2;->this$0:Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;

    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$2;->val$reason:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->access$101(Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "OfferDownloadControllerImpl_"

    const-string v2, "A runtime exception was thrown while executing code in a runnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
