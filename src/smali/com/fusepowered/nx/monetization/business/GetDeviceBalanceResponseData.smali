.class public Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;
.super Ljava/lang/Object;
.source "GetDeviceBalanceResponseData.java"


# instance fields
.field private balances:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Balances"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/reward/Reward;",
            ">;"
        }
    .end annotation
.end field

.field private log:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Log"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Message;",
            ">;"
        }
    .end annotation
.end field

.field private violations:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Violations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Violation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;->balances:Ljava/util/List;

    .line 38
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;->violations:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;->messages:Ljava/util/List;

    .line 44
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;->log:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBalances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/reward/Reward;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;->balances:Ljava/util/List;

    return-object v0
.end method
