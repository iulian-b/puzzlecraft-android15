.class public Lcom/fusepowered/nx/monetization/business/reward/Balance;
.super Ljava/lang/Object;
.source "Balance.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private amount:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Amount"
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "DisplayName"
    .end annotation
.end field

.field private externalCurrencyId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ExternalCurrencyId"
    .end annotation
.end field

.field private payoutId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "PayoutId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/business/reward/Reward;)V
    .locals 2
    .param p1, "r"    # Lcom/fusepowered/nx/monetization/business/reward/Reward;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->displayName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->externalCurrencyId:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->amount:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->payoutId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getRewardName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->displayName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getRewardId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->externalCurrencyId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->amount:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/reward/Reward;->getPayoutId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->payoutId:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalCurrencyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->externalCurrencyId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/reward/Balance;->payoutId:Ljava/lang/String;

    return-object v0
.end method
