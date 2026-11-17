.class public Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;
.super Ljava/lang/Object;
.source "OfferDownloadControllerImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/http/OfferDownloadController;
.implements Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;
.implements Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl$1;
    }
.end annotation


# static fields
.field private static final NUM_RETRIES:I = 0x2

.field private static final OFFER_DATA_CACHE_ID:Ljava/lang/String; = "offerdata"

.field private static final PREFS_KEY_COUNTRY_CODE:Ljava/lang/String; = "countryCode"

.field private static final PREFS_KEY_USERID:Ljava/lang/String; = "UserId"

.field private static final PREFS_NAME:Ljava/lang/String; = "OfferDownloadController"


# instance fields
.field baseUrl:Ljava/lang/String;

.field cache:Lcom/chillingo/liboffers/http/Cache;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
    .end annotation
.end field

.field context:Landroid/content/Context;
    .annotation build Lcom/googlecode/androidannotations/annotations/RootContext;
    .end annotation
.end field

.field countryCode:Ljava/lang/String;

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private offerData:Lcom/chillingo/liboffers/model/OfferData;

.field offerDataController:Lcom/chillingo/liboffers/http/OfferDataController;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
        value = Lcom/chillingo/liboffers/http/OfferDataControllerImpl;
    .end annotation
.end field

.field offerImageDataClient:Lcom/chillingo/liboffers/http/OfferImageDataClient;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
        value = Lcom/chillingo/liboffers/http/OfferImageDataClientImpl;
    .end annotation
.end field

.field retriesTried:I

.field storeType:Lcom/chillingo/liboffers/OfferSession$StoreType;

.field uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private countryCodeFromPrefs()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->countryCode:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->context:Landroid/content/Context;

    const-string v2, "OfferDownloadController"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 245
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "countryCode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    const-string v1, "countryCode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->countryCode:Ljava/lang/String;

    .line 251
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->countryCode:Ljava/lang/String;

    return-object v1

    .line 248
    .restart local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    iput-object v4, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->countryCode:Ljava/lang/String;

    goto :goto_0
.end method

.method private downloadImageDataForOffersIfNeeded()V
    .locals 6

    .prologue
    .line 180
    iget-object v3, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    if-nez v3, :cond_0

    .line 181
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No this.offerData"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_0
    iget-object v3, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/OfferData;->getOffers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/OfferData;->getOffers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/model/Offer;

    .line 186
    .local v1, "offer":Lcom/chillingo/liboffers/model/Offer;
    const-string v3, "Offers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OfferId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/Offer;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v3, "Offers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offer type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/Offer;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v3, "Offers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offer href: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/Offer;->getHref()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v3, "Offers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offer image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/Offer;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v3, "Offers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offer affiliate redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/Offer;->getAffiliateRedirectUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/Offer;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->getOfferItemFromCache(Ljava/lang/String;)Lcom/chillingo/liboffers/model/Offer;

    move-result-object v2

    .line 194
    .local v2, "offerFromCache":Lcom/chillingo/liboffers/model/Offer;
    if-nez v2, :cond_1

    .line 196
    const-string v3, "Offers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting image data download [URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/Offer;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v3, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerImageDataClient:Lcom/chillingo/liboffers/http/OfferImageDataClient;

    invoke-interface {v3, v1, p0}, Lcom/chillingo/liboffers/http/OfferImageDataClient;->downloadImageDataForOffer(Lcom/chillingo/liboffers/model/Offer;Lcom/chillingo/liboffers/http/OfferImageDataClient$OfferImageDataClientResultHandler;)V

    goto/16 :goto_0

    .line 199
    :cond_1
    const-string v3, "Offers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found the offer in the cache [offer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->downloadFinished(ZLcom/chillingo/liboffers/model/Offer;Z)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "offer":Lcom/chillingo/liboffers/model/Offer;
    .end local v2    # "offerFromCache":Lcom/chillingo/liboffers/model/Offer;
    :cond_2
    return-void
.end method

