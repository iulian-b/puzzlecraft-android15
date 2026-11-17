.class public Lcom/chillingo/liboffers/utils/UuidUtils;
.super Ljava/lang/Object;
.source "UuidUtils.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
    scope = .enum Lcom/googlecode/androidannotations/api/Scope;->Singleton:Lcom/googlecode/androidannotations/api/Scope;
.end annotation


# static fields
.field public static DEFAULT_UUID_CACHE_EXPIRATION_TIME_MILLIS:Ljava/lang/Long; = null

.field public static final LOG_TAG:Ljava/lang/String; = "Offers"


# instance fields
.field context:Landroid/content/Context;
    .annotation build Lcom/googlecode/androidannotations/annotations/RootContext;
    .end annotation
.end field

.field idfa:Ljava/lang/String;

.field uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide v0, 0xe7be2c000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/chillingo/liboffers/utils/UuidUtils;->DEFAULT_UUID_CACHE_EXPIRATION_TIME_MILLIS:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public advertisingIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/chillingo/liboffers/utils/UuidUtils;->cacheAdvertisingIdentifier()V

    .line 51
    iget-object v0, p0, Lcom/chillingo/liboffers/utils/UuidUtils;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method public cacheAdvertisingIdentifier()V
    .locals 5

    .prologue
    .line 62
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/chillingo/liboffers/utils/UuidUtils;->idfa:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    iget-object v2, p0, Lcom/chillingo/liboffers/utils/UuidUtils;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chillingo/liboffers/utils/UuidUtils;->idfa:Ljava/lang/String;

    .line 77
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Advertising id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/chillingo/liboffers/utils/UuidUtils;->idfa:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    :goto_1
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 71
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain advertiser id from Google Play Services: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string v2, "Offers"

    const-string v3, "Advertising id disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public defaultUUIDExpiryDate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 43
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v1, Lcom/chillingo/liboffers/utils/UuidUtils;->DEFAULT_UUID_CACHE_EXPIRATION_TIME_MILLIS:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 44
    return-object v0
.end method

.method public generateUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/chillingo/liboffers/utils/UuidUtils;->uuid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/utils/UuidUtils;->uuid:Ljava/lang/String;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/utils/UuidUtils;->uuid:Ljava/lang/String;

    return-object v0
.end method
