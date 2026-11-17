.class public Lcom/fusepowered/FuseSDK;
.super Ljava/lang/Object;
.source "FuseSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FuseSDK"

.field private static manuallyHandleAdUrls:Z

.field private static sActivity:Landroid/app/Activity;

.field private static sAppContext:Landroid/content/Context;

.field private static sCallback:Lcom/fusepowered/FuseCallbackWrapper;

.field private static sListener:Lcom/fusepowered/FuseSDKListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptFriend(Ljava/lang/String;)V
    .locals 1
    .param p0, "friendID"    # Ljava/lang/String;

    .prologue
    .line 721
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->acceptFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 722
    return-void
.end method

.method public static addFriend(Ljava/lang/String;)V
    .locals 1
    .param p0, "friendID"    # Ljava/lang/String;

    .prologue
    .line 698
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->addFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 699
    return-void
.end method

.method public static connected()Z
    .locals 1

    .prologue
    .line 613
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->connected()Z

    move-result v0

    return v0
.end method

.method public static dataEnabled()Z
    .locals 1

    .prologue
    .line 658
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->isOptOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deviceLogin(Ljava/lang/String;)V
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 579
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->deviceLogin(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 580
    return-void
.end method

.method public static disableData()V
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->userOptOut(I)V

    .line 641
    return-void
.end method

.method public static displayMoreGames()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->displayMoreGames(Lcom/fusepowered/activities/FuseApiBrowser;)V

    .line 354
    return-void
.end method

.method public static displayNotifications()V
    .locals 3

    .prologue
    .line 383
    sget-object v1, Lcom/fusepowered/FuseSDK;->sActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 384
    const-string v1, "FuseSDK"

    const-string v2, "Could not display notifications.  Make sure you have called FuseSDK.startSession() or FuseSDK.resumeSession() with an appropriate activity."

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 388
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/fusepowered/FuseSDK;->sActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    .restart local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public static emailLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 569
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, p1, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->emailLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 570
    return-void
.end method

.method public static enableData()V
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->userOptOut(I)V

    .line 651
    return-void
.end method

.method public static endSession()V
    .locals 0

    .prologue
    .line 111
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->endSession()V

    .line 112
    return-void
.end method

.method public static facebookLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "facebookId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 536
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->facebookLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 537
    return-void
.end method

.method public static friendsPushNotification(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 756
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->friendsPushNotification(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public static fuseLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "fuseID"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 558
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, p1, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->fuseLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 559
    return-void
.end method

.method public static gamesPlayed()I
    .locals 1

    .prologue
    .line 599
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->gamesPlayed()I

    move-result v0

    return v0
.end method

.method public static getFriendsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getFriendsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFuseID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getFuseID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGameConfiguration()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getGameConfiguration()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getGameConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 775
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getGameConfigurationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGameData(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 792
    .local p2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 793
    :cond_0
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p1, p2, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->getGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;)I

    move-result v0

    .line 795
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p1, p2, v0, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getFriendGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getOriginalAccountAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getOriginalAccountAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginalAccountID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getOriginalAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginalAccountType()Lcom/fusepowered/util/AccountType;
    .locals 1

    .prologue
    .line 514
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getOriginalAccountType()I

    move-result v0

    invoke-static {v0}, Lcom/fusepowered/util/AccountType;->getAccountTypeByNumber(I)Lcom/fusepowered/util/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public static getRewardedInfoForZoneID(Ljava/lang/String;)Lcom/fusepowered/RewardedInfo;
    .locals 1
    .param p0, "zoneID"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getRewardedInfoForZone(Ljava/lang/String;)Lcom/fusepowered/RewardedInfo;

    move-result-object v0

    return-object v0
.end method

.method public static googlePlayLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 590
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p1, p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->googlePlayLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 591
    return-void
.end method

.method public static isAdAvailableForZoneID(Ljava/lang/String;)Z
    .locals 1
    .param p0, "zoneID"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->isAdAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationAvailable()Z
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->isNotificationAvailable()Z

    move-result v0

    return v0
.end method

.method public static libraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->libraryVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static migrateFriends(Ljava/lang/String;)V
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;

    .prologue
    .line 729
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->migrateFriends(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 730
    return-void
.end method

.method public static pauseSession()V
    .locals 0

    .prologue
    .line 87
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->suspendSession()V

    .line 88
    return-void
.end method

.method public static preloadAdForZoneID(Ljava/lang/String;)V
    .locals 1
    .param p0, "zoneID"    # Ljava/lang/String;

    .prologue
    .line 345
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->checkAdAvailable(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 346
    return-void
.end method

.method public static registerAge(I)V
    .locals 0
    .param p0, "age"    # I

    .prologue
    .line 436
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->registerAge(I)V

    .line 437
    return-void
.end method

.method public static registerBirthday(III)V
    .locals 0
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 446
    invoke-static {p0, p1, p2}, Lcom/fusepowered/fuseapi/FuseAPI;->registerBirthday(III)V

    .line 447
    return-void
.end method

.method public static registerCurrency(II)Z
    .locals 2
    .param p0, "currency"    # I
    .param p1, "balance"    # I

    .prologue
    const/4 v0, 0x1

    .line 465
    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-le p0, v1, :cond_1

    .line 466
    :cond_0
    const/4 v0, 0x0

    .line 469
    :goto_0
    return v0

    .line 468
    :cond_1
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->registerCurrency(II)V

    goto :goto_0
.end method

.method public static registerCustomEvent(II)Z
    .locals 2
    .param p0, "eventId"    # I
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 395
    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-le p0, v1, :cond_1

    .line 396
    :cond_0
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    .line 398
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->registerCustomEvent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static registerCustomEvent(ILjava/lang/String;)Z
    .locals 1
    .param p0, "eventId"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 403
    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    const/16 v0, 0x14

    if-le p0, v0, :cond_1

    .line 404
    :cond_0
    const/4 v0, 0x0

    .line 407
    :goto_0
    return v0

    .line 406
    :cond_1
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->registerCustomEvent(ILjava/lang/String;)V

    .line 407
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static registerGender(Lcom/fusepowered/util/Gender;)V
    .locals 1
    .param p0, "gender"    # Lcom/fusepowered/util/Gender;

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->registerGender(I)V

    .line 429
    return-void
.end method

.method public static registerInAppPurchase(Lcom/fusepowered/util/VerifiedPurchase;)V
    .locals 4
    .param p0, "purchase"    # Lcom/fusepowered/util/VerifiedPurchase;

    .prologue
    .line 234
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/fusepowered/fuseapi/FuseAPI;->registerInAppPurchase(Lcom/fusepowered/util/VerifiedPurchase;DLjava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 235
    return-void
.end method

.method public static registerInAppPurchase(Lcom/fusepowered/util/VerifiedPurchase;DLjava/lang/String;)V
    .locals 1
    .param p0, "purchase"    # Lcom/fusepowered/util/VerifiedPurchase;
    .param p1, "price"    # D
    .param p3, "currency"    # Ljava/lang/String;

    .prologue
    .line 215
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->registerInAppPurchase(Lcom/fusepowered/util/VerifiedPurchase;DLjava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 216
    return-void
.end method

.method public static registerLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 455
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->registerLevel(I)V

    .line 456
    return-void
.end method

.method public static registerParentalConsent(Z)V
    .locals 0
    .param p0, "consent"    # Z

    .prologue
    .line 418
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->registerParentalConsent(Z)V

    .line 419
    return-void
.end method

.method public static registerVirtualGoodsPurchase(III)V
    .locals 0
    .param p0, "virtualGoodsID"    # I
    .param p1, "purchaseAmount"    # I
    .param p2, "currencyID"    # I

    .prologue
    .line 244
    invoke-static {p0, p1, p2}, Lcom/fusepowered/fuseapi/FuseAPI;->registerVirtualGoodsPurchase(III)V

    .line 245
    return-void
.end method

.method public static rejectFriend(Ljava/lang/String;)V
    .locals 1
    .param p0, "friendID"    # Ljava/lang/String;

    .prologue
    .line 725
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->rejectFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 726
    return-void
.end method

.method public static removeFriend(Ljava/lang/String;)V
    .locals 1
    .param p0, "friendID"    # Ljava/lang/String;

    .prologue
    .line 709
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->removeFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 710
    return-void
.end method

.method public static removeListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    sput-object v1, Lcom/fusepowered/FuseSDK;->sListener:Lcom/fusepowered/FuseSDKListener;

    .line 142
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/fusepowered/FuseCallbackWrapper;

    invoke-direct {v0, v1}, Lcom/fusepowered/FuseCallbackWrapper;-><init>(Lcom/fusepowered/FuseSDKListener;)V

    sput-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-virtual {v0, v1}, Lcom/fusepowered/FuseCallbackWrapper;->setListener(Lcom/fusepowered/FuseSDKListener;)V

    goto :goto_0
.end method

.method public static resumeSession(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    sput-object p0, Lcom/fusepowered/FuseSDK;->sActivity:Landroid/app/Activity;

    .line 102
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->resumeSession(Landroid/app/Activity;Lcom/fusepowered/util/FuseCallback;)V

    .line 103
    return-void
.end method

.method public static setGameData(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)I
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;

    .prologue
    .line 799
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->setGameData(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseCallback;)I

    move-result v0

    return v0
.end method

.method public static setListener(Lcom/fusepowered/FuseSDKListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/fusepowered/FuseSDKListener;

    .prologue
    .line 125
    sput-object p0, Lcom/fusepowered/FuseSDK;->sListener:Lcom/fusepowered/FuseSDKListener;

    .line 126
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/fusepowered/FuseCallbackWrapper;

    invoke-direct {v0, p0}, Lcom/fusepowered/FuseCallbackWrapper;-><init>(Lcom/fusepowered/FuseSDKListener;)V

    sput-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    .line 131
    :goto_0
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->setCallback(Lcom/fusepowered/util/FuseCallback;)V

    .line 132
    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-virtual {v0, p0}, Lcom/fusepowered/FuseCallbackWrapper;->setListener(Lcom/fusepowered/FuseSDKListener;)V

    goto :goto_0
.end method

.method public static setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p0, "platform"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->setPlatform(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static setRewardedVideoUserID(Ljava/lang/String;)V
    .locals 0
    .param p0, "userID"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->setRewardedVideoUserID(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public static varargs setupPushNotifications(Landroid/content/Intent;II[Ljava/lang/String;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "smallIconId"    # I
    .param p2, "largeIconId"    # I
    .param p3, "GCMProjectNumbers"    # [Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/FuseSDK;->sAppContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->setupGCM(Ljava/lang/String;Landroid/content/Context;II[Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static setupPushNotifications(Ljava/lang/String;Landroid/content/Intent;II)V
    .locals 1
    .param p0, "GCMProjectNumber"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "smallIconId"    # I
    .param p3, "largeIconId"    # I

    .prologue
    .line 168
    sget-object v0, Lcom/fusepowered/FuseSDK;->sAppContext:Landroid/content/Context;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->setupGCM(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;II)V

    .line 169
    return-void
.end method

.method public static showAdForZoneID(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p0, "zoneID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 325
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 327
    .restart local p1    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    sget-boolean v0, Lcom/fusepowered/FuseSDK;->manuallyHandleAdUrls:Z

    if-eqz v0, :cond_1

    .line 328
    const-string v0, "FuseSDKOption_HandleAdURLs"

    sget-boolean v1, Lcom/fusepowered/FuseSDK;->manuallyHandleAdUrls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_1
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, v0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAd(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;Ljava/util/HashMap;)V

    .line 331
    return-void
.end method

.method public static startSession(Ljava/lang/String;Landroid/app/Activity;Lcom/fusepowered/FuseSDKListener;Ljava/util/HashMap;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "mainActivity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/fusepowered/FuseSDKListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/fusepowered/FuseSDKListener;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appId can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-nez p1, :cond_1

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mainActivity can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    if-eqz p3, :cond_2

    .line 71
    const-string v0, "FuseSDKOption_HandleAdURLs"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/fusepowered/FuseSDK;->manuallyHandleAdUrls:Z

    .line 74
    :cond_2
    sput-object p1, Lcom/fusepowered/FuseSDK;->sActivity:Landroid/app/Activity;

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/FuseSDK;->sAppContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/fusepowered/FuseCallbackWrapper;

    invoke-direct {v0, p2}, Lcom/fusepowered/FuseCallbackWrapper;-><init>(Lcom/fusepowered/FuseSDKListener;)V

    sput-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    .line 77
    sput-object p2, Lcom/fusepowered/FuseSDK;->sListener:Lcom/fusepowered/FuseSDKListener;

    .line 78
    sget-object v0, Lcom/fusepowered/FuseSDK;->sAppContext:Landroid/content/Context;

    sget-object v1, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, p1, v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->startSession(Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Lcom/fusepowered/util/FuseCallback;)V

    .line 79
    return-void
.end method

.method public static twitterLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "twitterId"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 547
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {p0, p1, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->twitterLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 548
    return-void
.end method

.method public static updateFriendsListFromServer()V
    .locals 1

    .prologue
    .line 674
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->updateFriendsListFromServer(Lcom/fusepowered/util/FuseCallback;)V

    .line 675
    return-void
.end method

.method public static userPushNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "friendID"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 747
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->userPushNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public static utcTimeFromServer()V
    .locals 1

    .prologue
    .line 629
    sget-object v0, Lcom/fusepowered/FuseSDK;->sCallback:Lcom/fusepowered/FuseCallbackWrapper;

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->utcTimeFromServer(Lcom/fusepowered/util/FuseCallback;)V

    .line 630
    return-void
.end method

.method public static zoneHasIAPOffer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "zoneID"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->zoneHasIAPOffer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zoneHasRewarded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "zoneID"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->zoneHasRewarded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zoneHasVirtualGoodsOffer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "zoneID"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->zoneHasVirtualGoodsOffer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
