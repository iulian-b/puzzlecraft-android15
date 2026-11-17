.class final Lcom/fusepowered/nx/common/billingtracking/BillingCallback$1;
.super Ljava/lang/Object;
.source "BillingCallback.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/common/billingtracking/BillingCallback;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fusepowered/nx/network/volley/Response$Listener",
        "<",
        "Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;)V
    .locals 1
    .param p1, "responseData"    # Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;

    .prologue
    .line 57
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;->isSuccessful()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "InAppBilling response successful."

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v0, "InAppBilling response failed."

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;

    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/common/billingtracking/BillingCallback$1;->onResponse(Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;)V

    return-void
.end method
