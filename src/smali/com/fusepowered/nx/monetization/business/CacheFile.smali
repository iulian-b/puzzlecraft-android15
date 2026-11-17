.class public Lcom/fusepowered/nx/monetization/business/CacheFile;
.super Ljava/lang/Object;
.source "CacheFile.java"


# instance fields
.field private CDN:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "CDN"
    .end annotation
.end field

.field private EXT:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Ext"
    .end annotation
.end field

.field private MD5:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "MD5"
    .end annotation
.end field

.field private expirationDate:J
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ExpirationDateUTC"
    .end annotation
.end field

.field private fileSize:J
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "FileSize"
    .end annotation
.end field

.field private fileStatus:Lcom/fusepowered/nx/monetization/enums/FileStatus;

.field private offerId:J

.field private relativeUrl:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "RelativeUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 122
    instance-of v0, p1, Lcom/fusepowered/nx/monetization/business/CacheFile;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 127
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 124
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-ne p1, p0, :cond_1

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiryTime()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->expirationDate:J

    return-wide v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->EXT:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->MD5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->EXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->fileSize:J

    return-wide v0
.end method

.method public getFileStatus()Lcom/fusepowered/nx/monetization/enums/FileStatus;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->fileStatus:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    return-object v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->MD5:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferId()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->offerId:J

    return-wide v0
.end method

.method public getRelativeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->relativeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 133
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->offerId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->MD5:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->fileStatus:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->relativeUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCDN(Ljava/lang/String;)V
    .locals 2
    .param p1, "cdn"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    .line 78
    :cond_0
    return-void
.end method

.method public setExpiryTime(J)V
    .locals 1
    .param p1, "expiryTime"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->expirationDate:J

    .line 102
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->EXT:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->fileSize:J

    .line 110
    return-void
.end method

.method public setFileStatus(Lcom/fusepowered/nx/monetization/enums/FileStatus;)V
    .locals 0
    .param p1, "downloadStatus"    # Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->fileStatus:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 65
    return-void
.end method

.method public setMD5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->MD5:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setOfferId(J)V
    .locals 1
    .param p1, "offerId"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->offerId:J

    .line 49
    return-void
.end method

.method public setRelativeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CacheFile;->relativeUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v0}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    .line 138
    .local v0, "gson":Lcom/fusepowered/nx/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
