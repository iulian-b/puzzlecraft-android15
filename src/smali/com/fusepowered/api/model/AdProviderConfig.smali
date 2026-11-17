.class public Lcom/fusepowered/api/model/AdProviderConfig;
.super Ljava/lang/Object;
.source "AdProviderConfig.java"


# instance fields
.field public backgroundColor:I

.field public blacklistedAdapterVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/APIVersion;",
            ">;"
        }
    .end annotation
.end field

.field public blacklistedProviderVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/APIVersion;",
            ">;"
        }
    .end annotation
.end field

.field public className:Ljava/lang/String;

.field public closeButtonDelay:J

.field public id:I

.field public isEnabled:Z

.field public isFuseAd:Z

.field public isLoggingEnabled:Z

.field public isMRaid:Z

.field public isRTN:Z

.field public isRewarded:Z

.field public isServerToServer:Z

.field public isVast:Z

.field public isVideo:Z

.field public maxVastFileSize:Ljava/lang/String;

.field public maximumAdapterVersion:Lcom/fusepowered/ads/APIVersion;

.field public minimumAdapterVersion:Lcom/fusepowered/ads/APIVersion;

.field public providerIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public returnToInterstitial:Z

.field public rewardTimer:I

.field public rotateMode:I

.field public shouldPreload:Z

.field public shouldValidateSchema:Z

.field public timeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/fusepowered/api/model/AdProviderConfig;->id:I

    .line 44
    iput-object p2, p0, Lcom/fusepowered/api/model/AdProviderConfig;->className:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/api/model/AdProviderConfig;->isEnabled:Z

    .line 46
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "isRewarded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/api/model/AdProviderConfig;->isRewarded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", isVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/api/model/AdProviderConfig;->isVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", rewardTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/api/model/AdProviderConfig;->rewardTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
