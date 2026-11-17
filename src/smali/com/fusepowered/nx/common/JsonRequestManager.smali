.class public Lcom/fusepowered/nx/common/JsonRequestManager;
.super Ljava/lang/Object;
.source "JsonRequestManager.java"


# instance fields
.field private final device:Lcom/fusepowered/nx/common/Device;


# direct methods
.method protected constructor <init>(Lcom/fusepowered/nx/common/Device;)V
    .locals 0
    .param p1, "device"    # Lcom/fusepowered/nx/common/Device;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/fusepowered/nx/common/JsonRequestManager;->device:Lcom/fusepowered/nx/common/Device;

    .line 39
    return-void
.end method

.method public static getInAppBillingBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "storeProductId"    # Ljava/lang/String;
    .param p1, "storeTransactionId"    # Ljava/lang/String;
    .param p2, "storeTransactionTimeUTC"    # Ljava/lang/String;
    .param p3, "costPerItem"    # F
    .param p4, "currencyLocale"    # Ljava/lang/String;
    .param p5, "quantity"    # I
    .param p6, "productTitle"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "publisherSession":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const-string v3, "InAppBilling: No session"

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 82
    const/4 v2, 0x0

    .line 100
    :goto_0
    return-object v2

    .line 85
    :cond_0
    const-string v3, "Date"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/Date("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    :cond_1
    new-instance v1, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;

    invoke-direct {v1}, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;-><init>()V

    .line 89
    .local v1, "request":Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;
    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->setPublisherSession(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, p0}, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->setStoreProductId(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->setStoreTransactionId(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, p2}, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->setStoreTransactionTime(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, p3}, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->setCostPerItem(F)V

    .line 94
    invoke-virtual {v1, p4}, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->setCurrencyLocale(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, p5}, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->setQuantity(I)V

    .line 96
    invoke-virtual {v1, p6}, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->setProductTitle(Ljava/lang/String;)V

    .line 98
    new-instance v3, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v3}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "requestBody":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BillingBody: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected generateUdidJsonCollection()Lcom/fusepowered/nx/common/UDIDs;
    .locals 5

    .prologue
    .line 52
    :try_start_0
    new-instance v2, Lcom/fusepowered/nx/common/UDIDs;

    invoke-direct {v2}, Lcom/fusepowered/nx/common/UDIDs;-><init>()V

    .line 55
    .local v2, "udids":Lcom/fusepowered/nx/common/UDIDs;
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getAdvertiserId()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "advertiserId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 57
    const-string v3, "12"

    invoke-virtual {v2, v3, v0}, Lcom/fusepowered/nx/common/UDIDs;->addUDID(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v0    # "advertiserId":Ljava/lang/String;
    .end local v2    # "udids":Lcom/fusepowered/nx/common/UDIDs;
    :goto_0
    return-object v2

    .line 59
    .restart local v0    # "advertiserId":Ljava/lang/String;
    .restart local v2    # "udids":Lcom/fusepowered/nx/common/UDIDs;
    :cond_0
    const-string v3, "3"

    iget-object v4, p0, Lcom/fusepowered/nx/common/JsonRequestManager;->device:Lcom/fusepowered/nx/common/Device;

    invoke-virtual {v4}, Lcom/fusepowered/nx/common/Device;->getAndroidDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/nx/common/UDIDs;->addUDID(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "4"

    iget-object v4, p0, Lcom/fusepowered/nx/common/JsonRequestManager;->device:Lcom/fusepowered/nx/common/Device;

    invoke-virtual {v4}, Lcom/fusepowered/nx/common/Device;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/nx/common/UDIDs;->addUDID(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "advertiserId":Ljava/lang/String;
    .end local v2    # "udids":Lcom/fusepowered/nx/common/UDIDs;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AdvertiserJsonRequestManager: Unexpected exception caught in generateUdidJsonCollection()."

    invoke-static {v3, v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getDevice()Lcom/fusepowered/nx/common/Device;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/nx/common/JsonRequestManager;->device:Lcom/fusepowered/nx/common/Device;

    return-object v0
.end method
