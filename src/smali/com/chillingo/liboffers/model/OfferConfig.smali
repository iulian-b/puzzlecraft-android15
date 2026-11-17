.class public Lcom/chillingo/liboffers/model/OfferConfig;
.super Ljava/lang/Object;
.source "OfferConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static DEFAULT_OFFERS_CONFIG_CACHE_EXPIRATION_TIME_MILLIS:Ljava/lang/Long; = null

.field private static final serialVersionUID:J = -0x40a9b998bbea8749L


# instance fields
.field private bubbleSizeAdjust:Ljava/lang/Double;

.field private conversionServerUrl:Ljava/lang/String;

.field private cornerPositionAdjust:Ljava/lang/Double;

.field private countryCode:Ljava/lang/String;

.field private disableEmbeddedAppStore:Ljava/lang/Boolean;

.field private enableGreyBackgroundAfterAutoRelease:Ljava/lang/Boolean;

.field private enforceOrder:Ljava/lang/Boolean;

.field private firstOfferWait:Ljava/lang/Integer;

.field private gameName:Ljava/lang/String;

.field private googleAccount:Ljava/lang/String;

.field private greyBackground:Ljava/lang/Boolean;

.field private latestVersion:Ljava/lang/String;

.field private numberOfOffers:Ljava/lang/Integer;

.field private numberOfOffersAutoReleased:Ljava/lang/Integer;

.field private numberOfOffersCornerTap:Ljava/lang/Integer;

.field private rotationAlgorithm:Ljava/lang/String;

.field private telemetryStreams:Ljava/lang/String;

.field private telemetryThrottle:Ljava/lang/Integer;

.field private webAppVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/chillingo/liboffers/model/OfferConfig;->DEFAULT_OFFERS_CONFIG_CACHE_EXPIRATION_TIME_MILLIS:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private trueIfContains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryStreams:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryStreams:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public defaultExpiryDate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 77
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 78
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v1, Lcom/chillingo/liboffers/model/OfferConfig;->DEFAULT_OFFERS_CONFIG_CACHE_EXPIRATION_TIME_MILLIS:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 79
    return-object v0
.end method

.method public getBubbleSizeAdjust()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->bubbleSizeAdjust:Ljava/lang/Double;

    return-object v0
.end method

.method public getConversionServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->conversionServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerPositionAdjust()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->cornerPositionAdjust:Ljava/lang/Double;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodedRotationAlgorithm()Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->rotationAlgorithm:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->rotationAlgorithm:Ljava/lang/String;

    const-string v1, "ORDERED_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ORDERED_LIST:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    .line 261
    :goto_0
    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->rotationAlgorithm:Ljava/lang/String;

    const-string v1, "ROUND_ROBIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    sget-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->ROUND_ROBIN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->rotationAlgorithm:Ljava/lang/String;

    const-string v1, "COMPLETELY_RANDOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    sget-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->COMPLETELY_RANDOM:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->rotationAlgorithm:Ljava/lang/String;

    const-string v1, "WEIGHTED_RANDOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    sget-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->WEIGHTED_RANDOM:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    goto :goto_0

    .line 259
    :cond_3
    sget-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->UNKNOWN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    goto :goto_0

    .line 261
    :cond_4
    sget-object v0, Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;->UNKNOWN:Lcom/chillingo/liboffers/model/OfferConfig$RotationAlgorithm;

    goto :goto_0
.end method

.method public getDisableEmbeddedAppStore()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->disableEmbeddedAppStore:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnableGreyBackgroundAfterAutoRelease()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->enableGreyBackgroundAfterAutoRelease:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnforceOrder()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->enforceOrder:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFirstOfferWait()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->firstOfferWait:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->googleAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getGreyBackground()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->greyBackground:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLatestVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->latestVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfOffers()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->numberOfOffers:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumberOfOffersAutoReleased()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->numberOfOffersAutoReleased:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumberOfOffersCornerTap()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->numberOfOffersCornerTap:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRotationAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->rotationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getTelemetryStreams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryStreams:Ljava/lang/String;

    return-object v0
.end method

.method public getTelemetryThrottle()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryThrottle:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWebAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/chillingo/liboffers/model/OfferConfig;->webAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setBubbleSizeAdjust(Ljava/lang/Double;)V
    .locals 0
    .param p1, "bubbleSizeAdjust"    # Ljava/lang/Double;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->bubbleSizeAdjust:Ljava/lang/Double;

    .line 229
    return-void
