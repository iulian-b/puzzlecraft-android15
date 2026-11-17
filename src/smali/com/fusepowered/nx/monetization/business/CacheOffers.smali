.class public Lcom/fusepowered/nx/monetization/business/CacheOffers;
.super Ljava/lang/Object;
.source "CacheOffers.java"


# instance fields
.field private files:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Files"
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

.field private offerId:J
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "OfferId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CacheOffers;->files:Ljava/util/List;

    return-object v0
.end method

.method public getOfferId()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/fusepowered/nx/monetization/business/CacheOffers;->offerId:J

    return-wide v0
.end method

.method public setFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/CacheFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CacheOffers;->files:Ljava/util/List;

    .line 22
    return-void
.end method
