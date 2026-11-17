.class Lcom/chillingo/liboffers/http/OfferImageDataClientImpl$1;
.super Ljava/lang/Object;
.source "OfferImageDataClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;->downloadImageDataForOffer(Lcom/chillingo/liboffers/model/Offer;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;

.field final synthetic val$finalSuccess:Z

.field final synthetic val$offer:Lcom/chillingo/liboffers/model/Offer;

.field final synthetic val$resultHandler:Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;ZLcom/chillingo/liboffers/model/Offer;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl$1;->this$0:Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;

    iput-object p2, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl$1;->val$resultHandler:Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;

    iput-boolean p3, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl$1;->val$finalSuccess:Z

    iput-object p4, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl$1;->val$offer:Lcom/chillingo/liboffers/model/Offer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl$1;->val$resultHandler:Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;

    iget-boolean v1, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl$1;->val$finalSuccess:Z

    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferImageDataClientImpl$1;->val$offer:Lcom/chillingo/liboffers/model/Offer;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;->downloadFinished(ZLcom/chillingo/liboffers/model/Offer;Z)V

    .line 66
    return-void
.end method
