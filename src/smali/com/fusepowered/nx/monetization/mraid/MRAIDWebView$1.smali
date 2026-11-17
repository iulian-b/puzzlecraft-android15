.class Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;
.super Ljava/lang/Object;
.source "MRAIDWebView.java"

# interfaces
.implements Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAdFromServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 31
    .param p1, "httpErrorMsg"    # Ljava/lang/String;
    .param p2, "responseData"    # Ljava/lang/String;

    .prologue
    .line 436
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$600(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v23

    sget-object v26, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v27, "Ad was released before the content was loaded."

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 438
    const-string v23, "Downloading ad finished, but ad container was released."

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void

    .line 442
    :cond_0
    if-eqz p1, :cond_3

    .line 443
    const-string v23, "NO AD"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 444
    const-string v23, "Downloading ad failed - No ads to show."

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$700(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v23

    sget-object v26, Lcom/fusepowered/nx/monetization/enums/AdEvent;->NO_AD:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v27, "There was no ad to show."

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v11

    .line 563
    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v23

    sget-object v26, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v27, "Error while downloading the ad"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 564
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Downloading ad failed"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {p1 .. p1}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    const-string v23, "."

    :goto_1
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 448
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    const-string v14, ""

    .line 449
    .local v14, "message":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    .end local v14    # "message":Ljava/lang/String;
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " - "

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto :goto_2

    .line 451
    :cond_3
    if-eqz p2, :cond_f

    .line 454
    const/16 v20, 0x0

    .line 455
    .local v20, "richMediaResponseData":Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;
    const/16 v19, 0x1

    .line 458
    .local v19, "responseIsJSON":Z
    :try_start_2
    new-instance v12, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v12}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    .line 459
    .local v12, "gson":Lcom/fusepowered/nx/gson/Gson;
    const-class v23, Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;

    move-object/from16 v20, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 465
    .end local v12    # "gson":Lcom/fusepowered/nx/gson/Gson;
    :goto_3
    if-nez v19, :cond_4

    .line 466
    :try_start_3
    const-string v23, "Downloading ad finished successfully"

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$900(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 460
    :catch_1
    move-exception v11

    .line 461
    .restart local v11    # "e":Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_3

    .line 472
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    if-nez v20, :cond_5

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    const-string v26, "Improper RichMedia response format obtained"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;->getViewTimeOut()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    mul-long v24, v26, v28

    .line 479
    .local v24, "viewTimeOut":J
    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_6

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v23

    invoke-static/range {v23 .. v25}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->setViewTimeOut(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;J)V

    .line 483
    :cond_6
    const/4 v10, 0x0

    .line 484
    .local v10, "decodedHtml":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;->getBase64HtmlContent()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 485
    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;->getBase64HtmlContent()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .line 487
    .local v9, "decodedBytes":[B
    :try_start_4
    new-instance v10, Ljava/lang/String;

    .end local v10    # "decodedHtml":Ljava/lang/String;
    const-string v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-direct {v10, v9, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 494
    .end local v9    # "decodedBytes":[B
    .restart local v10    # "decodedHtml":Ljava/lang/String;
    :cond_7
    :goto_4
    if-nez v10, :cond_8

    .line 495
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    const-string v26, "Error in decoding Richmedia Content"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    .end local v10    # "decodedHtml":Ljava/lang/String;
    .restart local v9    # "decodedBytes":[B
    :catch_2
    move-exception v11

    .line 489
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v10, 0x0

    .line 490
    .restart local v10    # "decodedHtml":Ljava/lang/String;
    const-string v23, "UnSupportedEncodingException obtained while encoding RichMedia content."

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 499
    .end local v9    # "decodedBytes":[B
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$1002(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$1100(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {v20 .. v20}, Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;->getOfferIds()Ljava/util/List;

    move-result-object v16

    .line 506
    .local v16, "offerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_e

    .line 508
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 511
    .local v13, "md5UsedList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->getExtendedOperationLock()Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 513
    :try_start_6
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 514
    .local v17, "offerIdString":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 515
    .local v15, "offerId":Ljava/lang/Long;
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v27

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getReadyCacheFilesForOffer(J)Ljava/util/List;

    move-result-object v6

    .line 518
    .local v6, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_a
    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/nx/monetization/business/CacheFile;

    .line 519
    .local v4, "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getCDN()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getRelativeUrl()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 520
    .local v21, "urlFromCache":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "cacheFileName":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->getNativeXCacheDirectoryPath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 524
    .local v7, "cachedFilePath":Ljava/lang/String;
    invoke-static {v5}, Lcom/fusepowered/nx/monetization/manager/CacheFileManager;->doesFileExistForCacheFile(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 525
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "file://"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 526
    .local v8, "cachedFilePathForHTML":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getRelativeUrl()Ljava/lang/String;

    move-result-object v18

    .line 527
    .local v18, "relativeUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v29, v0

    .line 528
    invoke-static/range {v29 .. v29}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$1000(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 527
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v8}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->replaceCachedFilePath(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 531
    .local v22, "urlMatchFound":Z
    if-eqz v22, :cond_a

    .line 532
    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->getInstance()Lcom/fusepowered/nx/monetization/manager/CacheDBManager;

    move-result-object v28

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual/range {v28 .. v30}, Lcom/fusepowered/nx/monetization/manager/CacheDBManager;->updateFileStatusWithMD5(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/FileStatus;)V

    .line 535
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "URL match found with local cached file. "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 544
    .end local v4    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    .end local v5    # "cacheFileName":Ljava/lang/String;
    .end local v6    # "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    .end local v7    # "cachedFilePath":Ljava/lang/String;
    .end local v8    # "cachedFilePathForHTML":Ljava/lang/String;
    .end local v15    # "offerId":Ljava/lang/Long;
    .end local v17    # "offerIdString":Ljava/lang/String;
    .end local v18    # "relativeUrl":Ljava/lang/String;
    .end local v21    # "urlFromCache":Ljava/lang/String;
    .end local v22    # "urlMatchFound":Z
    :catchall_0
    move-exception v23

    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v23
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 539
    .restart local v4    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    .restart local v5    # "cacheFileName":Ljava/lang/String;
    .restart local v6    # "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    .restart local v7    # "cachedFilePath":Ljava/lang/String;
    .restart local v15    # "offerId":Ljava/lang/Long;
    .restart local v17    # "offerIdString":Ljava/lang/String;
    .restart local v21    # "urlFromCache":Ljava/lang/String;
    :cond_b
    :try_start_8
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Cached File is not present in local path. "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 544
    .end local v4    # "cacheFile":Lcom/fusepowered/nx/monetization/business/CacheFile;
    .end local v5    # "cacheFileName":Ljava/lang/String;
    .end local v6    # "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/business/CacheFile;>;"
    .end local v7    # "cachedFilePath":Ljava/lang/String;
    .end local v15    # "offerId":Ljava/lang/Long;
    .end local v17    # "offerIdString":Ljava/lang/String;
    .end local v21    # "urlFromCache":Ljava/lang/String;
    :cond_c
    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 547
    :try_start_9
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v23

    if-lez v23, :cond_d

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setMD5ListUsed(Ljava/util/Set;)V

    .line 551
    :cond_d
    const-string v23, "Downloading ad finished successfully."

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 558
    .end local v13    # "md5UsedList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$1000(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$900(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 554
    :cond_e
    const-string v23, "No offers found in response offers list."

    invoke-static/range {v23 .. v23}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 560
    .end local v10    # "decodedHtml":Ljava/lang/String;
    .end local v16    # "offerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "responseIsJSON":Z
    .end local v20    # "richMediaResponseData":Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;
    .end local v24    # "viewTimeOut":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    const-string v26, "Either empty or Improper RichMedia response format obtained"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 564
    .local v11, "e":Ljava/lang/Exception;
    :cond_10
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " - "

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_1
.end method
