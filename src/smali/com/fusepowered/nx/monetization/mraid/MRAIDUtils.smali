.class public Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;
.super Ljava/lang/Object;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$UrlScheme;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Events;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;
    }
.end annotation


# static fields
.field private static final JS_QUOTE:Ljava/lang/String; = "\'"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    return-void
.end method

.method public static analyseUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 416
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->checkForDeepLinking(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-static {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->launchApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-static {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->startMRAIDBrowser(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static checkForDeepLinking(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 427
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action"

    .line 428
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unity"

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static decodeData(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 48
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 64
    :goto_0
    return-object v0

    .line 51
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    const-string v6, "&"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "params":[Ljava/lang/String;
    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v3, v4, v5

    .line 57
    .local v3, "param":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "pair":[Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 59
    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "param":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .line 63
    .end local v1    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 62
    .end local v4    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static getExceptionDescription(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    if-eqz p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static launchApplication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v14, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 438
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 439
    .local v11, "packageUri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, "applicationPackageName":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "activityName":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    .line 445
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Android DeepLinking package:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v4    # "activityName":Ljava/lang/String;
    .end local v5    # "applicationPackageName":Ljava/lang/String;
    .end local v11    # "packageUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 447
    .restart local v4    # "activityName":Ljava/lang/String;
    .restart local v5    # "applicationPackageName":Ljava/lang/String;
    .restart local v11    # "packageUri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 448
    .local v9, "e":Landroid/content/ActivityNotFoundException;
    const-string v14, "Error in Android DeepLinking using package name. ActivityNotFound exception thrown."

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    if-eqz v5, :cond_1

    .line 452
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Android DeepLinking package:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " activity:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 454
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 455
    .local v10, "intent":Landroid/content/Intent;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 456
    new-instance v14, Landroid/content/ComponentName;

    invoke-direct {v14, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 457
    const/high16 v14, 0x10000000

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 458
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 459
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v9

    .line 460
    .restart local v9    # "e":Landroid/content/ActivityNotFoundException;
    const-string v14, "Error in Android DeepLinking same application using component name. ActivityNotFound exception thrown."

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string v14, "Error in Android DeepLinking \'package\' URI format. Has to be package://packageName/activityName"

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    .end local v4    # "activityName":Ljava/lang/String;
    .end local v5    # "applicationPackageName":Ljava/lang/String;
    .end local v11    # "packageUri":Landroid/net/Uri;
    :cond_2
    const-string v14, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "action":Ljava/lang/String;
    const/4 v6, 0x0

    .line 473
    .local v6, "dataScheme":Ljava/lang/String;
    const-string v14, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 475
    .local v13, "splitStrings":[Ljava/lang/String;
    array-length v14, v13

    if-lez v14, :cond_6

    .line 477
    const/4 v2, 0x0

    .line 478
    .local v2, "actionSplit":Ljava/lang/String;
    const/4 v7, 0x0

    .line 480
    .local v7, "dataSchemeSplit":Ljava/lang/String;
    array-length v14, v13

    const/4 v15, 0x1

    if-le v14, v15, :cond_3

    .line 481
    const/4 v14, 0x0

    aget-object v2, v13, v14

    .line 484
    :cond_3
    array-length v14, v13

    const/4 v15, 0x2

    if-lt v14, v15, :cond_4

    .line 485
    const/4 v14, 0x1

    aget-object v7, v13, v14

    .line 488
    :cond_4
    if-eqz v2, :cond_8

    .line 489
    const-string v14, "="

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "actionSplitStrings":[Ljava/lang/String;
    array-length v14, v3

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 491
    const/4 v14, 0x0

    aget-object v14, v3, v14

    const-string v15, "action"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 492
    const/4 v14, 0x1

    aget-object v1, v3, v14

    .line 499
    .end local v3    # "actionSplitStrings":[Ljava/lang/String;
    :cond_5
    :goto_1
    if-eqz v7, :cond_9

    .line 500
    const-string v14, "="

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 501
    .local v8, "dataSchemeSplitStrings":[Ljava/lang/String;
    array-length v14, v8

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    .line 502
    const/4 v14, 0x0

    aget-object v14, v8, v14

    const-string v15, "data"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 503
    const/4 v14, 0x1

    aget-object v6, v8, v14

    .line 511
    .end local v2    # "actionSplit":Ljava/lang/String;
    .end local v7    # "dataSchemeSplit":Ljava/lang/String;
    .end local v8    # "dataSchemeSplitStrings":[Ljava/lang/String;
    :cond_6
    :goto_2
    if-eqz v1, :cond_a

    .line 513
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Android DeepLinking action:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " dataScheme:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 514
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 515
    .restart local v10    # "intent":Landroid/content/Intent;
    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    if-eqz v6, :cond_7

    .line 518
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 521
    :cond_7
    const/high16 v14, 0x10000000

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 522
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 523
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v9

    .line 524
    .restart local v9    # "e":Landroid/content/ActivityNotFoundException;
    const-string v14, "Error in Android DeepLinking other application. ActivityNotFound exception thrown."

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "actionSplit":Ljava/lang/String;
    .restart local v7    # "dataSchemeSplit":Ljava/lang/String;
    :cond_8
    const-string v14, "Error in Android DeepLinking other application URI format. Has to be action=actionName"

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 507
    :cond_9
    const-string v14, "Error in Android DeepLinking other application URI format. Has to be data=dataURI"

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 527
    .end local v2    # "actionSplit":Ljava/lang/String;
    .end local v7    # "dataSchemeSplit":Ljava/lang/String;
    :cond_a
    const-string v14, "Error in Android DeepLinking other application. Action name is not defined."

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    .end local v1    # "action":Ljava/lang/String;
    .end local v6    # "dataScheme":Ljava/lang/String;
    .end local v13    # "splitStrings":[Ljava/lang/String;
    :cond_b
    const-string v14, "unity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 531
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 532
    .restart local v11    # "packageUri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 533
    .restart local v5    # "applicationPackageName":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 534
    .local v12, "sceneName":Ljava/lang/String;
    if-eqz v5, :cond_c

    if-nez v12, :cond_c

    .line 536
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unity DeepLinking package:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 538
    :cond_c
    if-eqz v5, :cond_d

    .line 539
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unity DeepLinking package:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sceneName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 540
    new-instance v10, Landroid/content/Intent;

    const-string v14, "com.fusepowered.nx.action.DEEPLINK"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v14, "package_name"

    invoke-virtual {v10, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v14, "scene_name"

    invoke-virtual {v10, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 545
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v14, "Error in Unity DeepLinking URI format. Both package name and scene name couldn\'t be found."

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    .end local v5    # "applicationPackageName":Ljava/lang/String;
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v12    # "sceneName":Ljava/lang/String;
    :cond_e
    const-string v14, "Error in DeepLinking URI format. None of the URI format was found."

    invoke-static {v14}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static startMRAIDBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 557
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 558
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 559
    return-void
.end method

.method public static wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
