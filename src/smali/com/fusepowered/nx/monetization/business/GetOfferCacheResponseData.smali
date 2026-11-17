.class public Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;
.super Ljava/lang/Object;
.source "GetOfferCacheResponseData.java"


# instance fields
.field private cacheSizeMax:I
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "CacheSizeMax"
    .end annotation
.end field

.field private freeSpaceMinMegabytes:Ljava/lang/Integer;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "FreeSpaceMin"
    .end annotation
.end field

.field private globalFiles:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "GlobalFiles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation
.end field

.field private offers:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Offers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheOffers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->offers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCacheSizeMax()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->cacheSizeMax:I

    return v0
.end method

.method public getFreeSpaceMinMegabytes()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->freeSpaceMinMegabytes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheOffers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;->offers:Ljava/util/List;

    return-object v0
.end method
