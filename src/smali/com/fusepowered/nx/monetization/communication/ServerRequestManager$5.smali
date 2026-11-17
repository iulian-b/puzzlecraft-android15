.class Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$5;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->redeemCurrency(Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fusepowered/nx/network/volley/Response$Listener",
        "<",
        "Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

.field final synthetic val$balanceData:Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$5;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$5;->val$balanceData:Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;)V
    .locals 2
    .param p1, "responseData"    # Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$5;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->access$100(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$5;->val$balanceData:Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;

    invoke-virtual {v0, p1, v1}, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;->handleRedeemCurrency(Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;Lcom/fusepowered/nx/monetization/communication/RedeemRewardData;)V

    .line 232
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->access$202(Z)Z

    .line 233
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p1, Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;

    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$5;->onResponse(Lcom/fusepowered/nx/monetization/business/RedeemDeviceBalanceResponseData;)V

    return-void
.end method
