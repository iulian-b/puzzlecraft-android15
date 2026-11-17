.class public Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;
.super Ljava/lang/Object;
.source "ConversionAnalyticsPoster.java"

# interfaces
.implements Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
    scope = .enum Lcom/googlecode/androidannotations/api/Scope;->Singleton:Lcom/googlecode/androidannotations/api/Scope;
.end annotation


# static fields
.field private static final PREFS_KEY_START:Ljava/lang/String; = "start"

.field private static final PREFS_NAME:Ljava/lang/String; = "ConversionAnalyticsPoster"


# instance fields
.field analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

.field appName:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field context:Landroid/content/Context;
    .annotation build Lcom/googlecode/androidannotations/annotations/RootContext;
    .end annotation
.end field

.field conversionController:Lcom/chillingo/liboffers/http/ConversionController;

.field uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flushEvents()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public init(Lcom/chillingo/liboffers/http/ConversionController;Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;)V
    .locals 2
    .param p1, "conversionController"    # Lcom/chillingo/liboffers/http/ConversionController;
    .param p2, "analyticsPoster"    # Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Conversion controller not supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    if-nez p2, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No analytics poster supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/utils/DeviceUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->appName:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->appName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 58
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->appName:Ljava/lang/String;

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/utils/DeviceUtils;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->appVersion:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->appVersion:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 62
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->appVersion:Ljava/lang/String;

    .line 64
    :cond_3
    iput-object p2, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 65
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->conversionController:Lcom/chillingo/liboffers/http/ConversionController;

    .line 66
    return-void
.end method

.method public isActivatedByOfferConfig(Lcom/chillingo/liboffers/model/OfferConfig;)Z
    .locals 1
    .param p1, "offerConfig"    # Lcom/chillingo/liboffers/model/OfferConfig;

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryStreamsConversionEnabled()Z

    move-result v0

    return v0
.end method

.method public logActivateEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 0
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 192
    return-void
.end method

.method public logAdvertisingIdAvailabilityEvent()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public logAppstoreOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 152
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    invoke-virtual {v2}, Lcom/chillingo/liboffers/utils/UuidUtils;->advertisingIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "advertisingId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 154
    const-string v2, "Offers"

    const-string v3, "Advertising id unavailable for appstore open event"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conversion - posting appstore open event [offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getTargetBundleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][appName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getTargetBundleId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getTargetBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    :cond_1
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conversion - unable to get target bundle info from offer, dropping out [offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    new-instance v1, Lcom/chillingo/liboffers/model/CallbackContainer;

    invoke-direct {v1}, Lcom/chillingo/liboffers/model/CallbackContainer;-><init>()V

    .line 166
    .local v1, "callbackContainer":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->conversionController:Lcom/chillingo/liboffers/http/ConversionController;

    iget-object v3, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getTargetBundleId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/chillingo/liboffers/http/ConversionController;->postStoreEvent(Lcom/chillingo/liboffers/model/CallbackContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/CallbackContainer;->getSuccess()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    const-string v2, "Offers"

    const-string v3, "Conversion - successfully posted the appstore event"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    :cond_3
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conversion - failed to post appstore event [err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/CallbackContainer;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public logCloseEventForGUI()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public logCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 0
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 189
    return-void
.end method

.method public logDiplayEventForGUI()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public logDisplayEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 0
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 183
    return-void
.end method

.method public logEmbedActivateForFacebook()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public logEmbedActivateForGameId(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameId"    # Ljava/lang/String;

    .prologue
    .line 219
    return-void
.end method

.method public logEmbedActivateForTwitter()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public logEmbedActivateForUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 222
    return-void
.end method

.method public logEmbedCloseForUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 216
    return-void
.end method

.method public logEmbedOpenForUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 213
    return-void
.end method

.method public logInterstitialClickThruEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 0
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 204
    return-void
.end method

.method public logInterstitialCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 0
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 201
    return-void
.end method

.method public logInterstitialOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 0
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 198
    return-void
.end method

.method public logPurchaseConversionEventWithSourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 180
    return-void
.end method

.method public logReleaseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 0
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 186
    return-void
.end method

.method public logSessionStartEventWithData(Ljava/util/HashMap;)V
    .locals 10
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string v7, "conversionServerUrl"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "conversionServerUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 105
    iget-object v7, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->conversionController:Lcom/chillingo/liboffers/http/ConversionController;

    invoke-interface {v7, v1}, Lcom/chillingo/liboffers/http/ConversionController;->updateConversionServerUrl(Ljava/lang/String;)V

    .line 110
    .end local v1    # "conversionServerUrl":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    invoke-virtual {v7}, Lcom/chillingo/liboffers/utils/UuidUtils;->advertisingIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "advertisingId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 112
    const-string v5, "Offers"

    const-string v6, "Advertising id unavailable for session start event"

    invoke-static {v5, v6}, Lcom/chillingo/liboffers/utils/OffersLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    iget-object v7, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->context:Landroid/content/Context;

    const-string v8, "ConversionAnalyticsPoster"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 118
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "start"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 120
    .local v2, "hasPostedSessionStart":Z
    if-nez v2, :cond_1

    .line 124
    const-string v7, "Offers"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conversion - posting session start event [app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->appName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v3, Lcom/chillingo/liboffers/model/CallbackContainer;

    invoke-direct {v3}, Lcom/chillingo/liboffers/model/CallbackContainer;-><init>()V

    .line 127
    .local v3, "responseCallbackContainer":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<Lcom/chillingo/liboffers/model/ConversionResponse;>;"
    iget-object v7, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->conversionController:Lcom/chillingo/liboffers/http/ConversionController;

    iget-object v8, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->appName:Ljava/lang/String;

    invoke-interface {v7, v3, v0, v8}, Lcom/chillingo/liboffers/http/ConversionController;->postStartEvent(Lcom/chillingo/liboffers/model/CallbackContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->getSuccess()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 131
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conversion - failed to post session start [err "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_3
    const-string v7, "Offers"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conversion - successfully sent the session start event [isConv "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->getResult()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v5, "start"

    invoke-virtual {p0, v5, v6}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->setPrefsOnUiThread(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->getResult()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 142
    iget-object v6, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/CallbackContainer;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chillingo/liboffers/model/ConversionResponse;

    invoke-virtual {v5}, Lcom/chillingo/liboffers/model/ConversionResponse;->getSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logPurchaseConversionEventWithSourceId(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public logWebpageOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 0
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 195
    return-void
.end method

.method public setPrefsOnUiThread(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 85
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster;->context:Landroid/content/Context;

    const-string v3, "ConversionAnalyticsPoster"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conversion - Saved prefs ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method
