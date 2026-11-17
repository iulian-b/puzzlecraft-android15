.class public Lcom/fusepowered/nx/monetization/business/DownloadMap;
.super Ljava/lang/Object;
.source "DownloadMap.java"


# instance fields
.field private cacheFile:Lcom/fusepowered/nx/monetization/business/CacheFile;

.field private downloadId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheFile()Lcom/fusepowered/nx/monetization/business/CacheFile;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/DownloadMap;->cacheFile:Lcom/fusepowered/nx/monetization/business/CacheFile;

    return-object v0
.end method

.method public getDownloadId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/fusepowered/nx/monetization/business/DownloadMap;->downloadId:I

    return v0
.end method

.method public setCacheFile(Lcom/fusepowered/nx/monetization/business/CacheFile;)V
    .locals 0
    .param p1, "cacheFile"    # Lcom/fusepowered/nx/monetization/business/CacheFile;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/DownloadMap;->cacheFile:Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 27
    return-void
.end method

.method public setDownloadId(I)V
    .locals 0
    .param p1, "downloadId"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/fusepowered/nx/monetization/business/DownloadMap;->downloadId:I

    .line 19
    return-void
.end method
