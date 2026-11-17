.class public Lcom/fusepowered/ads/DisplayRequest;
.super Ljava/lang/Object;
.source "DisplayRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayRequest"


# instance fields
.field private adAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public adZoneName:Ljava/lang/String;

.field private displayedAd:Lcom/fusepowered/ads/adapters/AdAdapter;

.field private failedAdAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public hasFiredAdClosed:Z

.field public hasGivenReward:Z

.field public hasShownPreroll:Z

.field public isShowingRewardPostRollMessage:Z

.field private isWaitingToDisplayAd:Z

.field public manuallyHandleAdUrls:Z

.field public postrollContinueButtonText:Ljava/lang/String;

.field public prerollNoButtonText:Ljava/lang/String;

.field public prerollYesButtonText:Ljava/lang/String;

.field public final providerTimeout:J

.field public shouldShowPostroll:Z

.field public shouldShowPreroll:Z

.field private final startTime:Ljava/util/Date;

.field private timeIntervalUntilTimeout:J

.field public final timeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;JJ)V
    .locals 3
    .param p1, "adZoneName"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "providerTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .local p2, "zoneProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/fusepowered/ads/DisplayRequest;->isWaitingToDisplayAd:Z

    .line 29
    iput-boolean v1, p0, Lcom/fusepowered/ads/DisplayRequest;->isShowingRewardPostRollMessage:Z

    .line 32
    iput-boolean v1, p0, Lcom/fusepowered/ads/DisplayRequest;->hasGivenReward:Z

    .line 36
    iput-object p1, p0, Lcom/fusepowered/ads/DisplayRequest;->adZoneName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/fusepowered/ads/DisplayRequest;->adAdapters:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/DisplayRequest;->failedAdAdapters:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/DisplayRequest;->startTime:Ljava/util/Date;

    .line 40
    iput-wide p3, p0, Lcom/fusepowered/ads/DisplayRequest;->timeout:J

    .line 41
    iput-wide p5, p0, Lcom/fusepowered/ads/DisplayRequest;->providerTimeout:J

    .line 42
    iput-boolean v1, p0, Lcom/fusepowered/ads/DisplayRequest;->hasFiredAdClosed:Z

    .line 43
    iput-boolean v1, p0, Lcom/fusepowered/ads/DisplayRequest;->hasShownPreroll:Z

    .line 44
    return-void
.end method


# virtual methods
.method public getAdAdapters()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/ads/DisplayRequest;->adAdapters:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    iget-object v2, p0, Lcom/fusepowered/ads/DisplayRequest;->failedAdAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 50
    .local v0, "didFilter":Z
    if-eqz v0, :cond_0

    .line 51
    const-string v2, "DisplayRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filtered adapters from displayAd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/ads/DisplayRequest;->failedAdAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-object v1
.end method

.method public getDisplayedAd()Lcom/fusepowered/ads/adapters/AdAdapter;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fusepowered/ads/DisplayRequest;->displayedAd:Lcom/fusepowered/ads/adapters/AdAdapter;

    return-object v0
.end method

.method public getDurationInSeconds()F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 87
    .local v0, "currentTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/fusepowered/ads/DisplayRequest;->startTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 88
    .local v2, "differenceInMilliseconds":J
    long-to-float v4, v2

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v1, v4, v5

    .line 89
    .local v1, "differenceInSeconds":F
    return v1
.end method

.method public getTimeIntervalUntilTimeout()J
    .locals 6

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/fusepowered/ads/DisplayRequest;->timeout:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/fusepowered/ads/DisplayRequest;->startTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isWaitingToDisplayAd()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/fusepowered/ads/DisplayRequest;->isWaitingToDisplayAd:Z

    return v0
.end method

.method public onAdDisplayTimedOut()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/DisplayRequest;->isWaitingToDisplayAd:Z

    .line 71
    return-void
.end method

.method public onAdProviderFailedToDisplay(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 1
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/ads/DisplayRequest;->failedAdAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public onAttemptToDisplayProvider(Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 0
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fusepowered/ads/DisplayRequest;->displayedAd:Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 59
    return-void
.end method

.method public setIsWaitingToDisplayAd(Z)V
    .locals 0
    .param p1, "isWaitingToDisplayAd"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/fusepowered/ads/DisplayRequest;->isWaitingToDisplayAd:Z

    .line 63
    return-void
.end method

.method public shouldStopLoadingWithProvider(Lcom/fusepowered/ads/adapters/AdAdapter;)Z
    .locals 1
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/ads/DisplayRequest;->failedAdAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
