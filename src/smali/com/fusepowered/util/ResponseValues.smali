.class public Lcom/fusepowered/util/ResponseValues;
.super Ljava/lang/Object;
.source "ResponseValues.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseValues"


# instance fields
.field private account:Lcom/fusepowered/util/Account;

.field private adColonyId:Ljava/lang/String;

.field private adColonyZone:Ljava/lang/String;

.field public adConfigs:[Lcom/fusepowered/api/model/AdConfig;

.field public adProviderConfigs:[Lcom/fusepowered/api/model/AdProviderConfig;

.field private adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/fusepowered/util/Ad;",
            ">;"
        }
    .end annotation
.end field

.field private adZones:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/ads/AdZone;",
            ">;"
        }
    .end annotation
.end field

.field private ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/AdProvider;",
            ">;"
        }
    .end annotation
.end field

.field private applifierId:Ljava/lang/String;

.field private applifierUseImpact:Z

.field private chatMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private disableAll:Z

.field private disableAnalytics:Z

.field private disableConfiguration:Z

.field private disableNotifications:Z

.field private dlc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/DLC;",
            ">;"
        }
    .end annotation
.end field

.field private enemiesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/String;

.field private friendsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation
.end field

.field private fuseId:Ljava/lang/String;

.field private gameConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/GameConfig;",
            ">;"
        }
    .end annotation
.end field

.field private gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

.field private incentives:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Incentive;",
            ">;"
        }
    .end annotation
.end field

.field private liveRailId:Ljava/lang/String;

.field private loopMePhoneId:Ljava/lang/String;

.field private loopMeTabletId:Ljava/lang/String;

.field private mailLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;>;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Message;",
            ">;"
        }
    .end annotation
.end field

.field private millennialInterstitialId:Ljava/lang/String;

.field private millennialVideoId:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private signPosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/SignPost;",
            ">;"
        }
    .end annotation
.end field

.field private startAppDeveloperId:Ljava/lang/String;

.field private startAppId:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private userCity:Ljava/lang/String;

.field private userCountry:Ljava/lang/String;

.field private userTransactionLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;"
        }
    .end annotation
.end field

.field private vungleId:Ljava/lang/String;

.field public welcomeMessage:Lcom/fusepowered/api/WelcomeMessage;