.end method

.method public setConversionServerUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->conversionServerUrl:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setCornerPositionAdjust(Ljava/lang/Double;)V
    .locals 0
    .param p1, "cornerPositionAdjust"    # Ljava/lang/Double;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->cornerPositionAdjust:Ljava/lang/Double;

    .line 237
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->countryCode:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setDisableEmbeddedAppStore(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "disableEmbeddedAppStore"    # Ljava/lang/Boolean;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->disableEmbeddedAppStore:Ljava/lang/Boolean;

    .line 221
    return-void
.end method

.method public setEnableGreyBackgroundAfterAutoRelease(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enableGreyBackgroundAfterAutoRelease"    # Ljava/lang/Boolean;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->enableGreyBackgroundAfterAutoRelease:Ljava/lang/Boolean;

    .line 187
    return-void
.end method

.method public setEnforceOrder(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enforceOrder"    # Ljava/lang/Boolean;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->enforceOrder:Ljava/lang/Boolean;

    .line 123
    return-void
.end method

.method public setFirstOfferWait(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "firstOfferWait"    # Ljava/lang/Integer;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->firstOfferWait:Ljava/lang/Integer;

    .line 205
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameName"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->gameName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setGoogleAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "googleAccount"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->googleAccount:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setGreyBackground(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "greyBackground"    # Ljava/lang/Boolean;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->greyBackground:Ljava/lang/Boolean;

    .line 179
    return-void
.end method

.method public setLatestVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "latestVersion"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->latestVersion:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setNumberOfOffers(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "numberOfOffers"    # Ljava/lang/Integer;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->numberOfOffers:Ljava/lang/Integer;

    .line 147
    return-void
.end method

.method public setNumberOfOffersAutoReleased(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "numberOfOffersAutoReleased"    # Ljava/lang/Integer;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->numberOfOffersAutoReleased:Ljava/lang/Integer;

    .line 131
    return-void
.end method

.method public setNumberOfOffersCornerTap(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "numberOfOffersCornerTap"    # Ljava/lang/Integer;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->numberOfOffersCornerTap:Ljava/lang/Integer;

    .line 139
    return-void
.end method

.method public setRotationAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "rotationAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->rotationAlgorithm:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setTelemetryStreams(Ljava/lang/String;)V
    .locals 0
    .param p1, "telemetryStreams"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryStreams:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setTelemetryThrottle(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "telemetryThrottle"    # Ljava/lang/Integer;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryThrottle:Ljava/lang/Integer;

    .line 171
    return-void
.end method

.method public setWebAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "webAppVersion"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/chillingo/liboffers/model/OfferConfig;->webAppVersion:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public telemetryStreamsConversionEnabled()Z
    .locals 1

    .prologue
    .line 102
    const-string v0, "o"

    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/model/OfferConfig;->trueIfContains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public telemetryStreamsGoogleEventsEnabled()Z
    .locals 1

    .prologue
    .line 94
    const-string v0, "e"

    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/model/OfferConfig;->trueIfContains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public telemetryStreamsGooglePageViewsEnabled()Z
    .locals 1

    .prologue
    .line 98
    const-string v0, "v"

    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/model/OfferConfig;->trueIfContains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfferConfig{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "gameName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->gameName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ", enforceOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->enforceOrder:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", numberOfOffersAutoReleased="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->numberOfOffersAutoReleased:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", numberOfOffersCornerTap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->numberOfOffersCornerTap:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", numberOfOffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->numberOfOffers:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", countryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", telemetryStreams=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryStreams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", greyBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->greyBackground:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", enableGreyBackgroundAfterAutoRelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->enableGreyBackgroundAfterAutoRelease:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", latestVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->latestVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", firstOfferWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->firstOfferWait:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", googleAccount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->googleAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", disableEmbeddedAppStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->disableEmbeddedAppStore:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", bubbleSizeAdjust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->bubbleSizeAdjust:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", cornerPositionAdjust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->cornerPositionAdjust:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", rotationAlgorithm=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->rotationAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", conversionServerUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->conversionServerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", webAppVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/OfferConfig;->webAppVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
