.class public Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;,
        Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;,
        Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDebugLog:Z

    .line 73
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSetupDone:Z

    .line 79
    iput-boolean v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDisposed:Z

    .line 82
    iput-boolean v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSubscriptionsSupported:Z

    .line 86
    iput-boolean v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mAsyncInProgress:Z

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 164
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 759
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    .line 762
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v4, "/"

    .line 772
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 775
    rsub-int v2, p0, -0x3e8

    .line 776
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 782
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 777
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 779
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 780
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 782
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 790
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_0
    return-void
.end method

.method consume(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 666
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 668
    iget-object v4, p1, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 669
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Items of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 674
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 677
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 678
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 682
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 683
    iget-object v4, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 684
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 695
    return-void

    .line 688
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 689
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    .param p2, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 734
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 738
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;",
            ">;",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;>;"
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 747
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 749
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;",
            ">;",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 975
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 976
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 977
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;Ljava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1006
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1007
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSetupDone:Z

    .line 287
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 293
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDisposed:Z

    .line 294
    iput-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    .line 295
    iput-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 296
    iput-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 297
    iput-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    .line 298
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 178
    iput-boolean p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDebugLog:Z

    .line 179
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 172
    iput-boolean p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDebugLog:Z

    .line 173
    iput-object p2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public flagEndAsync()V
    .locals 2

    .prologue
    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 836
    const-string v0, ""

    iput-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mAsyncInProgress:Z

    .line 838
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_0
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 830
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mAsyncInProgress:Z

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 796
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 797
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 798
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 799
    const/4 v1, 0x0

    .line 802
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 801
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 802
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 804
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 806
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 812
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 813
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 814
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 815
    const/4 v1, 0x0

    .line 818
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 817
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 818
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 820
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 822
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 445
    iget v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    const/4 v8, 0x0

    .line 524
    :goto_0
    return v8

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 448
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagEndAsync()V

    .line 453
    if-nez p3, :cond_2

    .line 454
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 455
    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 456
    .local v6, "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    .line 457
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 460
    .end local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 461
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 465
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 467
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 468
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 469
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 471
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 472
    :cond_3
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 474
    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 475
    .restart local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    .line 476
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 479
    .end local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 481
    .local v2, "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    :try_start_0
    new-instance v3, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;

    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v2    # "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    .local v3, "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 485
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 487
    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature verification failed for sku "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 488
    .restart local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    .line 489
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 491
    .end local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    :cond_7
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 502
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    .line 524
    .end local v3    # "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 493
    .restart local v2    # "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 496
    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 497
    .restart local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    .line 498
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 505
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    .end local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 507
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 508
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 509
    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 510
    .restart local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    goto :goto_1

    .line 513
    .end local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 514
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase canceled - Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 515
    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 516
    .restart local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    goto :goto_1

    .line 519
    .end local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase failed. Result code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 520
    invoke-static {v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 519
    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 521
    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 522
    .restart local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    goto/16 :goto_1

    .line 493
    .end local v6    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    .restart local v3    # "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    .restart local v2    # "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    goto/16 :goto_2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 332
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 371
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 372
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 375
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 376
    new-instance v11, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v11, v1, v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 378
    .local v11, "r":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagEndAsync()V

    .line 379
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    .line 428
    .end local v11    # "r":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 386
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 387
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagEndAsync()V

    .line 390
    new-instance v13, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 391
    .local v13, "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 405
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    :catch_0
    move-exception v9

    .line 406
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 408
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagEndAsync()V

    .line 410
    new-instance v13, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 411
    .restart local v13    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    goto/16 :goto_0

    .line 395
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 396
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 397
    move/from16 v0, p4

    iput v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mRequestCode:I

    .line 398
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchaseListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    .line 399
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 400
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 402
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 400
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 413
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 414
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 416
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagEndAsync()V

    .line 418
    new-instance v13, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 419
    .restart local v13    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    goto/16 :goto_0

    .line 420
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    :catch_2
    move-exception v9

    .line 421
    .local v9, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NullPointerException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 423
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagEndAsync()V

    .line 425
    new-instance v13, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/16 v1, -0x3f0

    const-string v2, "NullPointerException while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    .line 426
    .restart local v13    # "result":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 342
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1010
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;
        }
    .end annotation

    .prologue
    .line 528
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;
        }
    .end annotation

    .prologue
    .line 546
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 547
    const-string v4, "queryInventory"

    invoke-virtual {p0, v4}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 549
    :try_start_0
    new-instance v2, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;

    invoke-direct {v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;-><init>()V

    .line 550
    .local v2, "inv":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    const-string v4, "inapp"

    invoke-virtual {p0, v2, v4}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->queryPurchases(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;Ljava/lang/String;)I

    move-result v3

    .line 551
    .local v3, "r":I
    if-eqz v3, :cond_0

    .line 552
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    const-string v5, "Error refreshing inventory (querying owned items)."

    invoke-direct {v4, v3, v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 579
    .end local v2    # "inv":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    .end local v3    # "r":I
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    const/16 v5, -0x3e9

    const-string v6, "Remote exception while refreshing inventory."

    invoke-direct {v4, v5, v6, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 555
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "inv":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    .restart local v3    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 556
    :try_start_1
    const-string v4, "inapp"

    invoke-virtual {p0, v4, v2, p2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;Ljava/util/List;)I

    move-result v3

    .line 557
    if-eqz v3, :cond_1

    .line 558
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    const-string v5, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v4, v3, v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 582
    .end local v2    # "inv":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    .end local v3    # "r":I
    :catch_1
    move-exception v0

    .line 583
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    const/16 v5, -0x3ea

    const-string v6, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v4, v5, v6, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 563
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "inv":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    .restart local v3    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v4, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v4, :cond_3

    .line 564
    const-string v4, "subs"

    invoke-virtual {p0, v2, v4}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->queryPurchases(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;Ljava/lang/String;)I

    move-result v3

    .line 565
    if-eqz v3, :cond_2

    .line 566
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    const-string v5, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v4, v3, v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 584
    .end local v2    # "inv":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    .end local v3    # "r":I
    :catch_2
    move-exception v1

    .line 585
    .local v1, "exc":Ljava/lang/NullPointerException;
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    const/16 v5, -0x3f0

    const-string v6, "NullPointer while refreshing inventory."

    invoke-direct {v4, v5, v6, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 569
    .end local v1    # "exc":Ljava/lang/NullPointerException;
    .restart local v2    # "inv":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    .restart local v3    # "r":I
    :cond_2
    if-eqz p1, :cond_3

    .line 570
    :try_start_3
    const-string v4, "subs"

    invoke-virtual {p0, v4, v2, p2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;Ljava/util/List;)I

    move-result v3

    .line 571
    if-eqz v3, :cond_3

    .line 572
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;

    const-string v5, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v4, v3, v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 577
    :cond_3
    return-object v2
.end method

.method public queryInventoryAsync(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 647
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;)V

    .line 648
    return-void
.end method

.method public queryInventoryAsync(ZLcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;)V

    .line 652
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 616
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 617
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 618
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 619
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 620
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$2;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;ZLjava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 643
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 644
    return-void
.end method

.method queryPurchases(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 843
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Querying owned items, item type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 844
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 845
    const/4 v12, 0x0

    .line 846
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 849
    .local v1, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 853
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 854
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 855
    if-eqz v8, :cond_1

    .line 856
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 901
    .end local v8    # "response":I
    :goto_0
    return v8

    .line 859
    .restart local v8    # "response":I
    :cond_1
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 860
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 861
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 862
    :cond_2
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 863
    const/16 v8, -0x3ea

    goto :goto_0

    .line 866
    :cond_3
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 868
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 870
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 873
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_6

    .line 874
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 875
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 876
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 877
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 878
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 879
    new-instance v5, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    .local v5, "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    invoke-virtual {v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 882
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 883
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 887
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;->addPurchase(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    .line 873
    .end local v5    # "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 890
    :cond_5
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 891
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 892
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Signature: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 893
    const/4 v12, 0x1

    goto :goto_2

    .line 897
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_6
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 899
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 901
    if-eqz v12, :cond_7

    const/16 v13, -0x3eb

    :goto_3
    move v8, v13

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x0

    goto :goto_3
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;Ljava/util/List;)I
    .locals 23
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 906
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "Querying SKU details."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 907
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v15, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 909
    if-eqz p3, :cond_1

    .line 910
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 911
    .local v13, "sku":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 912
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 917
    .end local v13    # "sku":Ljava/lang/String;
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_2

    .line 918
    const-string v19, "queryPrices: nothing to do because there are no SKUs."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 919
    const/4 v10, 0x0

    .line 969
    :goto_1
    return v10

    .line 923
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v8, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    div-int/lit8 v7, v19, 0x14

    .line 926
    .local v7, "n":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    rem-int/lit8 v6, v19, 0x14

    .line 927
    .local v6, "mod":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_4

    .line 928
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v17, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v5, 0x14

    mul-int/lit8 v20, v5, 0x14

    add-int/lit8 v20, v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 930
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 932
    .end local v12    # "s":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 934
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz v6, :cond_6

    .line 935
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .restart local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v7, 0x14

    mul-int/lit8 v20, v7, 0x14

    add-int v20, v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 937
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 939
    .end local v12    # "s":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 943
    .local v16, "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 944
    .local v9, "querySkus":Landroid/os/Bundle;
    const-string v20, "ITEM_ID_LIST"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 948
    .local v14, "skuDetails":Landroid/os/Bundle;
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 949
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v10

    .line 950
    .local v10, "response":I
    if-eqz v10, :cond_8

    .line 951
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSkuDetails() failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 954
    :cond_8
    const-string v19, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logError(Ljava/lang/String;)V

    .line 955
    const/16 v10, -0x3ea

    goto/16 :goto_1

    .line 959
    .end local v10    # "response":I
    :cond_9
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 962
    .local v11, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 963
    .local v18, "thisResponse":Ljava/lang/String;
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/SkuDetails;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .local v4, "d":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/SkuDetails;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Got sku details: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 965
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;->addSkuDetails(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/SkuDetails;)V

    goto :goto_5

    .line 969
    .end local v4    # "d":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/SkuDetails;
    .end local v9    # "querySkus":Landroid/os/Bundle;
    .end local v11    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "skuDetails":Landroid/os/Bundle;
    .end local v16    # "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "thisResponse":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public startSetup(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabSetupFinishedListener;

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 204
    iget-boolean v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    const-string v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$1;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 276
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    if-eqz p1, :cond_1

    .line 271
    new-instance v1, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/4 v2, 0x3

    const-string v3, "Billing service unavailable on device."

    invoke-direct {v1, v2, v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->checkNotDisposed()V

    .line 307
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
