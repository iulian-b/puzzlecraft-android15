.class public Lcom/fusepowered/RewardedObject;
.super Ljava/lang/Object;
.source "RewardedObject.java"


# instance fields
.field public itemId:I

.field public offerId:I

.field public postRollMessage:Ljava/lang/String;

.field public preRollMessage:Ljava/lang/String;

.field public rewardAmount:I

.field public rewardItem:Ljava/lang/String;

.field public zoneId:I

.field public zoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/fusepowered/RewardedInfo;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/fusepowered/RewardedInfo;

    invoke-direct {v0}, Lcom/fusepowered/RewardedInfo;-><init>()V

    .line 24
    .local v0, "info":Lcom/fusepowered/RewardedInfo;
    iget-object v1, p0, Lcom/fusepowered/RewardedObject;->preRollMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/fusepowered/RewardedInfo;->preRollMessage:Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/fusepowered/RewardedObject;->postRollMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/fusepowered/RewardedInfo;->rewardMessage:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/fusepowered/RewardedObject;->rewardItem:Ljava/lang/String;

    iput-object v1, v0, Lcom/fusepowered/RewardedInfo;->rewardItem:Ljava/lang/String;

    .line 27
    iget v1, p0, Lcom/fusepowered/RewardedObject;->rewardAmount:I

    iput v1, v0, Lcom/fusepowered/RewardedInfo;->rewardAmount:I

    .line 28
    iget v1, p0, Lcom/fusepowered/RewardedObject;->itemId:I

    iput v1, v0, Lcom/fusepowered/RewardedInfo;->rewardItemId:I

    .line 30
    return-object v0
.end method

.method public hasPostRollMessage()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/RewardedObject;->postRollMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/RewardedObject;->postRollMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreRollMessage()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fusepowered/RewardedObject;->preRollMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/RewardedObject;->preRollMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardObject {zoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/RewardedObject;->zoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/RewardedObject;->offerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/RewardedObject;->itemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/RewardedObject;->rewardItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/RewardedObject;->rewardAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preRollMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/RewardedObject;->preRollMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/RewardedObject;->postRollMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
