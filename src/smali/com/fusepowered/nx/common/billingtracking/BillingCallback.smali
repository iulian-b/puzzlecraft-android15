.class public Lcom/fusepowered/nx/common/billingtracking/BillingCallback;
.super Ljava/lang/Object;
.source "BillingCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "storeProductId"    # Ljava/lang/String;
    .param p1, "storeTransactionId"    # Ljava/lang/String;
    .param p2, "storeTransactionTimeUTC"    # Ljava/lang/String;
    .param p3, "costPerItem"    # F
    .param p4, "currencyLocale"    # Ljava/lang/String;
    .param p5, "quantity"    # I
    .param p6, "productTitle"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static/range {p0 .. p6}, Lcom/fusepowered/nx/common/JsonRequestManager;->getInAppBillingBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "requestBody":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 77
    :goto_0
    return-void

    .line 48
    :cond_0
    :try_start_0
    const-string v1, "PublicServices/MobileTrackingApiRestV1.svc/InAppPurchase/Put"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/fusepowered/nx/common/ServerConfig;->applyConfiguration(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;

    new-instance v5, Lcom/fusepowered/nx/common/billingtracking/BillingCallback$1;

    invoke-direct {v5}, Lcom/fusepowered/nx/common/billingtracking/BillingCallback$1;-><init>()V

    new-instance v6, Lcom/fusepowered/nx/common/billingtracking/BillingCallback$2;

    invoke-direct {v6}, Lcom/fusepowered/nx/common/billingtracking/BillingCallback$2;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 72
    .local v0, "request":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;>;"
    const-string v1, "InAppBillingRequest"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/volleytoolbox/GsonRequest;->setRequestName(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getRequestQueue()Lcom/fusepowered/nx/network/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/network/volley/RequestQueue;->add(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "request":Lcom/fusepowered/nx/volleytoolbox/GsonRequest;, "Lcom/fusepowered/nx/volleytoolbox/GsonRequest<Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;>;"
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 75
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while executing InAppBilling request."

    invoke-static {v1, v7}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
