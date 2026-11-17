.class public Lcom/chillingo/liboffers/model/ConversionResponse;
.super Ljava/lang/Object;
.source "ConversionResponse.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private sourceId:Ljava/lang/String;

.field private targetId:Ljava/lang/String;

.field private trackingId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chillingo/liboffers/model/ConversionResponse;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/chillingo/liboffers/model/ConversionResponse;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/chillingo/liboffers/model/ConversionResponse;->trackingId:Ljava/lang/String;

    return-object v0
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/chillingo/liboffers/model/ConversionResponse;->sourceId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/chillingo/liboffers/model/ConversionResponse;->targetId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTrackingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackingId"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/chillingo/liboffers/model/ConversionResponse;->trackingId:Ljava/lang/String;

    .line 23
    return-void
.end method