.field public zoneOffers:[Lcom/fusepowered/OfferObject;

.field public zoneRewards:[Lcom/fusepowered/RewardedObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/fusepowered/util/ResponseValues;->applifierId:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/fusepowered/util/ResponseValues;->vungleId:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/util/ResponseValues;->chatMessages:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/util/ResponseValues;->mailLists:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/fusepowered/util/Account;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->account:Lcom/fusepowered/util/Account;

    return-object v0
.end method

.method public getAd()Lcom/fusepowered/util/Ad;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/util/Ad;

    return-object v0
.end method

.method public getAdColonyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adColonyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdColonyZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adColonyZone:Ljava/lang/String;

    return-object v0
.end method

.method public getAdZones()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/ads/AdZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adZones:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/AdProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->ads:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getApplifierId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->applifierId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplifierUseImpact()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/fusepowered/util/ResponseValues;->applifierUseImpact:Z

    return v0
.end method

.method public getChatMessages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "fuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->chatMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getDlc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/DLC;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->dlc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEnemiesList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->enemiesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->friendsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFuseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->fuseId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameConfigs()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/GameConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v4, "rtn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 179
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, "k":Ljava/lang/String;
    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "v":Ljava/lang/String;
    const-string v6, "GAME CONFIG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sending this configuration key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/fusepowered/util/GameConfig;

    invoke-direct {v0}, Lcom/fusepowered/util/GameConfig;-><init>()V

    .line 188
    .local v0, "gc":Lcom/fusepowered/util/GameConfig;
    invoke-virtual {v0, v2}, Lcom/fusepowered/util/GameConfig;->setKey(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v5}, Lcom/fusepowered/util/GameConfig;->setValue(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v0    # "gc":Lcom/fusepowered/util/GameConfig;
    .end local v2    # "k":Ljava/lang/String;
    .end local v5    # "v":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public getGameKeyValuePairs()Lcom/fusepowered/util/GameKeyValuePairs;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

    return-object v0
.end method

.method public getIncentives()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Incentive;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->incentives:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLiveRailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->liveRailId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoopMePhoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->loopMePhoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoopMeTabletId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->loopMeTabletId:Ljava/lang/String;

    return-object v0
.end method

.method public getMailList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "fuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->mailLists:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMillennialInterstitialId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->millennialInterstitialId:Ljava/lang/String;

    return-object v0
.end method

.method public getMillennialVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->millennialVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public getNextMessage()Lcom/fusepowered/util/Message;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v1, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/util/Message;

    .line 145
    .local v0, "rtn":Lcom/fusepowered/util/Message;
    iget-object v1, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignPosts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/SignPost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->signPosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartAppDeveloperId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->startAppDeveloperId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->startAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->userCity:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->userCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTransactionLogs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->userTransactionLogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVungleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->vungleId:Ljava/lang/String;

    return-object v0
.end method

.method public isDisableAll()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/fusepowered/util/ResponseValues;->disableAll:Z

    return v0
.end method

.method public isDisableAnalytics()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/fusepowered/util/ResponseValues;->disableAnalytics:Z

    return v0
.end method

.method public isDisableConfiguration()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/fusepowered/util/ResponseValues;->disableConfiguration:Z

    return v0
.end method

.method public isDisableNotifications()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/fusepowered/util/ResponseValues;->disableNotifications:Z

    return v0
.end method

.method public peekAd()Lcom/fusepowered/util/Ad;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/util/Ad;

    return-object v0
.end method

.method public setAccount(Lcom/fusepowered/util/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fusepowered/util/Account;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->account:Lcom/fusepowered/util/Account;

    .line 270
    return-void
.end method

.method public setAd(Lcom/fusepowered/util/Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/util/Ad;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public setAdColonyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->adColonyId:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public setAdColonyZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zone"    # Ljava/lang/String;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->adColonyZone:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public setAdZones(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/ads/AdZone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->adZones:Ljava/util/HashMap;

    .line 469
    const-string v2, "ResponseValues"

    const-string v3, "Got AdZones:"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/ads/AdZone;

    .line 471
    .local v1, "zone":Lcom/fusepowered/ads/AdZone;
    const-string v2, "ResponseValues"

    invoke-virtual {v1}, Lcom/fusepowered/ads/AdZone;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    .end local v1    # "zone":Lcom/fusepowered/ads/AdZone;
    :cond_0
    return-void
.end method

.method public setAds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/AdProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->ads:Ljava/util/ArrayList;

    .line 220
    return-void
.end method

.method public setApplifierId(Ljava/lang/String;)V
    .locals 0
    .param p1, "applifierId"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->applifierId:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setApplifierUseImpact(Z)V
    .locals 0
    .param p1, "applifierUseImpact"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/fusepowered/util/ResponseValues;->applifierUseImpact:Z

    .line 389
    return-void
.end method

.method public setChatMessages(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "fuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->chatMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-void
.end method

.method public setDisableAll(Z)V
    .locals 0
    .param p1, "disableAll"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/fusepowered/util/ResponseValues;->disableAll:Z

    .line 85
    return-void
.end method

.method public setDisableAnalytics(Z)V
    .locals 0
    .param p1, "disableAnalytics"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/fusepowered/util/ResponseValues;->disableAnalytics:Z

    .line 109
    return-void
.end method

.method public setDisableConfiguration(Z)V
    .locals 0
    .param p1, "disableConfiguration"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/fusepowered/util/ResponseValues;->disableConfiguration:Z

    .line 101
    return-void
.end method

.method public setDisableNotifications(Z)V
    .locals 0
    .param p1, "disableNotifications"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/fusepowered/util/ResponseValues;->disableNotifications:Z

    .line 93
    return-void
.end method

.method public setDlc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/DLC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "dlc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->dlc:Ljava/util/ArrayList;

    .line 228
    return-void
.end method

.method public setEnemiesList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "enemiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->enemiesList:Ljava/util/ArrayList;

    .line 333
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->error:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setFriendsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->friendsList:Ljava/util/ArrayList;

    .line 325
    return-void
.end method

.method public setFuseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->fuseId:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setGameConfigs(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/GameConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 202
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/util/GameConfig;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/util/GameConfig;

    .line 208
    .local v0, "currItem":Lcom/fusepowered/util/GameConfig;
    invoke-virtual {v0}, Lcom/fusepowered/util/GameConfig;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/util/GameConfig;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    const-string v3, "GAME CONFIG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storing this configuration key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fusepowered/util/GameConfig;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fusepowered/util/GameConfig;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v0    # "currItem":Lcom/fusepowered/util/GameConfig;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    return-void
.end method

.method public setGameKeyValuePairs(Lcom/fusepowered/util/GameKeyValuePairs;)V
    .locals 0
    .param p1, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

    .line 262
    return-void
.end method

.method public setIncentives(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Incentive;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->incentives:Ljava/util/ArrayList;

    .line 278
    return-void
.end method

.method public setLiveRailId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->liveRailId:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setLoopMePhoneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->loopMePhoneId:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setLoopMeTabletId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->loopMeTabletId:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public setMailList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "fuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "mailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->mailLists:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-void
.end method

.method public setMessages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method public setMillennialInterstitialId(Ljava/lang/String;)V
    .locals 0
    .param p1, "millennialInterstitialId"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->millennialInterstitialId:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setMillennialVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "millennialVideoId"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->millennialVideoId:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setReqId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->requestId:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionIdIn"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->sessionId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSignPosts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/SignPost;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "signPosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/SignPost;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->signPosts:Ljava/util/ArrayList;

    .line 297
    return-void
.end method

.method public setStartAppDeveloperId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->startAppDeveloperId:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setStartAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->startAppId:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->timestamp:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setUserCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "userCity"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->userCity:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setUserCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "userCountry"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->userCountry:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setUserTransactionLogs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "userTransactionLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/UserTransactionLog;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->userTransactionLogs:Ljava/util/ArrayList;

    .line 317
    return-void
.end method

.method public setVungleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vungleId"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->vungleId:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResponseValues [sessionId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/ResponseValues;->disableAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableNotifications="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/ResponseValues;->disableNotifications:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/ResponseValues;->disableConfiguration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableAnalytics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/ResponseValues;->disableAnalytics:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userCity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->userCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userCountry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->userCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gameConfigs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->gameConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gameKeyValuePairs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ads="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->ads:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", incentives="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->incentives:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chatMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->chatMessages:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", signPosts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->signPosts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", friendsList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enemiesList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->enemiesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mailLists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->mailLists:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userTransactionLogs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->userTransactionLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dlc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->dlc:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adQueueSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->account:Lcom/fusepowered/util/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
