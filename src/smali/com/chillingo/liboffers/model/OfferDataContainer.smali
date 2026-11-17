.class public Lcom/chillingo/liboffers/model/OfferDataContainer;
.super Ljava/lang/Object;
.source "OfferDataContainer.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field data:Lcom/chillingo/liboffers/model/OfferData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/chillingo/liboffers/model/OfferData;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferDataContainer;->data:Lcom/chillingo/liboffers/model/OfferData;

    return-object v0
.end method

.method public setData(Lcom/chillingo/liboffers/model/OfferData;)V
    .locals 0
    .param p1, "data"    # Lcom/chillingo/liboffers/model/OfferData;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferDataContainer;->data:Lcom/chillingo/liboffers/model/OfferData;

    .line 21
    return-void
.end method
