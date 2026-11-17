.class public Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;
.super Ljava/lang/Object;
.source "InAppPurchaseRequestData.java"


# instance fields
.field private advertiserSession:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "AdvertiserSessionId"
    .end annotation
.end field

.field private costPerItem:Ljava/lang/Float;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "CostPerItem"
    .end annotation
.end field

.field private currencyLocale:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "CurrencyLocale"
    .end annotation
.end field

.field private productTitle:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ProductTitle"
    .end annotation
.end field

.field private publisherSession:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "PublisherSessionId"
    .end annotation
.end field

.field private quantity:Ljava/lang/Integer;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Quantity"
    .end annotation
.end field

.field private storeProductId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "StoreProductId"
    .end annotation
.end field

.field private storeTransactionId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "StoreTransactionId"
    .end annotation
.end field

.field private storeTransactionTime:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "StoreTransactionTimeUtc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCostPerItem(F)V
    .locals 1
    .param p1, "costPerItem"    # F

    .prologue
    .line 66
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->costPerItem:Ljava/lang/Float;

    .line 67
    return-void
.end method

.method public setCurrencyLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyLocale"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->currencyLocale:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setProductTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "productTitle"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->productTitle:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setPublisherSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherSession"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->publisherSession:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setQuantity(I)V
    .locals 1
    .param p1, "quantity"    # I

    .prologue
    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->quantity:Ljava/lang/Integer;

    .line 76
    return-void
.end method

.method public setStoreProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeProductId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->storeProductId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setStoreTransactionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeTransactionId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->storeTransactionId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setStoreTransactionTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeTransactionTime"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseRequestData;->storeTransactionTime:Ljava/lang/String;

    .line 115
    return-void
.end method
