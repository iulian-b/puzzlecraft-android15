.class Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_$1;
.super Ljava/lang/Object;
.source "OfferImageDataClientImpl_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->downloadImageDataForOffer(Lcom/chillingo/liboffers/model/Offer;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;

.field final synthetic val$offer:Lcom/chillingo/liboffers/model/Offer;

.field final synthetic val$resultHandler:Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;Lcom/chillingo/liboffers/model/Offer;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_$1;->this$0:Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;

    iput-object p2, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_$1;->val$offer:Lcom/chillingo/liboffers/model/Offer;

    iput-object p3, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_$1;->val$resultHandler:Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_$1;->this$0:Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;

    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_$1;->val$offer:Lcom/chillingo/liboffers/model/Offer;

    iget-object v3, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_$1;->val$resultHandler:Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;

    invoke-static {v1, v2, v3}, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;->access$001(Lcom/chillingo/liboffers/http/OfferImageDataClientImpl_;Lcom/chillingo/liboffers/model/Offer;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "OfferImageDataClientImpl_"

    const-string v2, "A runtime exception was thrown while executing code in a runnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
