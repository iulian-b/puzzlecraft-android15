.class public abstract Lcom/fusepowered/ads/adapters/AdAdapter;
.super Ljava/lang/Object;
.source "AdAdapter.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public backgroundColor:I

.field public closeButtonDelay:J

.field private final context:Landroid/content/Context;

.field public error:Lcom/fusepowered/util/FuseProviderError;

.field public expiresAfterSeconds:J

.field public expiresAt:Ljava/util/Date;

.field private fuseAdId:I

.field public final id:I

.field public isFuseAd:Z

.field public isMraid:Z

.field public isRTN:Z

.field public isRewarded:Z

.field public isVast:Z

.field public isVideo:Z

.field protected listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

.field public maxVastFileSize:Ljava/lang/String;

.field public returnToInterstitial:Z

.field public rewardTimer:I

.field public rotateMode:I

.field public shouldPreload:Z

.field public shouldValidateSchema:Z

.field public timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "AdAdapter"

    sput-object v0, Lcom/fusepowered/ads/adapters/AdAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->isFuseAd:Z

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->expiresAfterSeconds:J

    .line 33
    iput v2, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->timeout:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 50
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->context:Landroid/content/Context;

    .line 51
    iput p2, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->id:I

    .line 52
    return-void
.end method

.method private startExpiryTimer()V
    .locals 8

    .prologue
    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->expiresAt:Ljava/util/Date;

    .line 150
    iget-wide v2, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->expiresAfterSeconds:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 151
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 152
    .local v0, "expiresAt":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->expiresAfterSeconds:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 153
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->expiresAt:Ljava/util/Date;

    .line 155
    .end local v0    # "expiresAt":Ljava/util/Date;
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract adapterVersion()Lcom/fusepowered/ads/APIVersion;
.end method

.method public didLoadAd()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/AdAdapter;->startExpiryTimer()V

    .line 146
    return-void
.end method

.method public abstract displayAd()Z
.end method

.method public doesAdLoadedActuallyMeanSomething()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public getFuseAdId()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, -0x1

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->id:I

    return v0
.end method

.method public getListener()Lcom/fusepowered/ads/adapters/AdAdapterListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public isAdAvailable()Z
    .locals 8

    .prologue
    .line 116
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->expiresAt:Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 117
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 118
    .local v0, "currentTime":Ljava/util/Date;
    iget-object v3, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->expiresAt:Ljava/util/Date;

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    .line 119
    .local v2, "isExpired":Z
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->expiresAt:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 121
    .local v1, "difference":Ljava/lang/Long;
    sget-object v3, Lcom/fusepowered/ads/adapters/AdAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not available due to expiry: by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v3, 0x0

    .line 125
    .end local v0    # "currentTime":Ljava/util/Date;
    .end local v1    # "difference":Ljava/lang/Long;
    .end local v2    # "isExpired":Z
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public abstract isCapableOfLoading()Z
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->isTabletUI()Z

    move-result v0

    return v0
.end method

.method public abstract loadAd()Z
.end method

.method public abstract minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "expires"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->expiresAfterSeconds:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->expiresAfterSeconds:J

    goto :goto_0
.end method

.method public abstract providerVersion()Lcom/fusepowered/ads/APIVersion;
.end method

.method protected sendRequestForBacon()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "BACON"

    const-string v1, "     __      _.._\n"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "BACON"

    const-string v1, "  .-\'__`-._.\'.--.\'.__.,\n"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "BACON"

    const-string v1, " /--\'  \'-._.\'    \'-._./\n"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "BACON"

    const-string v1, "/__.--._.--._.\'``-.__/\n"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "BACON"

    const-string v1, "\'._.-\'-._.-._.-\'\'-..\' \n"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method protected sendRequestToBeacon(Ljava/lang/String;)V
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Lcom/fusepowered/ads/adapters/AdAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/ads/adapters/AdAdapter$1;-><init>(Lcom/fusepowered/ads/adapters/AdAdapter;Ljava/lang/String;)V

    .line 206
    .local v0, "task":Landroid/os/AsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    return-void
.end method

.method public setListener(Lcom/fusepowered/ads/adapters/AdAdapterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/ads/adapters/AdAdapterListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
