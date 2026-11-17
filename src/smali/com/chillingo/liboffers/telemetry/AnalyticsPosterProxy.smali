.class public Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;
.super Ljava/lang/Object;
.source "AnalyticsPosterProxy.java"

# interfaces
.implements Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
.implements Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field pendingSessionStartEvent:Z

.field posterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->pendingSessionStartEvent:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public flushEvents()V
    .locals 3

    .prologue
    .line 278
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 284
    :cond_0
    return-void

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 282
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->flushEvents()V

    goto :goto_0
.end method

.method public isActivatedByOfferConfig(Lcom/chillingo/liboffers/model/OfferConfig;)Z
    .locals 2
    .param p1, "offerConfig"    # Lcom/chillingo/liboffers/model/OfferConfig;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be asking the controller, this is for the concrete implementations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logActivateEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 82
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logActivateEventForOffer [idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 88
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1, p2}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logActivateEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    goto :goto_0
.end method

.method public logAdvertisingIdAvailabilityEvent()V
    .locals 4

    .prologue
    .line 316
    const-string v2, "Offers"

    const-string v3, "PostController - logAdvertisingIdAvailabilityEvent"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 324
    :cond_0
    return-void

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 322
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logAdvertisingIdAvailabilityEvent()V

    goto :goto_0
.end method

.method public logAppstoreOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 94
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logAppstoreOpenEventForOffer [idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 102
    :cond_0
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 100
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1, p2}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logAppstoreOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    goto :goto_0
.end method

.method public logCloseEventForGUI()V
    .locals 4

    .prologue
    .line 166
    const-string v2, "Offers"

    const-string v3, "PostController - logCloseEventForGUI"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 174
    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 172
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logCloseEventForGUI()V

    goto :goto_0
.end method

.method public logCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 70
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logCloseEventForOffer [idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 78
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 76
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1, p2}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    goto :goto_0
.end method

.method public logDiplayEventForGUI()V
    .locals 4

    .prologue
    .line 154
    const-string v2, "Offers"

    const-string v3, "PostController - logDiplayEventForGUI"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 162
    :cond_0
    return-void

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 160
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logDiplayEventForGUI()V

    goto :goto_0
.end method

.method public logDisplayEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 46
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logDisplayEventForOffer [idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 54
    :cond_0
    return-void

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 52
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1, p2}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logDisplayEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    goto :goto_0
.end method

.method public logEmbedActivateForFacebook()V
    .locals 4

    .prologue
    .line 226
    const-string v2, "Offers"

    const-string v3, "PostController - logEmbedActivateForFacebook"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 234
    :cond_0
    return-void

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 232
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logEmbedActivateForFacebook()V

    goto :goto_0
.end method

.method public logEmbedActivateForGameId(Ljava/lang/String;)V
    .locals 5
    .param p1, "gameId"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logEmbedActivateForGameId [gameId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 210
    :cond_0
    return-void

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 208
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logEmbedActivateForGameId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logEmbedActivateForTwitter()V
    .locals 4

    .prologue
    .line 238
    const-string v2, "Offers"

    const-string v3, "PostController - logEmbedActivateForTwitter"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 246
    :cond_0
    return-void

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 244
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logEmbedActivateForTwitter()V

    goto :goto_0
.end method

.method public logEmbedActivateForUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logEmbedActivateForUrl [url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 222
    :cond_0
    return-void

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 220
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logEmbedActivateForUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logEmbedCloseForUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logEmbedCloseForUrl [url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 198
    :cond_0
    return-void

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 196
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logEmbedCloseForUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logEmbedOpenForUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logEmbedOpenForUrl [url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 186
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 184
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logEmbedOpenForUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logInterstitialClickThruEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 142
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logInterstitialClickThruEventForOffer [offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 150
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 148
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logInterstitialClickThruEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V

    goto :goto_0
.end method

.method public logInterstitialCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 130
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logInterstitialCloseEventForOffer [offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 138
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 136
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logInterstitialCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V

    goto :goto_0
.end method

.method public logInterstitialOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 118
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logInterstitialOpenEventForOffer [offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 126
    :cond_0
    return-void

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 124
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logInterstitialOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V

    goto :goto_0
.end method

.method public logPurchaseConversionEventWithSourceId(Ljava/lang/String;)V
    .locals 5
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logPurchaseConversionEventWithSourceId [src "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 273
    :cond_0
    return-void

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 271
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logPurchaseConversionEventWithSourceId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logReleaseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 58
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logReleaseEventForOffer [idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 66
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 64
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1, p2}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logReleaseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    goto :goto_0
.end method

.method public logSessionStartEventWithData(Ljava/util/HashMap;)V
    .locals 4
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
    .line 250
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Offers"

    const-string v3, "PostController - logSessionStartEvent"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 254
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->pendingSessionStartEvent:Z

    .line 261
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 259
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logSessionStartEventWithData(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public logWebpageOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 106
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostController - logWebpageOpenEventForOffer [idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 114
    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 112
    .local v1, "poster":Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;
    invoke-interface {v1, p1, p2}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logWebpageOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    goto :goto_0
.end method

.method public offerWasActivatedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 305
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->logActivateEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    .line 306
    return-void
.end method

.method public offerWasClosedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 311
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->logCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    .line 312
    return-void
.end method

.method public offerWasDisplayedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 293
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->logDisplayEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    .line 294
    return-void
.end method

.method public offerWasReleasedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 299
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->logReleaseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    .line 300
    return-void
.end method

.method public setPosterImpls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "implList":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;>;"
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/AnalyticsPosterProxy;->posterList:Ljava/util/List;

    .line 33
    return-void
.end method
