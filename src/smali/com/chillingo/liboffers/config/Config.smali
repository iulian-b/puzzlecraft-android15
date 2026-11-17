.class public Lcom/chillingo/liboffers/config/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final CONVERSION_SERVER:Ljava/lang/String; = "http://redis.chillingo.com:8080/ConversionTracker/"

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final OFFERS_API_NAME:Ljava/lang/String; = "offersapi"

.field public static final OFFERS_API_VERSION:Ljava/lang/String; = "1.5"

.field public static final OFFERS_SERVER:Ljava/lang/String; = "http%3A%2F%2Fchillingo-offers.appspot.com"

.field public static final OFFERS_SERVER_FALLBACK:Ljava/lang/String; = "http://chillingo-offers.appspot.com"

.field public static final SDK_BUILD_NUMBER:Ljava/lang/String; = "470"

.field public static final SDK_VERSION:Ljava/lang/String; = "2.8"

.field public static final TARGET_NAME:Ljava/lang/String; = "offers"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCombinedSDKAndAPIString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/chillingo/liboffers/config/Config;->getSDKString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "sdkString":Ljava/lang/String;
    invoke-static {}, Lcom/chillingo/liboffers/config/Config;->getOffersAPIString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "apiString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getOffersAPIString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "offersapi-1.5"

    return-object v0
.end method

.method public static getSDKString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "offers-2.8-470"

    return-object v0
.end method
