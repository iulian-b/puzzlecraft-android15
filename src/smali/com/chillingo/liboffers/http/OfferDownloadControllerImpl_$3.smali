.class Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$3;
.super Ljava/lang/Object;
.source "OfferDownloadControllerImpl_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->doDownloadOfferData(Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$storeType:Lcom/chillingo/liboffers/OfferSession$StoreType;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$3;->this$0:Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;

    iput-object p2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$3;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$3;->val$storeType:Lcom/chillingo/liboffers/OfferSession$StoreType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$3;->this$0:Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;

    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$3;->val$baseUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_$3;->val$storeType:Lcom/chillingo/liboffers/OfferSession$StoreType;

    invoke-static {v1, v2, v3}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;->access$201(Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl_;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "OfferDownloadControllerImpl_"

    const-string v2, "A runtime exception was thrown while executing code in a runnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
