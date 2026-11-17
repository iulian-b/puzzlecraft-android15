.class public Lcom/fusepowered/nx/monetization/business/reward/Reward;
.super Ljava/lang/Object;
.source "Reward.java"


# instance fields
.field private amount:D
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Amount"
    .end annotation
.end field

.field private payoutId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "PayoutId"
    .end annotation
.end field

.field private rewardId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ExternalCurrencyId"
    .end annotation
.end field

.field private rewardName:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "DisplayName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/business/reward/Reward;)V
    .locals 3
    .param p1, "r"    # Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->amount:D

    .line 22
    iput-object v2, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->rewardName:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->rewardId:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->payoutId:Ljava/lang/String;

    .line 39
    iget-wide v0, p1, Lcom/fusepowered/nx/monetization/business/reward/Reward;->amount:D

    iput-wide v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->amount:D

    .line 40
    iget-object v0, p1, Lcom/fusepowered/nx/monetization/business/reward/Reward;->rewardName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->rewardName:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/fusepowered/nx/monetization/business/reward/Reward;->rewardId:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->rewardId:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/fusepowered/nx/monetization/business/reward/Reward;->payoutId:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->payoutId:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->amount:D

    return-wide v0
.end method

.method public getPayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->payoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->rewardId:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->rewardName:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(D)V
    .locals 1
    .param p1, "amount"    # D

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/fusepowered/nx/monetization/business/reward/Reward;->amount:D

    return-void
.end method
