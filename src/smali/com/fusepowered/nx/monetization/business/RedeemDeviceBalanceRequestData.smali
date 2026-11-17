.class public Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceRequestData;
.super Ljava/lang/Object;
.source "RedeemDeviceBalanceRequestData.java"


# instance fields
.field private payoutIds:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "PayoutIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private session:Lcom/fusepowered/nx/monetization/business/Session;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Session"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs setPayoutIds([Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 47
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceRequestData;->payoutIds:Ljava/util/List;

    .line 49
    :cond_0
    return-void
.end method

.method public setSession(Lcom/fusepowered/nx/monetization/business/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/fusepowered/nx/monetization/business/Session;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceRequestData;->session:Lcom/fusepowered/nx/monetization/business/Session;

    .line 42
    return-void
.end method
