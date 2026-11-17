.class final Lcom/fusepowered/fuseapi/FuseAPI$3;
.super Ljava/lang/Object;
.source "FuseAPI.java"

# interfaces
.implements Lcom/fusepowered/ads/AdManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI;->startAdManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adCouldNotBeDisplayedWithinTimeout(JLjava/lang/String;)V
    .locals 2
    .param p1, "timeWaitedMillis"    # J
    .param p3, "adZoneName"    # Ljava/lang/String;

    .prologue
    .line 1272
    invoke-static {p3}, Lcom/fusepowered/fuseapi/FuseAPI;->access$400(Ljava/lang/String;)V

    .line 1274
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v0, :cond_0

    .line 1275
    const-string v0, "FuseAPI"

    const-string v1, "Ad could not be displayed within timeout, calling adWillClose()"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->adFailedToDisplay()V

    .line 1277
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->adWillClose()V

    .line 1279
    :cond_0
    return-void
.end method

.method public adDidClose(ILjava/lang/String;)V
    .locals 1
    .param p1, "providerId"    # I
    .param p2, "requestedAdZone"    # Ljava/lang/String;

    .prologue
    .line 1283
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v0, :cond_0

    .line 1284
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->adWillClose()V

    .line 1286
    :cond_0
    invoke-static {p2, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->access$500(Ljava/lang/String;I)V

    .line 1287
    return-void
.end method

.method public adDidComplete(ILjava/lang/String;)V
    .locals 0
    .param p1, "providerId"    # I
    .param p2, "adZone"    # Ljava/lang/String;

    .prologue
    .line 1335
    return-void
.end method

.method public adDidDisplay(I)V
    .locals 1
    .param p1, "providerId"    # I

    .prologue
    .line 1261
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v0, :cond_0

    .line 1262
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->adDisplayed()V

    .line 1268
    :cond_0
    return-void
.end method

.method public adIsReady(IZ)V
    .locals 1
    .param p1, "providerId"    # I
    .param p2, "inAdZone"    # Z

    .prologue
    .line 1291
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v0, :cond_0

    .line 1292
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->adDidLoad()V

    .line 1294
    :cond_0
    return-void
.end method

.method public adWasClicked(I)V
    .locals 1
    .param p1, "providerId"    # I

    .prologue
    .line 1306
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v0, :cond_0

    .line 1307
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->adClicked()V

    .line 1309
    :cond_0
    return-void
.end method

.method public adWillLeaveApp(I)V
    .locals 1
    .param p1, "providerId"    # I

    .prologue
    .line 1313
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v0, :cond_0

    .line 1314
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->adWillLeaveApp()V

    .line 1316
    :cond_0
    return-void
.end method

.method public handleAdClickWithUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1367
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0, p1}, Lcom/fusepowered/util/FuseCallback;->handleAdClickWithUrl(Ljava/lang/String;)V

    .line 1368
    return-void
.end method

.method public noProvidersReadyToLoad()V
    .locals 1

    .prologue
    .line 1320
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v0, :cond_0

    .line 1321
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->adFailedToLoad()V

    .line 1323
    :cond_0
    return-void
.end method

.method public rewardedVideoDidComplete(ILjava/lang/String;Lcom/fusepowered/RewardedObject;)V
    .locals 2
    .param p1, "providerId"    # I
    .param p2, "adZone"    # Ljava/lang/String;
    .param p3, "rewardedObject"    # Lcom/fusepowered/RewardedObject;

    .prologue
    .line 1327
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v0, :cond_0

    .line 1328
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0, p2}, Lcom/fusepowered/util/FuseCallback;->rewardedVideoCompleted(Ljava/lang/String;)V

    .line 1329
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fusepowered/util/FuseCallback;->rewardedAdCompleteWithObject(Lcom/fusepowered/RewardedInfo;)V

    .line 1331
    :cond_0
    return-void

    .line 1329
    :cond_1
    invoke-virtual {p3}, Lcom/fusepowered/RewardedObject;->getInfo()Lcom/fusepowered/RewardedInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public userAcceptedOffer(Lcom/fusepowered/OfferObject;)V
    .locals 3
    .param p1, "offer"    # Lcom/fusepowered/OfferObject;

    .prologue
    .line 1350
    :try_start_0
    iget v1, p1, Lcom/fusepowered/OfferObject;->t:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 1351
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {p1}, Lcom/fusepowered/OfferObject;->getInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/IAPOfferInfo;

    invoke-virtual {v2, v1}, Lcom/fusepowered/util/FuseCallback;->IAPOfferAcceptedWithObject(Lcom/fusepowered/IAPOfferInfo;)V

    .line 1358
    :goto_0
    return-void

    .line 1353
    :cond_0
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {p1}, Lcom/fusepowered/OfferObject;->getInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/VGOfferInfo;

    invoke-virtual {v2, v1}, Lcom/fusepowered/util/FuseCallback;->virtualGoodsOfferAcceptedWithObject(Lcom/fusepowered/VGOfferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "FuseAPI"

    const-string v2, "Could not report offer accepted"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userAcceptedRewardedAd(I)V
    .locals 0
    .param p1, "currentAdZoneId"    # I

    .prologue
    .line 1345
    return-void
.end method

.method public userDeclinedRewardedAd(I)V
    .locals 0
    .param p1, "currentAdZoneId"    # I

    .prologue
    .line 1340
    return-void
.end method

.method public userRejectedOffer(Lcom/fusepowered/OfferObject;)V
    .locals 0
    .param p1, "offer"    # Lcom/fusepowered/OfferObject;

    .prologue
    .line 1363
    return-void
.end method
