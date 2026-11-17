.class public Lcom/chillingo/liboffers/model/OfferData;
.super Ljava/lang/Object;
.source "OfferData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x43f89c36546a738eL


# instance fields
.field private offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

.field private offers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/model/OfferData;->offers:Ljava/util/List;

    .line 23
    new-instance v0, Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-direct {v0}, Lcom/chillingo/liboffers/model/OfferConfig;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/model/OfferData;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    .line 24
    return-void
.end method


# virtual methods
.method public getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferData;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    return-object v0
.end method

.method public getOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferData;->offers:Ljava/util/List;

    return-object v0
.end method

.method public setOfferConfig(Lcom/chillingo/liboffers/model/OfferConfig;)V
    .locals 0
    .param p1, "offerConfig"    # Lcom/chillingo/liboffers/model/OfferConfig;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferData;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    .line 52
    return-void
.end method

.method public setOffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/liboffers/model/Offer;>;"
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferData;->offers:Ljava/util/List;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    const-string v1, "offers: none"

    .line 29
    .local v1, "offersString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offerConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/liboffers/model/OfferData;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "offerConfigString":Ljava/lang/String;
    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferData;->offers:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferData;->offers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/liboffers/model/OfferData;->offers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