.method private getOfferDataFromCache()Lcom/chillingo/liboffers/model/OfferData;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 109
    const/4 v1, 0x0

    .line 112
    .local v1, "fromCache":Ljava/lang/Object;
    :try_start_0
    iget-object v5, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->cache:Lcom/chillingo/liboffers/http/Cache;

    const-string v6, "offerdata"

    invoke-virtual {v5, v6}, Lcom/chillingo/liboffers/http/Cache;->getCacheItemForId(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    .end local v1    # "fromCache":Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_1

    move-object v2, v4

    .line 140
    :cond_0
    :goto_1
    return-object v2

    .line 114
    .restart local v1    # "fromCache":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 116
    .local v3, "t":Ljava/lang/Throwable;
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occured when trying to retrieve offer data from cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v1    # "fromCache":Ljava/lang/Object;
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    .line 127
    .local v2, "offerDataFromCache":Lcom/chillingo/liboffers/model/OfferData;
    :try_start_1
    instance-of v5, v1, Lcom/chillingo/liboffers/model/OfferData;

    if-eqz v5, :cond_2

    .line 128
    move-object v0, v1

    check-cast v0, Lcom/chillingo/liboffers/model/OfferData;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/chillingo/liboffers/model/OfferData;->getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/chillingo/liboffers/model/OfferData;->getOffers()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    :cond_3
    move-object v2, v4

    .line 137
    goto :goto_1

    .line 129
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private getOfferItemFromCache(Ljava/lang/String;)Lcom/chillingo/liboffers/model/Offer;
    .locals 7
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 214
    .local v2, "offerItem":Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->cache:Lcom/chillingo/liboffers/http/Cache;

    invoke-virtual {v4, p1}, Lcom/chillingo/liboffers/http/Cache;->getCacheItemForId(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 221
    .end local v2    # "offerItem":Ljava/lang/Object;
    :goto_0
    const/4 v1, 0x0

    .line 224
    .local v1, "offerFromCache":Lcom/chillingo/liboffers/model/Offer;
    :try_start_1
    instance-of v4, v2, Lcom/chillingo/liboffers/model/Offer;

    if-eqz v4, :cond_0

    .line 225
    move-object v0, v2

    check-cast v0, Lcom/chillingo/liboffers/model/Offer;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 232
    const/4 v1, 0x0

    .line 235
    .end local v1    # "offerFromCache":Lcom/chillingo/liboffers/model/Offer;
    :cond_1
    return-object v1

    .line 216
    .restart local v2    # "offerItem":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 218
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "Offers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured when trying to retrieve offer item from cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .end local v2    # "offerItem":Ljava/lang/Object;
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v1    # "offerFromCache":Lcom/chillingo/liboffers/model/Offer;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private getUuid()Ljava/lang/String;
    .locals 7

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 385
    .local v1, "uuid":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->cache:Lcom/chillingo/liboffers/http/Cache;

    const-string v5, "UserId"

    invoke-virtual {v4, v5}, Lcom/chillingo/liboffers/http/Cache;->getCacheItemForId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 388
    .local v3, "uuidFromCache":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 389
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 397
    .end local v3    # "uuidFromCache":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 398
    const-string v4, "Offers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using UUID from cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 420
    .end local v1    # "uuid":Ljava/lang/String;
    .local v2, "uuid":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 403
    .end local v2    # "uuid":Ljava/lang/String;
    .restart local v1    # "uuid":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    invoke-virtual {v4}, Lcom/chillingo/liboffers/utils/UuidUtils;->generateUuid()Ljava/lang/String;

    move-result-object v1

    .line 407
    if-nez v1, :cond_2

    .line 408
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to obtain UUID"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 412
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->cache:Lcom/chillingo/liboffers/http/Cache;

    const-string v5, "UserId"

    iget-object v6, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    invoke-virtual {v6}, Lcom/chillingo/liboffers/utils/UuidUtils;->defaultUUIDExpiryDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Lcom/chillingo/liboffers/http/Cache;->replaceCacheItemForId(Ljava/lang/String;Ljava/io/Serializable;Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    :goto_2
    const-string v4, "Offers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using new UUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 420
    .end local v1    # "uuid":Ljava/lang/String;
    .restart local v2    # "uuid":Ljava/lang/String;
    goto :goto_1

    .line 414
    .end local v2    # "uuid":Ljava/lang/String;
    .restart local v1    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2

    .line 391
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setCountryCodeInPrefs(Ljava/lang/String;)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->countryCode:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->context:Landroid/content/Context;

    const-string v3, "OfferDownloadController"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 257
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "countryCode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return-void
.end method


# virtual methods
.method public doDownloadOfferData(Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V
    .locals 4
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "storeType"    # Lcom/chillingo/liboffers/OfferSession$StoreType;
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 156
    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/chillingo/liboffers/utils/DeviceUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;

    invoke-direct {v1}, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;-><init>()V

    .line 160
    .local v1, "params":Lcom/chillingo/liboffers/http/OfferDataDownloadParams;
    iput-object p1, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->baseUrl:Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/chillingo/liboffers/config/Config;->getCombinedSDKAndAPIString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->sdk:Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/chillingo/liboffers/utils/DeviceUtils;->screenBoundsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->screenSize:Ljava/lang/String;

    .line 165
    iput-object v0, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->bundleId:Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/chillingo/liboffers/utils/DeviceUtils;->deviceUname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->uname:Ljava/lang/String;

    .line 167
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->getUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->userId:Ljava/lang/String;

    .line 168
    invoke-virtual {v1, p2}, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->setStoreType(Lcom/chillingo/liboffers/OfferSession$StoreType;)V

    .line 171
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->countryCodeFromPrefs()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->countryCode:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerDataController:Lcom/chillingo/liboffers/http/OfferDataController;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/chillingo/liboffers/http/OfferDataController;->initWithConfig(Lcom/chillingo/liboffers/http/OfferDataDownloadParams;Landroid/app/Activity;)V

    .line 175
    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerDataController:Lcom/chillingo/liboffers/http/OfferDataController;

    invoke-interface {v2, p0}, Lcom/chillingo/liboffers/http/OfferDataController;->startDownload(Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;)V

    .line 176
    return-void
.end method

.method public downloadFinished(ZLcom/chillingo/liboffers/model/Offer;Z)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p3, "updateCache"    # Z

    .prologue
    .line 312
    invoke-virtual {p2}, Lcom/chillingo/liboffers/model/Offer;->getBitmapData()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 314
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image download finished [URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chillingo/liboffers/model/Offer;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eqz p3, :cond_0

    .line 318
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->cache:Lcom/chillingo/liboffers/http/Cache;

    invoke-virtual {p2}, Lcom/chillingo/liboffers/model/Offer;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chillingo/liboffers/model/Offer;->defaultExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/chillingo/liboffers/http/Cache;->replaceCacheItemForId(Ljava/lang/String;Ljava/io/Serializable;Ljava/util/Date;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;

    invoke-interface {v0, p2}, Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;->OfferDownloaded(Lcom/chillingo/liboffers/model/Offer;)V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;->OfferDataUpdatedWithConfig(Lcom/chillingo/liboffers/model/OfferConfig;)V

    .line 333
    :cond_2
    :goto_0
    return-void

    .line 329
    :cond_3
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to download image [URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chillingo/liboffers/model/Offer;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/model/OfferData;->getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public offerDataDownloadFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 338
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to download offer data [reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][tried "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->retriesTried:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to download offer data [reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][tried "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->retriesTried:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;->OfferDownloadControllerFailed(Ljava/lang/String;)V

    .line 344
    :cond_0
    iget v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->retriesTried:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 346
    iget v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->retriesTried:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->retriesTried:I

    .line 347
    const-string v0, "Offers"

    const-string v1, "Retrying download..."

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->storeType:Lcom/chillingo/liboffers/OfferSession$StoreType;

    invoke-virtual {p0, v0, v1}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->doDownloadOfferData(Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V

    .line 350
    :cond_1
    return-void
.end method

.method public offerDataDownloaded(Lcom/chillingo/liboffers/model/OfferData;Z)V
    .locals 4
    .param p1, "offerData"    # Lcom/chillingo/liboffers/model/OfferData;
    .param p2, "updateCache"    # Z
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 355
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download of offer data succeeded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    .line 360
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/model/OfferData;->getOffers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->stripOfferListForUnsupportedOfferTypes(Ljava/util/List;)V

    .line 362
    if-eqz p2, :cond_0

    .line 364
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->cache:Lcom/chillingo/liboffers/http/Cache;

    const-string v1, "offerdata"

    iget-object v2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    iget-object v3, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/OfferData;->getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/OfferConfig;->defaultExpiryDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/liboffers/http/Cache;->replaceCacheItemForId(Ljava/lang/String;Ljava/io/Serializable;Ljava/util/Date;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/model/OfferData;->getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/liboffers/model/OfferConfig;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->setCountryCodeInPrefs(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->shuffleOfferDataWithListProvider(Lcom/chillingo/liboffers/model/OfferData;)V

    .line 374
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->downloadImageDataForOffersIfNeeded()V

    .line 376
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferData;->getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;->OfferDataUpdatedWithConfig(Lcom/chillingo/liboffers/model/OfferConfig;)V

    .line 378
    :cond_1
    return-void
.end method

.method shuffleOfferDataWithListProvider(Lcom/chillingo/liboffers/model/OfferData;)V
    .locals 3
    .param p1, "offerData"    # Lcom/chillingo/liboffers/model/OfferData;

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No offerData provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferData;->getOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig;->getDecodedRotationAlgorithm()Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/liboffers/session/listprovider/OfferListProviderFactory;->providerForRotationAlgorithm(Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;)Lcom/chillingo/liboffers/session/listprovider/OfferListProvider;

    move-result-object v0

    .line 300
    .local v0, "listProvider":Lcom/chillingo/liboffers/session/listprovider/OfferListProvider;
    if-nez v0, :cond_1

    .line 301
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Didn\'t get a provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_1
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferData;->getOffers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/session/listprovider/OfferListProvider;->initWithOffers(Ljava/util/List;)V

    .line 305
    invoke-interface {v0}, Lcom/chillingo/liboffers/session/listprovider/OfferListProvider;->getOffers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chillingo/liboffers/model/OfferData;->setOffers(Ljava/util/List;)V

    .line 306
    return-void
.end method

.method public startDownload(Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;)V
    .locals 5
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "storeType"    # Lcom/chillingo/liboffers/OfferSession$StoreType;
    .param p3, "listener"    # Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;

    .prologue
    const/4 v4, 0x0

    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad baseUrl"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    if-nez p3, :cond_2

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->listener:Ljava/lang/ref/WeakReference;

    .line 79
    iput v4, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->retriesTried:I

    .line 80
    iput-object p1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->baseUrl:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->storeType:Lcom/chillingo/liboffers/OfferSession$StoreType;

    .line 83
    iget-object v1, p0, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerData:Lcom/chillingo/liboffers/model/OfferData;

    if-nez v1, :cond_4

    .line 86
    invoke-direct {p0}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->getOfferDataFromCache()Lcom/chillingo/liboffers/model/OfferData;

    move-result-object v0

    .line 88
    .local v0, "offerDataFromCache":Lcom/chillingo/liboffers/model/OfferData;
    if-nez v0, :cond_3

    .line 89
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting download of data [baseUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][controller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->doDownloadOfferData(Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V

    .line 104
    .end local v0    # "offerDataFromCache":Lcom/chillingo/liboffers/model/OfferData;
    :goto_0
    return-void

    .line 94
    .restart local v0    # "offerDataFromCache":Lcom/chillingo/liboffers/model/OfferData;
    :cond_3
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found the OfferData in the cache [OfferData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0, v0, v4}, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl;->offerDataDownloaded(Lcom/chillingo/liboffers/model/OfferData;Z)V

    goto :goto_0

    .line 102
    .end local v0    # "offerDataFromCache":Lcom/chillingo/liboffers/model/OfferData;
    :cond_4
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already got data on startDownload() [controller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method stripOfferListForUnsupportedOfferTypes(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/model/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/liboffers/model/Offer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    return-void

    .line 270
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 272
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/chillingo/liboffers/model/Offer;>;"
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/model/Offer;

    .line 275
    .local v1, "offer":Lcom/chillingo/liboffers/model/Offer;
    sget-object v2, Lcom/chillingo/liboffers/http/OfferDownloadControllerImpl$1;->$SwitchMap$com$chillingo$liboffers$model$Offer$OfferType:[I

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/Offer;->getOfferType()Lcom/chillingo/liboffers/model/Offer$OfferType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/Offer$OfferType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
