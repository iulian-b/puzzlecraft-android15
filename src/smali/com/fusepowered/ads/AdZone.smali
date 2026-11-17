.class public Lcom/fusepowered/ads/AdZone;
.super Ljava/lang/Object;
.source "AdZone.java"


# instance fields
.field public IAPOfferObject:Lcom/fusepowered/OfferObject;

.field public enabled:Z

.field public frequency:I

.field public final id:I

.field public final name:Ljava/lang/String;

.field public rewardedObject:Lcom/fusepowered/RewardedObject;

.field public virtualGoodsOfferObject:Lcom/fusepowered/OfferObject;

.field public final waterfall:Lcom/fusepowered/ads/Waterfall;


# direct methods
.method public constructor <init>(ILjava/lang/String;[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "waterfall"    # [I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ads/AdZone;->frequency:I

    .line 21
    iput p1, p0, Lcom/fusepowered/ads/AdZone;->id:I

    .line 22
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fusepowered/ads/AdZone;->name:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/fusepowered/ads/Waterfall;

    invoke-direct {v0, p3}, Lcom/fusepowered/ads/Waterfall;-><init>([I)V

    iput-object v0, p0, Lcom/fusepowered/ads/AdZone;->waterfall:Lcom/fusepowered/ads/Waterfall;

    .line 24
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdZone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fusepowered/ads/AdZone;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ads/AdZone;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ads/AdZone;->waterfall:Lcom/fusepowered/ads/Waterfall;

    invoke-virtual {v1}, Lcom/fusepowered/ads/Waterfall;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
