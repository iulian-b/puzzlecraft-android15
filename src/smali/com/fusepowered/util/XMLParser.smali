.class public Lcom/fusepowered/util/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/util/XMLParser$5;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XMLParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    return-void
.end method

.method private static applyRewardsAndOffersToAdZones(Lcom/fusepowered/util/ResponseValues;)V
    .locals 12
    .param p0, "responseValues"    # Lcom/fusepowered/util/ResponseValues;

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/fusepowered/util/ResponseValues;->getAdZones()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    .line 423
    .local v9, "zones":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fusepowered/ads/AdZone;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/ads/AdZone;

    .line 425
    .local v8, "zone":Lcom/fusepowered/ads/AdZone;
    const/4 v6, 0x0

    .line 426
    .local v6, "rewardedObject":Lcom/fusepowered/RewardedObject;
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->zoneRewards:[Lcom/fusepowered/RewardedObject;

    .local v0, "arr$":[Lcom/fusepowered/RewardedObject;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 427
    .local v5, "obj":Lcom/fusepowered/RewardedObject;
    iget v10, v5, Lcom/fusepowered/RewardedObject;->zoneId:I

    iget v11, v8, Lcom/fusepowered/ads/AdZone;->id:I

    if-ne v10, v11, :cond_0

    .line 428
    move-object v6, v5

    .line 426
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 432
    .end local v5    # "obj":Lcom/fusepowered/RewardedObject;
    :cond_1
    const/4 v3, 0x0

    .line 433
    .local v3, "iapOfferObject":Lcom/fusepowered/OfferObject;
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->zoneOffers:[Lcom/fusepowered/OfferObject;

    .local v0, "arr$":[Lcom/fusepowered/OfferObject;
    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    .line 434
    .local v5, "obj":Lcom/fusepowered/OfferObject;
    iget v10, v5, Lcom/fusepowered/OfferObject;->t:I

    const/16 v11, 0x33

    if-ne v10, v11, :cond_2

    iget v10, v5, Lcom/fusepowered/OfferObject;->adZoneID:I

    iget v11, v8, Lcom/fusepowered/ads/AdZone;->id:I

    if-ne v10, v11, :cond_2

    .line 435
    move-object v3, v5

    .line 433
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 439
    .end local v5    # "obj":Lcom/fusepowered/OfferObject;
    :cond_3
    const/4 v7, 0x0

    .line 440
    .local v7, "vgOfferObject":Lcom/fusepowered/OfferObject;
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->zoneOffers:[Lcom/fusepowered/OfferObject;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    .line 441
    .restart local v5    # "obj":Lcom/fusepowered/OfferObject;
    iget v10, v5, Lcom/fusepowered/OfferObject;->t:I

    const/16 v11, 0x34

    if-ne v10, v11, :cond_4

    iget v10, v5, Lcom/fusepowered/OfferObject;->adZoneID:I

    iget v11, v8, Lcom/fusepowered/ads/AdZone;->id:I

    if-ne v10, v11, :cond_4

    .line 442
    move-object v7, v5

    .line 440
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 446
    .end local v5    # "obj":Lcom/fusepowered/OfferObject;
    :cond_5
    iput-object v6, v8, Lcom/fusepowered/ads/AdZone;->rewardedObject:Lcom/fusepowered/RewardedObject;

    .line 447
    iput-object v3, v8, Lcom/fusepowered/ads/AdZone;->IAPOfferObject:Lcom/fusepowered/OfferObject;

    .line 448
    iput-object v7, v8, Lcom/fusepowered/ads/AdZone;->virtualGoodsOfferObject:Lcom/fusepowered/OfferObject;

    goto :goto_0

    .line 450
    .end local v0    # "arr$":[Lcom/fusepowered/OfferObject;
    .end local v2    # "i$":I
    .end local v3    # "iapOfferObject":Lcom/fusepowered/OfferObject;
    .end local v4    # "len$":I
    .end local v6    # "rewardedObject":Lcom/fusepowered/RewardedObject;
    .end local v7    # "vgOfferObject":Lcom/fusepowered/OfferObject;
    .end local v8    # "zone":Lcom/fusepowered/ads/AdZone;
    :cond_6
    return-void
.end method

.method private static getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "attributes"    # Lorg/w3c/dom/NamedNodeMap;
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 1894
    const/4 v0, 0x0

    .line 1895
    .local v0, "attributeValue":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1896
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1897
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1900
    :cond_0
    return-object v0
.end method

.method private static parseAdContent(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V
    .locals 23
    .param p0, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p1, "items"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 956
    new-instance v2, Lcom/fusepowered/util/Ad;

    invoke-direct {v2}, Lcom/fusepowered/util/Ad;-><init>()V

    .line 958
    .local v2, "ad":Lcom/fusepowered/util/Ad;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/fusepowered/util/Ad;->setHtmlBody(Ljava/lang/String;)V

    .line 959
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/fusepowered/util/Ad;->setDisplayed(Z)V

    .line 961
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_b

    .line 962
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 964
    .local v7, "item":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 966
    .local v3, "adAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v22, "t"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 967
    .local v17, "type":Lorg/w3c/dom/Node;
    if-nez v17, :cond_4

    .line 968
    const/16 v22, 0x1

    move/from16 v0, v22

    iput v0, v2, Lcom/fusepowered/util/Ad;->type:I

    .line 979
    :goto_1
    const-string v22, "tl"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 981
    .local v20, "valtl":Lorg/w3c/dom/Node;
    if-eqz v20, :cond_5

    .line 983
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 984
    .local v15, "tl":Ljava/lang/String;
    iput-object v15, v2, Lcom/fusepowered/util/Ad;->tabletLandscape:Ljava/lang/String;

    .line 991
    .end local v15    # "tl":Ljava/lang/String;
    :goto_2
    const-string v22, "tp"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    .line 993
    .local v21, "valtp":Lorg/w3c/dom/Node;
    if-eqz v21, :cond_6

    .line 995
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 996
    .local v16, "tp":Ljava/lang/String;
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/fusepowered/util/Ad;->tabletPortrait:Ljava/lang/String;

    .line 1003
    .end local v16    # "tp":Ljava/lang/String;
    :goto_3
    const-string v22, "pl"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 1005
    .local v18, "valpl":Lorg/w3c/dom/Node;
    if-eqz v18, :cond_7

    .line 1007
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 1008
    .local v11, "pl":Ljava/lang/String;
    iput-object v11, v2, Lcom/fusepowered/util/Ad;->phoneLandscape:Ljava/lang/String;

    .line 1015
    .end local v11    # "pl":Ljava/lang/String;
    :goto_4
    const-string v22, "pp"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 1017
    .local v19, "valpp":Lorg/w3c/dom/Node;
    if-eqz v19, :cond_8

    .line 1019
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 1020
    .local v12, "pp":Ljava/lang/String;
    iput-object v12, v2, Lcom/fusepowered/util/Ad;->phonePortrait:Ljava/lang/String;

    .line 1028
    .end local v12    # "pp":Ljava/lang/String;
    :goto_5
    const-string v22, "pw"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    if-eqz v22, :cond_0

    const-string v22, "pw"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_0

    .line 1030
    const-string v22, "pw"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v2, Lcom/fusepowered/util/Ad;->pw:I

    .line 1031
    const-string v22, "ph"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v2, Lcom/fusepowered/util/Ad;->ph:I

    .line 1032
    const-string v22, "lw"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v2, Lcom/fusepowered/util/Ad;->lw:I

    .line 1033
    const-string v22, "lh"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v2, Lcom/fusepowered/util/Ad;->lh:I

    .line 1034
    const-string v22, "o"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v2, Lcom/fusepowered/util/Ad;->o:I

    .line 1038
    :cond_0
    const-string v22, "lr_id"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 1039
    .local v9, "liverail":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_1

    .line 1040
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setLiveRailId(Ljava/lang/String;)V

    .line 1043
    :cond_1
    const-string v22, "id"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1044
    .local v5, "attrValue":Ljava/lang/String;
    invoke-static {v5}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 1045
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/fusepowered/util/Ad;->setId(I)V

    .line 1047
    :cond_2
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 1048
    .local v13, "properties":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_6
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_a

    .line 1049
    invoke-interface {v13, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 1050
    .local v14, "property":Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 1051
    .local v10, "name":Ljava/lang/String;
    const-string v22, "HTMLBODY"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1052
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1053
    .local v4, "adNode":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_3

    .line 1054
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/fusepowered/util/Ad;->setHtmlBody(Ljava/lang/String;)V

    .line 1048
    .end local v4    # "adNode":Lorg/w3c/dom/Node;
    :cond_3
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 970
    .end local v5    # "attrValue":Ljava/lang/String;
    .end local v8    # "j":I
    .end local v9    # "liverail":Lorg/w3c/dom/Node;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "properties":Lorg/w3c/dom/NodeList;
    .end local v14    # "property":Lorg/w3c/dom/Node;
    .end local v18    # "valpl":Lorg/w3c/dom/Node;
    .end local v19    # "valpp":Lorg/w3c/dom/Node;
    .end local v20    # "valtl":Lorg/w3c/dom/Node;
    .end local v21    # "valtp":Lorg/w3c/dom/Node;
    :cond_4
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v2, Lcom/fusepowered/util/Ad;->type:I

    goto/16 :goto_1

    .line 988
    .restart local v20    # "valtl":Lorg/w3c/dom/Node;
    :cond_5
    const-string v22, ""

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/fusepowered/util/Ad;->tabletLandscape:Ljava/lang/String;

    goto/16 :goto_2

    .line 1000
    .restart local v21    # "valtp":Lorg/w3c/dom/Node;
    :cond_6
    const-string v22, ""

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/fusepowered/util/Ad;->tabletPortrait:Ljava/lang/String;

    goto/16 :goto_3

    .line 1012
    .restart local v18    # "valpl":Lorg/w3c/dom/Node;
    :cond_7
    const-string v22, ""

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/fusepowered/util/Ad;->phoneLandscape:Ljava/lang/String;

    goto/16 :goto_4

    .line 1024
    .restart local v19    # "valpp":Lorg/w3c/dom/Node;
    :cond_8
    const-string v22, ""

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/fusepowered/util/Ad;->phonePortrait:Ljava/lang/String;

    goto/16 :goto_5

    .line 1056
    .restart local v5    # "attrValue":Ljava/lang/String;
    .restart local v8    # "j":I
    .restart local v9    # "liverail":Lorg/w3c/dom/Node;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "properties":Lorg/w3c/dom/NodeList;
    .restart local v14    # "property":Lorg/w3c/dom/Node;
    :cond_9
    const-string v22, "ACTION"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1057
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1058
    .restart local v4    # "adNode":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_3

    .line 1059
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/fusepowered/util/Ad;->setAction(Ljava/lang/String;)V

    goto :goto_7

    .line 1063
    .end local v4    # "adNode":Lorg/w3c/dom/Node;
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "property":Lorg/w3c/dom/Node;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fusepowered/util/ResponseValues;->setAd(Lcom/fusepowered/util/Ad;)V

    .line 961
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1065
    .end local v3    # "adAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "attrValue":Ljava/lang/String;
    .end local v7    # "item":Lorg/w3c/dom/Node;
    .end local v8    # "j":I
    .end local v9    # "liverail":Lorg/w3c/dom/Node;
    .end local v13    # "properties":Lorg/w3c/dom/NodeList;
    .end local v17    # "type":Lorg/w3c/dom/Node;
    .end local v18    # "valpl":Lorg/w3c/dom/Node;
    .end local v19    # "valpp":Lorg/w3c/dom/Node;
    .end local v20    # "valtl":Lorg/w3c/dom/Node;
    .end local v21    # "valtp":Lorg/w3c/dom/Node;
    :cond_b
    return-void
.end method

.method private static parseAdZones(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V
    .locals 22
    .param p0, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p1, "zone_configs"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 907
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 908
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 914
    .local v17, "zone_config":Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 916
    .local v18, "zones":Lorg/w3c/dom/NodeList;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 917
    .local v3, "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    .line 920
    :try_start_0
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 921
    .local v15, "zone":Lorg/w3c/dom/Node;
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v16

    .line 923
    .local v16, "zoneAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v19, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 924
    .local v8, "id":I
    const-string v19, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 925
    .local v10, "name":Ljava/lang/String;
    const-string v19, "freq"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 926
    .local v6, "frequency":I
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v19

    const-string v20, "enabled"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/4 v4, 0x1

    .line 928
    .local v4, "enabled":Z
    :goto_1
    const-string v19, "w"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 931
    .local v12, "w":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_1

    .line 932
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 937
    .local v14, "waterfallAsStrings":[Ljava/lang/String;
    :goto_2
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v13, v0, [I

    .line 938
    .local v13, "waterfall":[I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    .line 939
    aget-object v11, v14, v9

    .line 940
    .local v11, "providerId":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    aput v19, v13, v9

    .line 938
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 926
    .end local v4    # "enabled":Z
    .end local v9    # "j":I
    .end local v11    # "providerId":Ljava/lang/String;
    .end local v12    # "w":Ljava/lang/String;
    .end local v13    # "waterfall":[I
    .end local v14    # "waterfallAsStrings":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 934
    .restart local v4    # "enabled":Z
    .restart local v12    # "w":Ljava/lang/String;
    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    .restart local v14    # "waterfallAsStrings":[Ljava/lang/String;
    goto :goto_2

    .line 943
    .restart local v9    # "j":I
    .restart local v13    # "waterfall":[I
    :cond_2
    new-instance v2, Lcom/fusepowered/ads/AdZone;

    invoke-direct {v2, v8, v10, v13}, Lcom/fusepowered/ads/AdZone;-><init>(ILjava/lang/String;[I)V

    .line 944
    .local v2, "adZone":Lcom/fusepowered/ads/AdZone;
    iput v6, v2, Lcom/fusepowered/ads/AdZone;->frequency:I

    .line 945
    iput-boolean v4, v2, Lcom/fusepowered/ads/AdZone;->enabled:Z

    .line 946
    iget-object v0, v2, Lcom/fusepowered/ads/AdZone;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    .end local v2    # "adZone":Lcom/fusepowered/ads/AdZone;
    .end local v4    # "enabled":Z
    .end local v6    # "frequency":I
    .end local v8    # "id":I
    .end local v9    # "j":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "w":Ljava/lang/String;
    .end local v13    # "waterfall":[I
    .end local v14    # "waterfallAsStrings":[Ljava/lang/String;
    .end local v15    # "zone":Lorg/w3c/dom/Node;
    .end local v16    # "zoneAttributes":Lorg/w3c/dom/NamedNodeMap;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 947
    :catch_0
    move-exception v5

    .line 948
    .local v5, "ex":Ljava/lang/Exception;
    const-string v19, "XMLParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Could not parse ad zone at index: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 952
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/fusepowered/util/ResponseValues;->setAdZones(Ljava/util/HashMap;)V

    .line 953
    .end local v3    # "adZones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fusepowered/ads/AdZone;>;"
    .end local v7    # "i":I
    .end local v17    # "zone_config":Lorg/w3c/dom/Node;
    .end local v18    # "zones":Lorg/w3c/dom/NodeList;
    :cond_4
    return-void
.end method

.method private static parseFetchDlcList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 22
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1199
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v15

    .line 1200
    .local v15, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v15}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 1201
    .local v4, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v20, Ljava/io/ByteArrayInputStream;

    const-string v21, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v13

    .line 1202
    .local v13, "doc":Lorg/w3c/dom/Document;
    const-string v20, "dlc"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 1204
    .local v19, "items":Lorg/w3c/dom/NodeList;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    .local v12, "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    .line 1207
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 1209
    .local v18, "item":Lorg/w3c/dom/Node;
    new-instance v5, Lcom/fusepowered/util/DLC;

    invoke-direct {v5}, Lcom/fusepowered/util/DLC;-><init>()V

    .line 1211
    .local v5, "dlc":Lcom/fusepowered/util/DLC;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 1212
    .local v3, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v20, "bytes"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1213
    .local v2, "attrValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1214
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/fusepowered/util/DLC;->setBytes(I)V

    .line 1215
    :cond_0
    const-string v20, "content_id"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1216
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1217
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/fusepowered/util/DLC;->setContentId(I)V

    .line 1218
    :cond_1
    const-string v20, "id"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1219
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1220
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/fusepowered/util/DLC;->setId(I)V

    .line 1221
    :cond_2
    const-string v20, "num_files"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1222
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 1223
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/fusepowered/util/DLC;->setNumFiles(I)V

    .line 1224
    :cond_3
    const-string v20, "product_id"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1225
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1226
    invoke-virtual {v5, v2}, Lcom/fusepowered/util/DLC;->setProductId(Ljava/lang/String;)V

    .line 1227
    :cond_4
    const-string v20, "update"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1228
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 1229
    const-string v20, "0"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/fusepowered/util/DLC;->setUpdate(Z)V

    .line 1231
    :cond_5
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1233
    .local v9, "dlcNodeList":Lorg/w3c/dom/NodeList;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .local v8, "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    const/16 v16, 0x0

    .local v16, "h":I
    :goto_2
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    .line 1236
    new-instance v7, Lcom/fusepowered/util/DlcContent;

    invoke-direct {v7}, Lcom/fusepowered/util/DlcContent;-><init>()V

    .line 1237
    .local v7, "dlcContent":Lcom/fusepowered/util/DlcContent;
    move/from16 v0, v16

    invoke-interface {v9, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 1238
    .local v10, "dlcProperty":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .line 1239
    .local v11, "dlcPropertyName":Ljava/lang/String;
    const-string v20, "dlc_content"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1240
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 1241
    .local v6, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v20, "bytes"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 1243
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/fusepowered/util/DlcContent;->setBytes(I)V

    .line 1244
    :cond_6
    const-string v20, "content_id"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1245
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 1246
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/fusepowered/util/DlcContent;->setContentId(I)V

    .line 1247
    :cond_7
    const-string v20, "downloadpath"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1248
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 1249
    invoke-virtual {v7, v2}, Lcom/fusepowered/util/DlcContent;->setDownloadPath(Ljava/lang/String;)V

    .line 1250
    :cond_8
    const-string v20, "id"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1251
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 1252
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/fusepowered/util/DlcContent;->setId(I)V

    .line 1253
    :cond_9
    const-string v20, "md5"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1254
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 1255
    invoke-virtual {v7, v2}, Lcom/fusepowered/util/DlcContent;->setMd5(Ljava/lang/String;)V

    .line 1256
    :cond_a
    const-string v20, "parent_id"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1257
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 1258
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/fusepowered/util/DlcContent;->setParentId(I)V

    .line 1259
    :cond_b
    const-string v20, "purchased"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1260
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 1261
    const-string v20, "0"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/fusepowered/util/DlcContent;->setPurchased(Z)V

    .line 1262
    :cond_c
    const-string v20, "auto_download"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1263
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 1264
    const-string v20, "0"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/fusepowered/util/DlcContent;->setAutoDownload(Z)V

    .line 1265
    :cond_d
    const-string v20, "product_id"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1266
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 1267
    invoke-virtual {v7, v2}, Lcom/fusepowered/util/DlcContent;->setProductId(Ljava/lang/String;)V

    .line 1269
    .end local v6    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_e
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 1229
    .end local v7    # "dlcContent":Lcom/fusepowered/util/DlcContent;
    .end local v8    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .end local v9    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "dlcProperty":Lorg/w3c/dom/Node;
    .end local v11    # "dlcPropertyName":Ljava/lang/String;
    .end local v16    # "h":I
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1261
    .restart local v6    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v7    # "dlcContent":Lcom/fusepowered/util/DlcContent;
    .restart local v8    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .restart local v9    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .restart local v10    # "dlcProperty":Lorg/w3c/dom/Node;
    .restart local v11    # "dlcPropertyName":Ljava/lang/String;
    .restart local v16    # "h":I
    :cond_10
    const/16 v20, 0x0

    goto :goto_3

    .line 1264
    :cond_11
    const/16 v20, 0x0

    goto :goto_4

    .line 1271
    .end local v6    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v7    # "dlcContent":Lcom/fusepowered/util/DlcContent;
    .end local v10    # "dlcProperty":Lorg/w3c/dom/Node;
    .end local v11    # "dlcPropertyName":Ljava/lang/String;
    :cond_12
    invoke-virtual {v5, v8}, Lcom/fusepowered/util/DLC;->setDlcContents(Ljava/util/ArrayList;)V

    .line 1273
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1276
    .end local v2    # "attrValue":Ljava/lang/String;
    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "dlc":Lcom/fusepowered/util/DLC;
    .end local v8    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .end local v9    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "h":I
    .end local v18    # "item":Lorg/w3c/dom/Node;
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/fusepowered/util/ResponseValues;->setDlc(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    return-void

    .line 1279
    .end local v4    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    .end local v13    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v17    # "i":I
    .end local v19    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v14

    .line 1280
    .local v14, "e":Ljava/lang/Exception;
    throw v14
.end method

.method private static parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 10
    .param p0, "response"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1835
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 1836
    .local v5, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 1837
    .local v2, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 1838
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v8, "friend_action"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 1839
    .local v7, "items":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 1840
    .local v6, "item":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1842
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v8, "fuse_id"

    invoke-static {v1, v8}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1843
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1844
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setFuseId(Ljava/lang/String;)V

    .line 1847
    :cond_0
    const-string v8, "error"

    invoke-static {v1, v8}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1848
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1849
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    :cond_1
    return-void

    .line 1851
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "item":Lorg/w3c/dom/Node;
    .end local v7    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v4

    .line 1852
    .local v4, "e":Ljava/lang/Exception;
    throw v4
.end method

.method private static parseGetAd(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)Z
    .locals 18
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 864
    const/4 v6, 0x0

    .line 866
    .local v6, "displayAdRequired":Z
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 867
    .local v10, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 868
    .local v4, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v16, Ljava/io/ByteArrayInputStream;

    const-string v17, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 869
    .local v7, "doc":Lorg/w3c/dom/Document;
    const-string v16, "AD_REQUEST"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 871
    .local v11, "items":Lorg/w3c/dom/NodeList;
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/util/ResponseValues;->peekAd()Lcom/fusepowered/util/Ad;

    move-result-object v5

    .line 872
    .local v5, "cachedAd":Lcom/fusepowered/util/Ad;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/fusepowered/util/Ad;->hasHtmlBody()Z

    move-result v16

    if-nez v16, :cond_1

    :cond_0
    const/4 v9, 0x1

    .line 873
    .local v9, "emptyCacheBefore":Z
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/fusepowered/util/XMLParser;->parseAdContent(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 874
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/util/ResponseValues;->peekAd()Lcom/fusepowered/util/Ad;

    move-result-object v5

    .line 875
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/fusepowered/util/Ad;->hasHtmlBody()Z

    move-result v16

    if-eqz v16, :cond_2

    const/4 v12, 0x1

    .line 877
    .local v12, "nonEmptyCacheAfter":Z
    :goto_1
    if-eqz v9, :cond_3

    if-eqz v12, :cond_3

    const/4 v6, 0x1

    .line 880
    :goto_2
    const-string v16, "zone_config"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 881
    .local v15, "zone_configs":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/fusepowered/util/XMLParser;->parseAdZones(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 883
    const-string v16, "rewarded"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 884
    .local v14, "rewards":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/fusepowered/api/XMLParser;->parseZoneRewards(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 886
    const-string v16, "offers"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 887
    .local v13, "offers":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/fusepowered/api/XMLParser;->parseZoneOffers(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 889
    invoke-static/range {p1 .. p1}, Lcom/fusepowered/util/XMLParser;->applyRewardsAndOffersToAdZones(Lcom/fusepowered/util/ResponseValues;)V

    .line 891
    const-string v16, "ad"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 892
    .local v3, "adNodes":Lorg/w3c/dom/NodeList;
    invoke-static {v3}, Lcom/fusepowered/api/XMLParser;->parseAdConfigs(Lorg/w3c/dom/NodeList;)[Lcom/fusepowered/api/model/AdConfig;

    move-result-object v2

    .line 893
    .local v2, "adConfigs":[Lcom/fusepowered/api/model/AdConfig;
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/fusepowered/util/ResponseValues;->adConfigs:[Lcom/fusepowered/api/model/AdConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    return v6

    .line 872
    .end local v2    # "adConfigs":[Lcom/fusepowered/api/model/AdConfig;
    .end local v3    # "adNodes":Lorg/w3c/dom/NodeList;
    .end local v9    # "emptyCacheBefore":Z
    .end local v12    # "nonEmptyCacheAfter":Z
    .end local v13    # "offers":Lorg/w3c/dom/NodeList;
    .end local v14    # "rewards":Lorg/w3c/dom/NodeList;
    .end local v15    # "zone_configs":Lorg/w3c/dom/NodeList;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 875
    .restart local v9    # "emptyCacheBefore":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 877
    .restart local v12    # "nonEmptyCacheAfter":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 898
    .end local v4    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "cachedAd":Lcom/fusepowered/util/Ad;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "emptyCacheBefore":Z
    .end local v10    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "items":Lorg/w3c/dom/NodeList;
    .end local v12    # "nonEmptyCacheAfter":Z
    :catch_0
    move-exception v8

    .line 899
    .local v8, "e":Ljava/lang/Exception;
    throw v8
.end method

.method private static parseGetEnemiesList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 19
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1723
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 1724
    .local v10, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 1725
    .local v5, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v17, Ljava/io/ByteArrayInputStream;

    const-string v18, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 1726
    .local v6, "doc":Lorg/w3c/dom/Document;
    const-string v17, "enemies_list"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 1728
    .local v14, "items":Lorg/w3c/dom/NodeList;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1730
    .local v8, "enemiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_9

    .line 1731
    invoke-interface {v14, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 1733
    .local v13, "item":Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v16

    .line 1734
    .local v16, "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v17, "error"

    invoke-static/range {v16 .. v17}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1735
    .local v3, "attrValue":Ljava/lang/String;
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1736
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1738
    :cond_0
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1739
    .local v9, "enemiesNodeList":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v15, v0, :cond_8

    .line 1740
    new-instance v11, Lcom/fusepowered/util/Player;

    invoke-direct {v11}, Lcom/fusepowered/util/Player;-><init>()V

    .line 1741
    .local v11, "friend":Lcom/fusepowered/util/Player;
    invoke-interface {v9, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 1742
    .local v4, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v17, "account_id"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1743
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1744
    invoke-virtual {v11, v3}, Lcom/fusepowered/util/Player;->setAccountId(Ljava/lang/String;)V

    .line 1745
    :cond_1
    const-string v17, "alias"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1746
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1747
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/fusepowered/util/Player;->setAlias(Ljava/lang/String;)V

    .line 1748
    :cond_2
    const-string v17, "fuse_id"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1749
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1750
    invoke-virtual {v11, v3}, Lcom/fusepowered/util/Player;->setFuseId(Ljava/lang/String;)V

    .line 1751
    :cond_3
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1752
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1753
    invoke-virtual {v11, v3}, Lcom/fusepowered/util/Player;->setType(Ljava/lang/String;)V

    .line 1754
    :cond_4
    const-string v17, "level"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1755
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1756
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/fusepowered/util/Player;->setLevel(I)V

    .line 1757
    :cond_5
    const-string v17, "can_attack"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1758
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1759
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1760
    .local v2, "attackFlag":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_7

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/fusepowered/util/Player;->setCanAttack(Z)V

    .line 1763
    .end local v2    # "attackFlag":I
    :cond_6
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1760
    .restart local v2    # "attackFlag":I
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .line 1730
    .end local v2    # "attackFlag":I
    .end local v4    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "friend":Lcom/fusepowered/util/Player;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1768
    .end local v3    # "attrValue":Ljava/lang/String;
    .end local v9    # "enemiesNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "item":Lorg/w3c/dom/Node;
    .end local v15    # "j":I
    .end local v16    # "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/fusepowered/util/ResponseValues;->setEnemiesList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1774
    return-void

    .line 1771
    .end local v5    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "enemiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    .end local v10    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "i":I
    .end local v14    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v7

    .line 1772
    .local v7, "e":Ljava/lang/Exception;
    throw v7
.end method

.method private static parseGetFriendsList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 19
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1779
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 1780
    .local v7, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 1781
    .local v4, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v17, Ljava/io/ByteArrayInputStream;

    const-string v18, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 1782
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v17, "friends_list"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 1784
    .local v14, "items":Lorg/w3c/dom/NodeList;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1786
    .local v11, "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    .line 1787
    invoke-interface {v14, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 1789
    .local v13, "item":Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v16

    .line 1790
    .local v16, "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v17, "error"

    invoke-static/range {v16 .. v17}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1791
    .local v2, "attrValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1792
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1794
    :cond_0
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 1795
    .local v10, "friendNodeList":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v15, v0, :cond_7

    .line 1796
    invoke-interface {v10, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 1797
    .local v9, "friendItem":Lorg/w3c/dom/Node;
    new-instance v8, Lcom/fusepowered/util/Player;

    invoke-direct {v8}, Lcom/fusepowered/util/Player;-><init>()V

    .line 1798
    .local v8, "friend":Lcom/fusepowered/util/Player;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 1799
    .local v3, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v17, "account_id"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1800
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1801
    invoke-virtual {v8, v2}, Lcom/fusepowered/util/Player;->setAccountId(Ljava/lang/String;)V

    .line 1802
    :cond_1
    const-string v17, "alias"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1803
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1804
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/fusepowered/util/Player;->setAlias(Ljava/lang/String;)V

    .line 1805
    :cond_2
    const-string v17, "fuse_id"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1806
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1807
    invoke-virtual {v8, v2}, Lcom/fusepowered/util/Player;->setFuseId(Ljava/lang/String;)V

    .line 1808
    :cond_3
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1809
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1810
    invoke-virtual {v8, v2}, Lcom/fusepowered/util/Player;->setType(Ljava/lang/String;)V

    .line 1811
    :cond_4
    const-string v17, "level"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1812
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1813
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/fusepowered/util/Player;->setLevel(I)V

    .line 1814
    :cond_5
    const-string v17, "pending"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1815
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1816
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/fusepowered/util/Player;->setPending(I)V

    .line 1818
    :cond_6
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1786
    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "friend":Lcom/fusepowered/util/Player;
    .end local v9    # "friendItem":Lorg/w3c/dom/Node;
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1823
    .end local v2    # "attrValue":Ljava/lang/String;
    .end local v10    # "friendNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "item":Lorg/w3c/dom/Node;
    .end local v15    # "j":I
    .end local v16    # "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/fusepowered/util/ResponseValues;->setFriendsList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    return-void

    .line 1826
    .end local v4    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    .end local v12    # "i":I
    .end local v14    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v6

    .line 1827
    .local v6, "e":Ljava/lang/Exception;
    throw v6
.end method

.method private static parseGetGamedata(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 32
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1069
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    .line 1070
    .local v13, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 1071
    .local v5, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v30, Ljava/io/ByteArrayInputStream;

    const-string v31, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v11

    .line 1072
    .local v11, "doc":Lorg/w3c/dom/Document;
    const-string v30, "game_data"

    move-object/from16 v0, v30

    invoke-interface {v11, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 1074
    .local v19, "items":Lorg/w3c/dom/NodeList;
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/util/ResponseValues;->getGameKeyValuePairs()Lcom/fusepowered/util/GameKeyValuePairs;

    move-result-object v14

    .line 1075
    .local v14, "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    if-nez v14, :cond_0

    .line 1076
    new-instance v14, Lcom/fusepowered/util/GameKeyValuePairs;

    .end local v14    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    invoke-direct {v14}, Lcom/fusepowered/util/GameKeyValuePairs;-><init>()V

    .line 1079
    .restart local v14    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    :cond_0
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 1080
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 1083
    .local v18, "item":Lorg/w3c/dom/Node;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    .line 1085
    .local v15, "gamedataAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v30, "c"

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1089
    .local v4, "attrValue":Ljava/lang/String;
    const-string v30, "reqID"

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1090
    .local v27, "requestId":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/fusepowered/util/GameKeyValuePairs;->setReqId(Ljava/lang/String;)V

    .line 1093
    const-string v30, "row_key"

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1094
    .local v24, "objectKey":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_3

    .line 1095
    const-string v30, ""

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Lcom/fusepowered/util/GameKeyValuePairs;->setRowKey(Ljava/lang/String;)V

    .line 1103
    :goto_1
    const-string v30, "user"

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1104
    .local v28, "user":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/fusepowered/util/GameKeyValuePairs;->setUser(Ljava/lang/String;)V

    .line 1106
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 1108
    .local v25, "properties":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_2
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 1109
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    .line 1110
    .local v26, "property":Lorg/w3c/dom/Node;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    .line 1112
    .local v23, "name":Ljava/lang/String;
    const-string v30, "d"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 1113
    const/16 v17, 0x0

    .line 1114
    .local v17, "isBinary":Z
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 1116
    .local v6, "dataAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v30, "b"

    move-object/from16 v0, v30

    invoke-static {v6, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1117
    invoke-static {v4}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_1

    .line 1119
    const-string v30, "1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 1121
    :cond_1
    const/16 v22, 0x0

    .line 1122
    .local v22, "key":Ljava/lang/String;
    const/16 v29, 0x0

    .line 1123
    .local v29, "value":Ljava/lang/String;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1125
    .local v8, "dataProperties":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    .local v21, "k":I
    :goto_3
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 1126
    move/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 1127
    .local v9, "dataProperty":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 1129
    .local v7, "dataName":Ljava/lang/String;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v30

    if-eqz v30, :cond_2

    .line 1130
    const-string v30, "key"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 1131
    const/16 v22, 0x0

    .line 1132
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    .line 1125
    :cond_2
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1098
    .end local v6    # "dataAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v7    # "dataName":Ljava/lang/String;
    .end local v8    # "dataProperties":Lorg/w3c/dom/NodeList;
    .end local v9    # "dataProperty":Lorg/w3c/dom/Node;
    .end local v17    # "isBinary":Z
    .end local v20    # "j":I
    .end local v21    # "k":I
    .end local v22    # "key":Ljava/lang/String;
    .end local v23    # "name":Ljava/lang/String;
    .end local v25    # "properties":Lorg/w3c/dom/NodeList;
    .end local v26    # "property":Lorg/w3c/dom/Node;
    .end local v28    # "user":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/fusepowered/util/GameKeyValuePairs;->setRowKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1163
    .end local v4    # "attrValue":Ljava/lang/String;
    .end local v5    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v11    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    .end local v15    # "gamedataAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v16    # "i":I
    .end local v18    # "item":Lorg/w3c/dom/Node;
    .end local v19    # "items":Lorg/w3c/dom/NodeList;
    .end local v24    # "objectKey":Ljava/lang/String;
    .end local v27    # "requestId":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1164
    .local v12, "e":Ljava/lang/Exception;
    throw v12

    .line 1134
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v4    # "attrValue":Ljava/lang/String;
    .restart local v5    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "dataAttributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v7    # "dataName":Ljava/lang/String;
    .restart local v8    # "dataProperties":Lorg/w3c/dom/NodeList;
    .restart local v9    # "dataProperty":Lorg/w3c/dom/Node;
    .restart local v11    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    .restart local v15    # "gamedataAttributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v16    # "i":I
    .restart local v17    # "isBinary":Z
    .restart local v18    # "item":Lorg/w3c/dom/Node;
    .restart local v19    # "items":Lorg/w3c/dom/NodeList;
    .restart local v20    # "j":I
    .restart local v21    # "k":I
    .restart local v22    # "key":Ljava/lang/String;
    .restart local v23    # "name":Ljava/lang/String;
    .restart local v24    # "objectKey":Ljava/lang/String;
    .restart local v25    # "properties":Lorg/w3c/dom/NodeList;
    .restart local v26    # "property":Lorg/w3c/dom/Node;
    .restart local v27    # "requestId":Ljava/lang/String;
    .restart local v28    # "user":Ljava/lang/String;
    .restart local v29    # "value":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v30, "value"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 1135
    const/16 v29, 0x0

    .line 1136
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v29

    goto :goto_4

    .line 1141
    .end local v7    # "dataName":Ljava/lang/String;
    .end local v9    # "dataProperty":Lorg/w3c/dom/Node;
    :cond_5
    invoke-static/range {v24 .. v24}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 1142
    if-eqz v17, :cond_7

    .line 1143
    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    .line 1146
    .local v10, "decoded":[B
    move-object/from16 v0, v22

    invoke-virtual {v14, v0, v10}, Lcom/fusepowered/util/GameKeyValuePairs;->setKeyValue(Ljava/lang/String;[B)V

    .line 1108
    .end local v6    # "dataAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "dataProperties":Lorg/w3c/dom/NodeList;
    .end local v10    # "decoded":[B
    .end local v17    # "isBinary":Z
    .end local v21    # "k":I
    .end local v22    # "key":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_6
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 1150
    .restart local v6    # "dataAttributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "dataProperties":Lorg/w3c/dom/NodeList;
    .restart local v17    # "isBinary":Z
    .restart local v21    # "k":I
    .restart local v22    # "key":Ljava/lang/String;
    .restart local v29    # "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Lcom/fusepowered/util/GameKeyValuePairs;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1156
    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/fusepowered/util/GameKeyValuePairs;->setObjectKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1079
    .end local v6    # "dataAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "dataProperties":Lorg/w3c/dom/NodeList;
    .end local v17    # "isBinary":Z
    .end local v21    # "k":I
    .end local v22    # "key":Ljava/lang/String;
    .end local v23    # "name":Ljava/lang/String;
    .end local v26    # "property":Lorg/w3c/dom/Node;
    .end local v29    # "value":Ljava/lang/String;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 1161
    .end local v4    # "attrValue":Ljava/lang/String;
    .end local v15    # "gamedataAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v18    # "item":Lorg/w3c/dom/Node;
    .end local v20    # "j":I
    .end local v24    # "objectKey":Ljava/lang/String;
    .end local v25    # "properties":Lorg/w3c/dom/NodeList;
    .end local v27    # "requestId":Ljava/lang/String;
    .end local v28    # "user":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/fusepowered/util/ResponseValues;->setGameKeyValuePairs(Lcom/fusepowered/util/GameKeyValuePairs;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1166
    return-void
.end method

.method private static parseGetMail(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 27
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1577
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 1578
    .local v7, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 1579
    .local v4, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v25, Ljava/io/ByteArrayInputStream;

    const-string v26, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 1580
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v25, "mail"

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 1582
    .local v12, "items":Lorg/w3c/dom/NodeList;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1584
    .local v23, "mailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_e

    .line 1585
    invoke-interface {v12, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 1587
    .local v11, "item":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    .line 1588
    .local v15, "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v25, "error"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1589
    .local v3, "attrValue":Ljava/lang/String;
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 1590
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1591
    :cond_0
    const-string v25, "to_user"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1592
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 1593
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/fusepowered/util/ResponseValues;->setFuseId(Ljava/lang/String;)V

    .line 1595
    :cond_1
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 1596
    .local v19, "mailItemList":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_d

    .line 1597
    new-instance v16, Lcom/fusepowered/util/Mail;

    invoke-direct/range {v16 .. v16}, Lcom/fusepowered/util/Mail;-><init>()V

    .line 1598
    .local v16, "mail":Lcom/fusepowered/util/Mail;
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 1599
    .local v17, "mailItem":Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v24

    .line 1600
    .local v24, "mailTagName":Ljava/lang/String;
    const-string v25, "mail_item"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 1601
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    .line 1602
    .local v18, "mailItemAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v25, "alias"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1603
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 1604
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Mail;->setAlias(Ljava/lang/String;)V

    .line 1605
    :cond_2
    const-string v25, "time"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1606
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 1607
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/fusepowered/util/Mail;->setDate(Ljava/lang/String;)V

    .line 1608
    :cond_3
    const-string v25, "from_user"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1609
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 1610
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/fusepowered/util/Mail;->setFuseId(Ljava/lang/String;)V

    .line 1611
    :cond_4
    const-string v25, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1612
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 1613
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Mail;->setId(I)V

    .line 1615
    :cond_5
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 1616
    .local v22, "mailItemNodeList":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v14, v0, :cond_c

    .line 1617
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 1618
    .local v20, "mailItemNodeChildren":Lorg/w3c/dom/Node;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    .line 1619
    .local v21, "mailItemNodeChildrenName":Ljava/lang/String;
    const-string v25, "gift"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 1620
    new-instance v8, Lcom/fusepowered/util/Gift;

    invoke-direct {v8}, Lcom/fusepowered/util/Gift;-><init>()V

    .line 1621
    .local v8, "gift":Lcom/fusepowered/util/Gift;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 1622
    .local v9, "giftAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v25, "gift_id"

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1623
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 1624
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/fusepowered/util/Gift;->setId(I)V

    .line 1625
    :cond_6
    const-string v25, "gift_name"

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1626
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 1627
    invoke-virtual {v8, v3}, Lcom/fusepowered/util/Gift;->setName(Ljava/lang/String;)V

    .line 1628
    :cond_7
    const-string v25, "gift_url"

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1629
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 1630
    invoke-virtual {v8, v3}, Lcom/fusepowered/util/Gift;->setUrl(Ljava/lang/String;)V

    .line 1631
    :cond_8
    const-string v25, "gift_amount"

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1632
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 1633
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/fusepowered/util/Gift;->setAmount(I)V

    .line 1634
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/fusepowered/util/Mail;->setGift(Lcom/fusepowered/util/Gift;)V

    .line 1616
    .end local v8    # "gift":Lcom/fusepowered/util/Gift;
    .end local v9    # "giftAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_a
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1636
    :cond_b
    const-string v25, "message"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 1637
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v25

    if-eqz v25, :cond_a

    .line 1638
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Mail;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1650
    .end local v3    # "attrValue":Ljava/lang/String;
    .end local v4    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "i":I
    .end local v11    # "item":Lorg/w3c/dom/Node;
    .end local v12    # "items":Lorg/w3c/dom/NodeList;
    .end local v13    # "j":I
    .end local v14    # "k":I
    .end local v15    # "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v16    # "mail":Lcom/fusepowered/util/Mail;
    .end local v17    # "mailItem":Lorg/w3c/dom/Node;
    .end local v18    # "mailItemAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v19    # "mailItemList":Lorg/w3c/dom/NodeList;
    .end local v20    # "mailItemNodeChildren":Lorg/w3c/dom/Node;
    .end local v21    # "mailItemNodeChildrenName":Ljava/lang/String;
    .end local v22    # "mailItemNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "mailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    .end local v24    # "mailTagName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1651
    .local v6, "e":Ljava/lang/Exception;
    throw v6

    .line 1643
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "attrValue":Ljava/lang/String;
    .restart local v4    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10    # "i":I
    .restart local v11    # "item":Lorg/w3c/dom/Node;
    .restart local v12    # "items":Lorg/w3c/dom/NodeList;
    .restart local v13    # "j":I
    .restart local v15    # "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v16    # "mail":Lcom/fusepowered/util/Mail;
    .restart local v17    # "mailItem":Lorg/w3c/dom/Node;
    .restart local v19    # "mailItemList":Lorg/w3c/dom/NodeList;
    .restart local v23    # "mailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    .restart local v24    # "mailTagName":Ljava/lang/String;
    :cond_c
    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1584
    .end local v16    # "mail":Lcom/fusepowered/util/Mail;
    .end local v17    # "mailItem":Lorg/w3c/dom/Node;
    .end local v24    # "mailTagName":Ljava/lang/String;
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1647
    .end local v3    # "attrValue":Ljava/lang/String;
    .end local v11    # "item":Lorg/w3c/dom/Node;
    .end local v13    # "j":I
    .end local v15    # "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v19    # "mailItemList":Lorg/w3c/dom/NodeList;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/util/ResponseValues;->setMailList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1654
    return-void
.end method

.method private static parseGetUserTransaction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 18
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1659
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 1660
    .local v7, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 1661
    .local v4, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v16, Ljava/io/ByteArrayInputStream;

    const-string v17, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 1662
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v16, "transactions"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 1664
    .local v10, "items":Lorg/w3c/dom/NodeList;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1666
    .local v14, "userTransactionLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/UserTransactionLog;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_c

    .line 1667
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 1669
    .local v9, "item":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    .line 1670
    .local v12, "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v16, "error"

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1671
    .local v2, "attrValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 1672
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1674
    :cond_0
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1675
    .local v15, "utLogList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    move/from16 v0, v16

    if-ge v11, v0, :cond_b

    .line 1676
    new-instance v13, Lcom/fusepowered/util/UserTransactionLog;

    invoke-direct {v13}, Lcom/fusepowered/util/UserTransactionLog;-><init>()V

    .line 1677
    .local v13, "userTransactionLog":Lcom/fusepowered/util/UserTransactionLog;
    invoke-interface {v15, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 1678
    .local v3, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1679
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1680
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/UserTransactionLog;->setId(I)V

    .line 1681
    :cond_1
    const-string v16, "alias"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1682
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1683
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/UserTransactionLog;->setAlias(Ljava/lang/String;)V

    .line 1684
    :cond_2
    const-string v16, "user"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1685
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1686
    invoke-virtual {v13, v2}, Lcom/fusepowered/util/UserTransactionLog;->setFuseId(Ljava/lang/String;)V

    .line 1687
    :cond_3
    const-string v16, "time"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1688
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1689
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/UserTransactionLog;->setDate(I)V

    .line 1690
    :cond_4
    const-string v16, "level"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1691
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 1692
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/UserTransactionLog;->setLevel(I)V

    .line 1693
    :cond_5
    const-string v16, "amount_won"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1694
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 1695
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/UserTransactionLog;->setAmountWon(I)V

    .line 1696
    :cond_6
    const-string v16, "amount_lost"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1697
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 1698
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/UserTransactionLog;->setAmountLost(I)V

    .line 1699
    :cond_7
    const-string v16, "outcome"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1700
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 1701
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    const/16 v16, 0x1

    :goto_2
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/UserTransactionLog;->setWasWon(Z)V

    .line 1702
    :cond_8
    const-string v16, "event_type"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1703
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 1704
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/fusepowered/util/FuseAttackRobberyEventType;->getFuseAttackRobberyEventTypeByCode(I)Lcom/fusepowered/util/FuseAttackRobberyEventType;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/UserTransactionLog;->setEventType(Lcom/fusepowered/util/FuseAttackRobberyEventType;)V

    .line 1706
    :cond_9
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1701
    :cond_a
    const/16 v16, 0x0

    goto :goto_2

    .line 1666
    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v13    # "userTransactionLog":Lcom/fusepowered/util/UserTransactionLog;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1711
    .end local v2    # "attrValue":Ljava/lang/String;
    .end local v9    # "item":Lorg/w3c/dom/Node;
    .end local v11    # "j":I
    .end local v12    # "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v15    # "utLogList":Lorg/w3c/dom/NodeList;
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/fusepowered/util/ResponseValues;->setUserTransactionLogs(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1718
    return-void

    .line 1714
    .end local v4    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "i":I
    .end local v10    # "items":Lorg/w3c/dom/NodeList;
    .end local v14    # "userTransactionLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/UserTransactionLog;>;"
    :catch_0
    move-exception v6

    .line 1715
    .local v6, "e":Ljava/lang/Exception;
    throw v6
.end method

.method private static parseIncentiveActionComplete(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)Ljava/lang/String;
    .locals 20
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1287
    const-string v17, ""

    .line 1289
    .local v17, "status":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 1290
    .local v7, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1291
    .local v3, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v18, Ljava/io/ByteArrayInputStream;

    const-string v19, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 1292
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v18, "incentives"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1293
    .local v16, "items":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    .line 1294
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 1295
    .local v15, "item":Lorg/w3c/dom/Node;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    .local v14, "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 1297
    .local v11, "incentiveNodeList":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "h":I
    :goto_1
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    .line 1298
    new-instance v10, Lcom/fusepowered/util/Incentive;

    invoke-direct {v10}, Lcom/fusepowered/util/Incentive;-><init>()V

    .line 1299
    .local v10, "incentive":Lcom/fusepowered/util/Incentive;
    invoke-interface {v11, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 1301
    .local v12, "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 1302
    .local v13, "incentivePropertyName":Ljava/lang/String;
    const-string v18, "incentive"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1303
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 1304
    .local v4, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v18, "incentive_id"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1305
    .local v2, "attrValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1306
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/fusepowered/util/Incentive;->setIncentiveId(I)V

    .line 1307
    :cond_0
    const-string v18, "amount"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1308
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 1309
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/fusepowered/util/Incentive;->setAmount(I)V

    .line 1310
    :cond_1
    const-string v18, "reward_item_id"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1311
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 1312
    invoke-virtual {v10, v2}, Lcom/fusepowered/util/Incentive;->setRewardItemId(Ljava/lang/String;)V

    .line 1313
    :cond_2
    const-string v18, "reward_item_name"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1314
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1315
    invoke-virtual {v10, v2}, Lcom/fusepowered/util/Incentive;->setRewardItemName(Ljava/lang/String;)V

    .line 1316
    :cond_3
    const-string v18, "claim_confirmed"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1317
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1318
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/fusepowered/util/Incentive;->setClaimConfirmed(Z)V

    .line 1323
    .end local v2    # "attrValue":Ljava/lang/String;
    .end local v4    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_4
    :goto_3
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1318
    .restart local v2    # "attrValue":Ljava/lang/String;
    .restart local v4    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 1320
    .end local v2    # "attrValue":Ljava/lang/String;
    .end local v4    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_6
    const-string v18, "status"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1321
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 1326
    .end local v10    # "incentive":Lcom/fusepowered/util/Incentive;
    .end local v12    # "incentiveProperty":Lorg/w3c/dom/Node;
    .end local v13    # "incentivePropertyName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/fusepowered/util/ResponseValues;->setIncentives(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1329
    .end local v3    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "h":I
    .end local v9    # "i":I
    .end local v11    # "incentiveNodeList":Lorg/w3c/dom/NodeList;
    .end local v14    # "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    .end local v15    # "item":Lorg/w3c/dom/Node;
    .end local v16    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v6

    .line 1330
    .local v6, "e":Ljava/lang/Exception;
    throw v6

    .line 1332
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "i":I
    .restart local v16    # "items":Lorg/w3c/dom/NodeList;
    :cond_8
    return-object v17
.end method

.method private static parseMessageList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 20
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1468
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 1469
    .local v10, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 1470
    .local v4, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v18, Ljava/io/ByteArrayInputStream;

    const-string v19, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 1471
    .local v8, "doc":Lorg/w3c/dom/Document;
    const-string v18, "chat_messages"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 1473
    .local v13, "items":Lorg/w3c/dom/NodeList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    .local v7, "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    .line 1475
    invoke-interface {v13, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 1477
    .local v12, "item":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    .line 1478
    .local v15, "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1479
    .local v2, "attrValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1480
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1481
    :cond_0
    const-string v18, "to_user"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1482
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 1483
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/fusepowered/util/ResponseValues;->setFuseId(Ljava/lang/String;)V

    .line 1485
    :cond_1
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1486
    .local v6, "chatMessageList":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_8

    .line 1487
    new-instance v5, Lcom/fusepowered/util/ChatMessage;

    invoke-direct {v5}, Lcom/fusepowered/util/ChatMessage;-><init>()V

    .line 1488
    .local v5, "chatMessage":Lcom/fusepowered/util/ChatMessage;
    invoke-interface {v6, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 1489
    .local v17, "messageNode":Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 1490
    .local v3, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1491
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 1492
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/fusepowered/util/ChatMessage;->setId(I)V

    .line 1493
    :cond_2
    const-string v18, "alias"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1494
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1495
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/fusepowered/util/ChatMessage;->setAlias(Ljava/lang/String;)V

    .line 1496
    :cond_3
    const-string v18, "from_user"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1497
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1498
    invoke-virtual {v5, v2}, Lcom/fusepowered/util/ChatMessage;->setFuseId(Ljava/lang/String;)V

    .line 1499
    :cond_4
    const-string v18, "time"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1500
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1501
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/fusepowered/util/ChatMessage;->setDate(I)V

    .line 1502
    :cond_5
    const-string v18, "level"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1503
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 1504
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/fusepowered/util/ChatMessage;->setLevel(I)V

    .line 1506
    :cond_6
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    .line 1507
    .local v16, "messageChild":Lorg/w3c/dom/Node;
    if-eqz v16, :cond_7

    .line 1508
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/fusepowered/util/ChatMessage;->setMessage(Ljava/lang/String;)V

    .line 1511
    :cond_7
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1474
    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "chatMessage":Lcom/fusepowered/util/ChatMessage;
    .end local v16    # "messageChild":Lorg/w3c/dom/Node;
    .end local v17    # "messageNode":Lorg/w3c/dom/Node;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1515
    .end local v2    # "attrValue":Ljava/lang/String;
    .end local v6    # "chatMessageList":Lorg/w3c/dom/NodeList;
    .end local v12    # "item":Lorg/w3c/dom/Node;
    .end local v14    # "j":I
    .end local v15    # "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/fusepowered/util/ResponseValues;->setChatMessages(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    return-void

    .line 1518
    .end local v4    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "i":I
    .end local v13    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v9

    .line 1519
    .local v9, "e":Ljava/lang/Exception;
    throw v9
.end method

.method private static parseMessages(Lorg/w3c/dom/NodeList;Lcom/fusepowered/util/ResponseValues;)V
    .locals 16
    .param p0, "messages"    # Lorg/w3c/dom/NodeList;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;

    .prologue
    .line 1906
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1907
    .local v6, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v4, v14, :cond_e

    .line 1908
    new-instance v5, Lcom/fusepowered/util/Message;

    invoke-direct {v5}, Lcom/fusepowered/util/Message;-><init>()V

    .line 1909
    .local v5, "message":Lcom/fusepowered/util/Message;
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 1910
    .local v7, "messageNode":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1911
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v14, "id"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 1912
    const-string v14, "id"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setId(I)V

    .line 1914
    :cond_0
    const-string v14, "sticky"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 1915
    const-string v14, "sticky"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setSticky(I)V

    .line 1917
    :cond_1
    const-string v14, "upgrade"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1918
    const-string v14, "upgrade"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setIsUpgrade(Z)V

    .line 1920
    :cond_2
    const-string v14, "max_views"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 1921
    const-string v14, "max_views"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setMax_views(I)V

    .line 1926
    :goto_2
    const-string v14, "show_on_view"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 1927
    const-string v14, "show_on_view"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setShowOnView(I)V

    .line 1929
    :cond_3
    const-string v14, "is_url"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 1930
    const-string v14, "is_url"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setIsUrl(I)V

    .line 1935
    :goto_3
    const-string v14, "mandatory"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 1936
    const-string v14, "mandatory"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setMandatory(I)V

    .line 1941
    :goto_4
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setDisplayed(Z)V

    .line 1942
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setClicked(Z)V

    .line 1944
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1945
    .local v8, "messageNodeList":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "h":I
    :goto_5
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v3, v14, :cond_d

    .line 1946
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 1947
    .local v9, "messageProperty":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_4

    .line 1949
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 1950
    .local v10, "messagePropertyName":Ljava/lang/String;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 1951
    .local v11, "nf":Lorg/w3c/dom/Node;
    if-eqz v11, :cond_4

    .line 1954
    const-string v14, "title"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1955
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setTitle(Ljava/lang/String;)V

    .line 1945
    .end local v10    # "messagePropertyName":Ljava/lang/String;
    .end local v11    # "nf":Lorg/w3c/dom/Node;
    :cond_4
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1918
    .end local v3    # "h":I
    .end local v8    # "messageNodeList":Lorg/w3c/dom/NodeList;
    .end local v9    # "messageProperty":Lorg/w3c/dom/Node;
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1924
    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setMax_views(I)V

    goto/16 :goto_2

    .line 1933
    :cond_7
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setIsUrl(I)V

    goto :goto_3

    .line 1939
    :cond_8
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setMandatory(I)V

    goto :goto_4

    .line 1957
    .restart local v3    # "h":I
    .restart local v8    # "messageNodeList":Lorg/w3c/dom/NodeList;
    .restart local v9    # "messageProperty":Lorg/w3c/dom/Node;
    .restart local v10    # "messagePropertyName":Ljava/lang/String;
    .restart local v11    # "nf":Lorg/w3c/dom/Node;
    :cond_9
    const-string v14, "action"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1958
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setAction(Ljava/lang/String;)V

    goto :goto_6

    .line 1960
    :cond_a
    const-string v14, "body"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1961
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setBody(Ljava/lang/String;)V

    goto :goto_6

    .line 1963
    :cond_b
    const-string v14, "action_title"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1964
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setActionTitle(Ljava/lang/String;)V

    goto :goto_6

    .line 1966
    :cond_c
    const-string v14, "cancel_title"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1967
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/fusepowered/util/Message;->setCancelTitle(Ljava/lang/String;)V

    goto :goto_6

    .line 1974
    .end local v9    # "messageProperty":Lorg/w3c/dom/Node;
    .end local v10    # "messagePropertyName":Ljava/lang/String;
    .end local v11    # "nf":Lorg/w3c/dom/Node;
    :cond_d
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1978
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "h":I
    .end local v5    # "message":Lcom/fusepowered/util/Message;
    .end local v7    # "messageNode":Lorg/w3c/dom/Node;
    .end local v8    # "messageNodeList":Lorg/w3c/dom/NodeList;
    :cond_e
    const/4 v13, 0x0

    .line 1979
    .local v13, "temp":Lcom/fusepowered/util/Message;
    const/4 v12, 0x0

    .local v12, "start":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0x1

    .local v2, "end":I
    :goto_7
    if-ge v12, v2, :cond_f

    .line 1981
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "temp":Lcom/fusepowered/util/Message;
    check-cast v13, Lcom/fusepowered/util/Message;

    .line 1982
    .restart local v13    # "temp":Lcom/fusepowered/util/Message;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v12, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1983
    invoke-virtual {v6, v2, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1979
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 1986
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/fusepowered/util/ResponseValues;->setMessages(Ljava/util/ArrayList;)V

    .line 1988
    return-void
.end method

.method private static parseRegisterId(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 12
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1338
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 1339
    .local v6, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1340
    .local v3, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1341
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v10, "account_registered"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1343
    .local v9, "items":Lorg/w3c/dom/NodeList;
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 1344
    .local v0, "account":Lcom/fusepowered/util/Account;
    if-nez v0, :cond_0

    .line 1345
    new-instance v0, Lcom/fusepowered/util/Account;

    .end local v0    # "account":Lcom/fusepowered/util/Account;
    const-string v10, ""

    invoke-direct {v0, v10}, Lcom/fusepowered/util/Account;-><init>(Ljava/lang/String;)V

    .line 1348
    .restart local v0    # "account":Lcom/fusepowered/util/Account;
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_7

    .line 1349
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 1351
    .local v8, "item":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1352
    .local v2, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v10, "account"

    invoke-static {v2, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1353
    .local v1, "attrValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1354
    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Account;->setAccountId(Ljava/lang/String;)V

    .line 1355
    :cond_1
    const-string v10, "fuse_id"

    invoke-static {v2, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-static {v1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1357
    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Account;->setFuseId(Ljava/lang/String;)V

    .line 1358
    :cond_2
    const-string v10, "type"

    invoke-static {v2, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    invoke-static {v1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1360
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/fusepowered/util/AccountType;->getAccountTypeByNumber(I)Lcom/fusepowered/util/AccountType;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/fusepowered/util/Account;->setAccountType(Lcom/fusepowered/util/AccountType;)V

    .line 1361
    :cond_3
    const-string v10, "error"

    invoke-static {v2, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {v1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1363
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/fusepowered/util/Account;->errorCode:I

    .line 1364
    :cond_4
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setAccount(Lcom/fusepowered/util/Account;)V

    .line 1367
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    .line 1368
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/fusepowered/util/ResponseValues;->setAccount(Lcom/fusepowered/util/Account;)V

    .line 1348
    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1369
    :cond_6
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fusepowered/util/Account;->getAlias()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1370
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v10

    sget-object v11, Lcom/fusepowered/fuseapi/FuseAPI;->accountAlias:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/fusepowered/util/Account;->setAlias(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1374
    .end local v0    # "account":Lcom/fusepowered/util/Account;
    .end local v1    # "attrValue":Ljava/lang/String;
    .end local v2    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "i":I
    .end local v8    # "item":Lorg/w3c/dom/Node;
    .end local v9    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v5

    .line 1375
    .local v5, "e":Ljava/lang/Exception;
    throw v5

    .line 1377
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "account":Lcom/fusepowered/util/Account;
    .restart local v3    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "i":I
    .restart local v9    # "items":Lorg/w3c/dom/NodeList;
    :cond_7
    return-void
.end method

.method public static parseResponse(Lcom/fusepowered/util/ActionType;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;Lcom/fusepowered/util/FuseCallback;)Z
    .locals 54
    .param p0, "actionType"    # Lcom/fusepowered/util/ActionType;
    .param p1, "gameDataRequestId"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p4, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 44
    const/16 v44, 0x1

    .line 46
    .local v44, "success":Z
    :try_start_0
    sget-object v49, Lcom/fusepowered/util/XMLParser$5;->$SwitchMap$com$fusepowered$util$ActionType:[I

    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/util/ActionType;->ordinal()I

    move-result v50

    aget v49, v49, v50

    packed-switch v49, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return v44

    .line 48
    :pswitch_0
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseSessionStart(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 49
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v49

    const-string v50, "GCMData"

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v43

    .line 50
    .local v43, "sp":Landroid/content/SharedPreferences;
    const-string v49, "gcmRecord"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 51
    .local v23, "gcm":Ljava/lang/Boolean;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v49

    if-eqz v49, :cond_1

    .line 53
    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 54
    .local v15, "e":Landroid/content/SharedPreferences$Editor;
    const-string v49, "gcmRecord"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->recordGCM()V

    .line 60
    .end local v15    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_1
    new-instance v49, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v50, Lcom/fusepowered/util/XMLParser$1;

    move-object/from16 v0, v50

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/fusepowered/util/XMLParser$1;-><init>(Lcom/fusepowered/util/FuseCallback;)V

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v23    # "gcm":Ljava/lang/Boolean;
    .end local v43    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v15

    .line 329
    .local v15, "e":Ljava/lang/Exception;
    const-string v49, "FuseAPI"

    const-string v50, "Unexpected Exception"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v15}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    sget-object v49, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_START:Lcom/fusepowered/util/ActionType;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2

    .line 332
    sget-object v49, Lcom/fusepowered/FuseError;->SERVER_ERROR:Lcom/fusepowered/FuseError;

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/FuseCallback;->sessionLoginError(Lcom/fusepowered/FuseError;)V

    .line 335
    :cond_2
    sget-object v49, Lcom/fusepowered/util/ActionType;->ACTION_GET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_3

    sget-object v49, Lcom/fusepowered/util/ActionType;->ACTION_SET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4

    .line 336
    :cond_3
    if-eqz p1, :cond_10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .line 337
    .local v40, "reqId":I
    :goto_1
    sget-object v49, Lcom/fusepowered/FuseError;->SERVER_ERROR:Lcom/fusepowered/FuseError;

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/util/FuseCallback;->setFuseGameDataError(Lcom/fusepowered/FuseError;I)V

    .line 340
    .end local v40    # "reqId":I
    :cond_4
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 76
    .end local v15    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseSessionResume(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 78
    invoke-virtual/range {p4 .. p4}, Lcom/fusepowered/util/FuseCallback;->gameConfigurationReceived()V

    .line 79
    new-instance v49, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v50, Lcom/fusepowered/util/XMLParser$2;

    invoke-direct/range {v50 .. v50}, Lcom/fusepowered/util/XMLParser$2;-><init>()V

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 87
    :pswitch_2
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseGetAd(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)Z

    move-result v13

    .line 89
    .local v13, "displayAdRequired":Z
    new-instance v49, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v50, Lcom/fusepowered/util/XMLParser$3;

    invoke-direct/range {v50 .. v50}, Lcom/fusepowered/util/XMLParser$3;-><init>()V

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 97
    .end local v13    # "displayAdRequired":Z
    :pswitch_3
    const-string v49, "utc_time"

    const-string v50, "xml"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/XMLParser;->readTagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setTimestamp(Ljava/lang/String;)V

    .line 98
    new-instance v49, Ljava/util/Date;

    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getTimestamp()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v50

    const-wide/16 v52, 0x3e8

    mul-long v50, v50, v52

    invoke-direct/range {v49 .. v51}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/FuseCallback;->timeUpdated(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 102
    :pswitch_4
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getGameKeyValuePairs()Lcom/fusepowered/util/GameKeyValuePairs;

    move-result-object v22

    .line 103
    .local v22, "gameData":Lcom/fusepowered/util/GameKeyValuePairs;
    if-nez v22, :cond_0

    .line 107
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseGetGamedata(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getGameKeyValuePairs()Lcom/fusepowered/util/GameKeyValuePairs;

    move-result-object v22

    .line 112
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "accountId":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lcom/fusepowered/util/FuseCallback;->setGameData(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)V

    goto/16 :goto_0

    .line 122
    .end local v7    # "accountId":Ljava/lang/String;
    .end local v22    # "gameData":Lcom/fusepowered/util/GameKeyValuePairs;
    :pswitch_5
    if-eqz p1, :cond_5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 123
    .local v42, "requestId":I
    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/XMLParser;->parseSetGamedata(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;I)Z

    move-result v44

    .line 124
    goto/16 :goto_0

    .line 122
    .end local v42    # "requestId":I
    :cond_5
    const/16 v42, 0x0

    goto :goto_2

    .line 126
    :pswitch_6
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseRegisterId(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v49

    move-object/from16 v0, v49

    iget v0, v0, Lcom/fusepowered/util/Account;->errorCode:I

    move/from16 v49, v0

    if-eqz v49, :cond_6

    .line 129
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v50

    move-object/from16 v0, v50

    iget v0, v0, Lcom/fusepowered/util/Account;->errorCode:I

    move/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v50

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/util/FuseCallback;->accountLoginError(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    .line 131
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v49

    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p4

    move/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/util/FuseCallback;->accountLoginComplete(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :pswitch_7
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseMessageList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 147
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v18

    .line 148
    .local v18, "errorString":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_7

    .line 149
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 150
    .local v17, "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v11

    .line 151
    .local v11, "chatError":Lcom/fusepowered/FuseError;
    sget-object v49, Lcom/fusepowered/FuseError;->NONE:Lcom/fusepowered/FuseError;

    move-object/from16 v0, v49

    if-eq v11, v0, :cond_7

    .line 152
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/fusepowered/util/FuseCallback;->chatListError(Lcom/fusepowered/FuseError;)V

    .line 153
    const/16 v44, 0x0

    .line 154
    goto/16 :goto_0

    .line 157
    .end local v11    # "chatError":Lcom/fusepowered/FuseError;
    .end local v17    # "errorCode":I
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v21

    .line 158
    .local v21, "fuseId":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->getChatMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 159
    .local v12, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/fusepowered/util/FuseCallback;->chatListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v12    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    .end local v18    # "errorString":Ljava/lang/String;
    .end local v21    # "fuseId":Ljava/lang/String;
    :pswitch_8
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseSignPost(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    goto/16 :goto_0

    .line 165
    :pswitch_9
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseGetMail(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v18

    .line 167
    .restart local v18    # "errorString":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_8

    .line 168
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 169
    .restart local v17    # "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v24

    .line 170
    .local v24, "mailError":Lcom/fusepowered/FuseError;
    sget-object v49, Lcom/fusepowered/FuseError;->NONE:Lcom/fusepowered/FuseError;

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_8

    .line 171
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/FuseCallback;->mailListError(Lcom/fusepowered/FuseError;)V

    .line 172
    const/16 v44, 0x0

    .line 173
    goto/16 :goto_0

    .line 176
    .end local v17    # "errorCode":I
    .end local v24    # "mailError":Lcom/fusepowered/FuseError;
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v21

    .line 177
    .restart local v21    # "fuseId":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->getMailList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 178
    .local v26, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/util/FuseCallback;->mailListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v18    # "errorString":Ljava/lang/String;
    .end local v21    # "fuseId":Ljava/lang/String;
    .end local v26    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    :pswitch_a
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseGetUserTransaction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v18

    .line 183
    .restart local v18    # "errorString":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_9

    .line 184
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 185
    .restart local v17    # "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v9

    .line 186
    .local v9, "attackError":Lcom/fusepowered/FuseError;
    sget-object v49, Lcom/fusepowered/FuseError;->NONE:Lcom/fusepowered/FuseError;

    move-object/from16 v0, v49

    if-eq v9, v0, :cond_9

    .line 187
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/fusepowered/util/FuseCallback;->attackRobberyLogError(Lcom/fusepowered/FuseError;)V

    .line 188
    const/16 v44, 0x0

    .line 189
    goto/16 :goto_0

    .line 192
    .end local v9    # "attackError":Lcom/fusepowered/FuseError;
    .end local v17    # "errorCode":I
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getUserTransactionLogs()Ljava/util/ArrayList;

    move-result-object v49

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/FuseCallback;->attackRobberyLogReceived(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 195
    .end local v18    # "errorString":Ljava/lang/String;
    :pswitch_b
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseGetFriendsList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v18

    .line 197
    .restart local v18    # "errorString":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_a

    .line 198
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 199
    .restart local v17    # "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v20

    .line 200
    .local v20, "friendsListError":Lcom/fusepowered/FuseError;
    sget-object v49, Lcom/fusepowered/FuseError;->NONE:Lcom/fusepowered/FuseError;

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_a

    .line 201
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/FuseCallback;->friendsListError(Lcom/fusepowered/FuseError;)V

    .line 202
    const/16 v44, 0x0

    .line 203
    goto/16 :goto_0

    .line 206
    .end local v17    # "errorCode":I
    .end local v20    # "friendsListError":Lcom/fusepowered/FuseError;
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getFriendsList()Ljava/util/ArrayList;

    move-result-object v49

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/FuseCallback;->friendsListUpdated(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 209
    .end local v18    # "errorString":Ljava/lang/String;
    :pswitch_c
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseGetEnemiesList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v18

    .line 211
    .restart local v18    # "errorString":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_b

    .line 212
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 213
    .restart local v17    # "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v16

    .line 214
    .local v16, "enemiesListError":Lcom/fusepowered/FuseError;
    sget-object v49, Lcom/fusepowered/FuseError;->NONE:Lcom/fusepowered/FuseError;

    move-object/from16 v0, v16

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_b

    .line 215
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/FuseCallback;->enemiesListError(Lcom/fusepowered/FuseError;)V

    .line 216
    const/16 v44, 0x0

    .line 217
    goto/16 :goto_0

    .line 220
    .end local v16    # "enemiesListError":Lcom/fusepowered/FuseError;
    .end local v17    # "errorCode":I
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getEnemiesList()Ljava/util/ArrayList;

    move-result-object v49

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/FuseCallback;->enemiesListResult(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 223
    .end local v18    # "errorString":Ljava/lang/String;
    :pswitch_d
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 225
    .restart local v17    # "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v8

    .line 226
    .local v8, "addFriendError":Lcom/fusepowered/FuseError;
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v8}, Lcom/fusepowered/util/FuseCallback;->friendAdded(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    goto/16 :goto_0

    .line 229
    .end local v8    # "addFriendError":Lcom/fusepowered/FuseError;
    .end local v17    # "errorCode":I
    :pswitch_e
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 231
    .restart local v17    # "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v39

    .line 232
    .local v39, "removeFriendError":Lcom/fusepowered/FuseError;
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/util/FuseCallback;->friendRemoved(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    goto/16 :goto_0

    .line 235
    .end local v17    # "errorCode":I
    .end local v39    # "removeFriendError":Lcom/fusepowered/FuseError;
    :pswitch_f
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 237
    .restart local v17    # "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v6

    .line 238
    .local v6, "acceptFriendError":Lcom/fusepowered/FuseError;
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v6}, Lcom/fusepowered/util/FuseCallback;->friendAccepted(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    goto/16 :goto_0

    .line 241
    .end local v6    # "acceptFriendError":Lcom/fusepowered/FuseError;
    .end local v17    # "errorCode":I
    :pswitch_10
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 243
    .restart local v17    # "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v38

    .line 244
    .local v38, "rejectFriendError":Lcom/fusepowered/FuseError;
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/util/FuseCallback;->friendRejected(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    goto/16 :goto_0

    .line 247
    .end local v17    # "errorCode":I
    .end local v38    # "rejectFriendError":Lcom/fusepowered/FuseError;
    :pswitch_11
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 249
    .restart local v17    # "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v27

    .line 250
    .local v27, "migrateFriendsError":Lcom/fusepowered/FuseError;
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/util/FuseCallback;->friendsMigrated(Ljava/lang/String;Lcom/fusepowered/FuseError;)V

    goto/16 :goto_0

    .line 253
    .end local v17    # "errorCode":I
    .end local v27    # "migrateFriendsError":Lcom/fusepowered/FuseError;
    :pswitch_12
    invoke-static/range {p2 .. p3}, Lcom/fusepowered/util/XMLParser;->parseSendMail(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)I

    move-result v25

    .line 254
    .local v25, "mailId":I
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getReqId()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 255
    .local v41, "requestID":I
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 256
    .restart local v17    # "errorCode":I
    invoke-static/range {v17 .. v17}, Lcom/fusepowered/FuseError;->getErrorByCode(I)Lcom/fusepowered/FuseError;

    move-result-object v24

    .line 257
    .restart local v24    # "mailError":Lcom/fusepowered/FuseError;
    sget-object v49, Lcom/fusepowered/FuseError;->NONE:Lcom/fusepowered/FuseError;

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_c

    .line 258
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/util/FuseCallback;->mailError(Lcom/fusepowered/FuseError;I)V

    .line 259
    const/16 v44, 0x0

    .line 260
    goto/16 :goto_0

    .line 262
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v49

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/util/FuseCallback;->mailAcknowledged(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 265
    .end local v17    # "errorCode":I
    .end local v24    # "mailError":Lcom/fusepowered/FuseError;
    .end local v25    # "mailId":I
    .end local v41    # "requestID":I
    :pswitch_13
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v19

    .line 266
    .local v19, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v19 .. v19}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v10

    .line 267
    .local v10, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v49, Ljava/io/ByteArrayInputStream;

    const-string v50, "UTF-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v49

    invoke-virtual {v10, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v14

    .line 268
    .local v14, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v14}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 269
    .local v31, "nl":Lorg/w3c/dom/NodeList;
    const/16 v49, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    .line 270
    .local v32, "nl2":Lorg/w3c/dom/Node;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v33

    .line 271
    .local v33, "nl3":Lorg/w3c/dom/NodeList;
    const/16 v49, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    .line 272
    .local v34, "nl4":Lorg/w3c/dom/Node;
    const/16 v48, 0x0

    .line 273
    .local v48, "validity":I
    const/16 v45, 0x0

    .line 274
    .local v45, "transactionID":Ljava/lang/String;
    const/16 v37, 0x0

    .line 275
    .local v37, "originalOrderID":Ljava/lang/String;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v35

    .line 278
    .local v35, "nnm":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v35, :cond_f

    .line 281
    const-string v49, "verified"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v28

    .line 282
    .local v28, "n1":Lorg/w3c/dom/Node;
    if-eqz v28, :cond_d

    .line 284
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 287
    :cond_d
    const-string v49, "tx_id"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v29

    .line 288
    .local v29, "n2":Lorg/w3c/dom/Node;
    if-eqz v29, :cond_e

    .line 290
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v45

    .line 293
    :cond_e
    const-string v49, "o_tx_id"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    .line 294
    .local v30, "n3":Lorg/w3c/dom/Node;
    if-eqz v30, :cond_f

    .line 296
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    .line 299
    .end local v28    # "n1":Lorg/w3c/dom/Node;
    .end local v29    # "n2":Lorg/w3c/dom/Node;
    .end local v30    # "n3":Lorg/w3c/dom/Node;
    :cond_f
    move/from16 v47, v48

    .line 300
    .local v47, "v":I
    move-object/from16 v46, v45

    .line 301
    .local v46, "tx":Ljava/lang/String;
    move-object/from16 v36, v37

    .line 302
    .local v36, "o":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 304
    sget-object v49, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    new-instance v50, Lcom/fusepowered/util/XMLParser$4;

    move-object/from16 v0, v50

    move-object/from16 v1, p4

    move/from16 v2, v47

    move-object/from16 v3, v46

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fusepowered/util/XMLParser$4;-><init>(Lcom/fusepowered/util/FuseCallback;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v49 .. v50}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 336
    .end local v10    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v19    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v31    # "nl":Lorg/w3c/dom/NodeList;
    .end local v32    # "nl2":Lorg/w3c/dom/Node;
    .end local v33    # "nl3":Lorg/w3c/dom/NodeList;
    .end local v34    # "nl4":Lorg/w3c/dom/Node;
    .end local v35    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v36    # "o":Ljava/lang/String;
    .end local v37    # "originalOrderID":Ljava/lang/String;
    .end local v45    # "transactionID":Ljava/lang/String;
    .end local v46    # "tx":Ljava/lang/String;
    .end local v47    # "v":I
    .end local v48    # "validity":I
    .restart local v15    # "e":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p4

    iget v0, v0, Lcom/fusepowered/util/FuseCallback;->requestId:I

    move/from16 v40, v0

    goto/16 :goto_1

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private static parseRewardRedemption(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)Lcom/fusepowered/util/Incentive;
    .locals 14
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1381
    new-instance v9, Lcom/fusepowered/util/Incentive;

    invoke-direct {v9}, Lcom/fusepowered/util/Incentive;-><init>()V

    .line 1383
    .local v9, "incentive":Lcom/fusepowered/util/Incentive;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 1384
    .local v5, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 1385
    .local v1, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v12, Ljava/io/ByteArrayInputStream;

    const-string v13, "UTF-8"

    invoke-virtual {p0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 1386
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v12, "incentive"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 1388
    .local v11, "items":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 1389
    invoke-interface {v11, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 1390
    .local v10, "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1391
    .local v2, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v12, "incentive_id"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1392
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1393
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setIncentiveId(I)V

    .line 1394
    :cond_0
    const-string v12, "amount"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1396
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setAmount(I)V

    .line 1397
    :cond_1
    const-string v12, "reward_item_id"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1398
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1399
    invoke-virtual {v9, v0}, Lcom/fusepowered/util/Incentive;->setRewardItemId(Ljava/lang/String;)V

    .line 1400
    :cond_2
    const-string v12, "reward_item_name"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1401
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1402
    invoke-virtual {v9, v0}, Lcom/fusepowered/util/Incentive;->setRewardItemName(Ljava/lang/String;)V

    .line 1403
    :cond_3
    const-string v12, "claim_confirmed"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1405
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setClaimConfirmed(Z)V

    .line 1388
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1405
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 1408
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v2    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "incentiveProperty":Lorg/w3c/dom/Node;
    :cond_6
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getIncentives()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/util/Incentive;

    .line 1409
    .local v8, "inc":Lcom/fusepowered/util/Incentive;
    invoke-virtual {v8}, Lcom/fusepowered/util/Incentive;->getIncentiveId()I

    move-result v12

    invoke-virtual {v9}, Lcom/fusepowered/util/Incentive;->getIncentiveId()I

    move-result v13

    if-ne v12, v13, :cond_7

    .line 1410
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getIncentives()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1417
    .end local v1    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "inc":Lcom/fusepowered/util/Incentive;
    .end local v11    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v4

    .line 1418
    .local v4, "e":Ljava/lang/Exception;
    throw v4

    .line 1414
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "items":Lorg/w3c/dom/NodeList;
    :cond_8
    :try_start_1
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getIncentives()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1421
    return-object v9
.end method

.method private static parseRewardRedemptionConfirmation(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 14
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1426
    new-instance v9, Lcom/fusepowered/util/Incentive;

    invoke-direct {v9}, Lcom/fusepowered/util/Incentive;-><init>()V

    .line 1428
    .local v9, "incentive":Lcom/fusepowered/util/Incentive;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 1429
    .local v5, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 1430
    .local v1, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v12, Ljava/io/ByteArrayInputStream;

    const-string v13, "UTF-8"

    invoke-virtual {p0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 1431
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v12, "incentive"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 1433
    .local v11, "items":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 1434
    invoke-interface {v11, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 1435
    .local v10, "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1436
    .local v2, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v12, "incentive_id"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1438
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setIncentiveId(I)V

    .line 1439
    :cond_0
    const-string v12, "amount"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1441
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setAmount(I)V

    .line 1442
    :cond_1
    const-string v12, "reward_item_id"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1443
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1444
    invoke-virtual {v9, v0}, Lcom/fusepowered/util/Incentive;->setRewardItemId(Ljava/lang/String;)V

    .line 1445
    :cond_2
    const-string v12, "reward_item_name"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1447
    invoke-virtual {v9, v0}, Lcom/fusepowered/util/Incentive;->setRewardItemName(Ljava/lang/String;)V

    .line 1448
    :cond_3
    const-string v12, "claim_confirmed"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1449
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1450
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setClaimConfirmed(Z)V

    .line 1433
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1450
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 1453
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v2    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "incentiveProperty":Lorg/w3c/dom/Node;
    :cond_6
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getIncentives()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/util/Incentive;

    .line 1454
    .local v8, "inc":Lcom/fusepowered/util/Incentive;
    invoke-virtual {v8}, Lcom/fusepowered/util/Incentive;->getIncentiveId()I

    move-result v12

    invoke-virtual {v9}, Lcom/fusepowered/util/Incentive;->getIncentiveId()I

    move-result v13

    if-ne v12, v13, :cond_7

    .line 1455
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getIncentives()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1459
    .end local v1    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "inc":Lcom/fusepowered/util/Incentive;
    .end local v11    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v4

    .line 1460
    .local v4, "e":Ljava/lang/Exception;
    throw v4

    .line 1463
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "items":Lorg/w3c/dom/NodeList;
    :cond_8
    return-void
.end method

.method private static parseSendMail(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)I
    .locals 12
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1858
    const/4 v9, 0x0

    .line 1861
    .local v9, "mailId":I
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 1862
    .local v5, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 1863
    .local v2, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 1864
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v10, "send_mail"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1866
    .local v8, "items":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v6, v10, :cond_4

    .line 1867
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 1868
    .local v7, "item":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1870
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v10, "error"

    invoke-static {v1, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1871
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1872
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1874
    :cond_0
    const-string v10, "fuse_id"

    invoke-static {v1, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1875
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1876
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setFuseId(Ljava/lang/String;)V

    .line 1878
    :cond_1
    const-string v10, "message_id"

    invoke-static {v1, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1879
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1880
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1882
    :cond_2
    const-string v10, "reqID"

    invoke-static {v1, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1883
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1884
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setReqId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1887
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "i":I
    .end local v7    # "item":Lorg/w3c/dom/Node;
    .end local v8    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v4

    .line 1888
    .local v4, "e":Ljava/lang/Exception;
    throw v4

    .line 1890
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "i":I
    .restart local v8    # "items":Lorg/w3c/dom/NodeList;
    :cond_4
    return v9
.end method

.method private static parseSessionResume(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 39
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 727
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v16

    .line 728
    .local v16, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    .line 729
    .local v9, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v37, Ljava/io/ByteArrayInputStream;

    const-string v38, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v14

    .line 730
    .local v14, "doc":Lorg/w3c/dom/Document;
    const-string v37, "utc_time"

    const-string v38, "xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/XMLParser;->readTagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setTimestamp(Ljava/lang/String;)V

    .line 731
    const-string v37, "xml"

    move-object/from16 v0, v37

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 732
    .local v30, "items":Lorg/w3c/dom/NodeList;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    move/from16 v0, v23

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    .line 733
    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    .line 734
    .local v29, "item":Lorg/w3c/dom/Node;
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v35

    .line 735
    .local v35, "properties":Lorg/w3c/dom/NodeList;
    const/16 v31, 0x0

    .local v31, "j":I
    :goto_1
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    move/from16 v0, v31

    move/from16 v1, v37

    if-ge v0, v1, :cond_1c

    .line 736
    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    .line 737
    .local v36, "property":Lorg/w3c/dom/Node;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v34

    .line 738
    .local v34, "name":Ljava/lang/String;
    const-string v37, "utc_time"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_1

    .line 739
    const-string v37, "utc_time"

    const-string v38, "xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/XMLParser;->readTagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setTimestamp(Ljava/lang/String;)V

    .line 735
    :cond_0
    :goto_2
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 741
    :cond_1
    const-string v37, "config"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_1b

    .line 743
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v3, "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v17, "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 746
    .local v12, "configs":Lorg/w3c/dom/NodeList;
    const/16 v32, 0x0

    .local v32, "k":I
    :goto_3
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    move/from16 v0, v32

    move/from16 v1, v37

    if-ge v0, v1, :cond_1a

    .line 748
    move/from16 v0, v32

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 749
    .local v10, "configProperty":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .line 750
    .local v11, "configPropertyName":Ljava/lang/String;
    const-string v37, "ads"

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_b

    .line 751
    new-instance v4, Lcom/fusepowered/util/AdProvider;

    invoke-direct {v4}, Lcom/fusepowered/util/AdProvider;-><init>()V

    .line 753
    .local v4, "ap":Lcom/fusepowered/util/AdProvider;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 754
    .local v5, "apNodeList":Lorg/w3c/dom/NodeList;
    const/16 v22, 0x0

    .local v22, "h":I
    :goto_4
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    move/from16 v0, v22

    move/from16 v1, v37

    if-ge v0, v1, :cond_9

    .line 755
    move/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 756
    .local v6, "apProperty":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 757
    .local v8, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v37, "provider_id"

    move-object/from16 v0, v37

    invoke-static {v8, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 758
    .local v7, "attrValue":Ljava/lang/String;
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_2

    .line 759
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/fusepowered/util/AdProvider;->setProvider_id(I)V

    .line 760
    :cond_2
    const-string v37, "test"

    move-object/from16 v0, v37

    invoke-static {v8, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 761
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_3

    .line 762
    const-string v37, "test"

    move-object/from16 v0, v37

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    const-string v38, "0"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_8

    const/16 v37, 0x1

    :goto_5
    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/fusepowered/util/AdProvider;->setTest(Z)V

    .line 763
    :cond_3
    const-string v37, "value"

    move-object/from16 v0, v37

    invoke-static {v8, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 764
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_4

    .line 765
    const-string v37, "value"

    move-object/from16 v0, v37

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/fusepowered/util/AdProvider;->setValue(I)V

    .line 766
    :cond_4
    const-string v37, "interstitial"

    move-object/from16 v0, v37

    invoke-static {v8, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 767
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_5

    .line 768
    const-string v37, "interstitial"

    move-object/from16 v0, v37

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/fusepowered/util/AdProvider;->setInterstitial(I)V

    .line 769
    :cond_5
    const-string v37, "keywords"

    move-object/from16 v0, v37

    invoke-static {v8, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 770
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_6

    .line 771
    const-string v37, "keywords"

    move-object/from16 v0, v37

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/fusepowered/util/AdProvider;->setKeywords(Ljava/lang/String;)V

    .line 772
    :cond_6
    const-string v37, "ids"

    move-object/from16 v0, v37

    invoke-static {v8, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 773
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_7

    .line 774
    const-string v37, "ids"

    move-object/from16 v0, v37

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/fusepowered/util/AdProvider;->setIds(Ljava/lang/String;)V

    .line 754
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 762
    :cond_8
    const/16 v37, 0x0

    goto/16 :goto_5

    .line 777
    .end local v6    # "apProperty":Lorg/w3c/dom/Node;
    .end local v7    # "attrValue":Ljava/lang/String;
    .end local v8    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .end local v4    # "ap":Lcom/fusepowered/util/AdProvider;
    .end local v5    # "apNodeList":Lorg/w3c/dom/NodeList;
    .end local v22    # "h":I
    :cond_a
    :goto_6
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_3

    .line 779
    :cond_b
    const-string v37, "game_config"

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_12

    .line 780
    new-instance v18, Lcom/fusepowered/util/GameConfig;

    invoke-direct/range {v18 .. v18}, Lcom/fusepowered/util/GameConfig;-><init>()V

    .line 781
    .local v18, "gc":Lcom/fusepowered/util/GameConfig;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 782
    .restart local v8    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v37, "id"

    move-object/from16 v0, v37

    invoke-static {v8, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 783
    .restart local v7    # "attrValue":Ljava/lang/String;
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_c

    .line 784
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/GameConfig;->setId(I)V

    .line 786
    :cond_c
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 787
    .local v19, "gcNodeList":Lorg/w3c/dom/NodeList;
    const/16 v22, 0x0

    .restart local v22    # "h":I
    :goto_7
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    move/from16 v0, v22

    move/from16 v1, v37

    if-ge v0, v1, :cond_11

    .line 788
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 789
    .local v20, "gcProperty":Lorg/w3c/dom/Node;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    .line 790
    .local v21, "gcPropertyName":Ljava/lang/String;
    const-string v37, "key"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 791
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    if-eqz v37, :cond_e

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_e

    .line 792
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/GameConfig;->setKey(Ljava/lang/String;)V

    .line 787
    :cond_d
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 794
    :cond_e
    const-string v37, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/GameConfig;->setKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 851
    .end local v3    # "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    .end local v7    # "attrValue":Ljava/lang/String;
    .end local v8    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "configProperty":Lorg/w3c/dom/Node;
    .end local v11    # "configPropertyName":Ljava/lang/String;
    .end local v12    # "configs":Lorg/w3c/dom/NodeList;
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v17    # "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    .end local v18    # "gc":Lcom/fusepowered/util/GameConfig;
    .end local v19    # "gcNodeList":Lorg/w3c/dom/NodeList;
    .end local v20    # "gcProperty":Lorg/w3c/dom/Node;
    .end local v21    # "gcPropertyName":Ljava/lang/String;
    .end local v22    # "h":I
    .end local v23    # "i":I
    .end local v29    # "item":Lorg/w3c/dom/Node;
    .end local v30    # "items":Lorg/w3c/dom/NodeList;
    .end local v31    # "j":I
    .end local v32    # "k":I
    .end local v34    # "name":Ljava/lang/String;
    .end local v35    # "properties":Lorg/w3c/dom/NodeList;
    .end local v36    # "property":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v15

    .line 852
    .local v15, "e":Ljava/lang/Exception;
    throw v15

    .line 796
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v3    # "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    .restart local v7    # "attrValue":Ljava/lang/String;
    .restart local v8    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "configProperty":Lorg/w3c/dom/Node;
    .restart local v11    # "configPropertyName":Ljava/lang/String;
    .restart local v12    # "configs":Lorg/w3c/dom/NodeList;
    .restart local v14    # "doc":Lorg/w3c/dom/Document;
    .restart local v16    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v17    # "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    .restart local v18    # "gc":Lcom/fusepowered/util/GameConfig;
    .restart local v19    # "gcNodeList":Lorg/w3c/dom/NodeList;
    .restart local v20    # "gcProperty":Lorg/w3c/dom/Node;
    .restart local v21    # "gcPropertyName":Ljava/lang/String;
    .restart local v22    # "h":I
    .restart local v23    # "i":I
    .restart local v29    # "item":Lorg/w3c/dom/Node;
    .restart local v30    # "items":Lorg/w3c/dom/NodeList;
    .restart local v31    # "j":I
    .restart local v32    # "k":I
    .restart local v34    # "name":Ljava/lang/String;
    .restart local v35    # "properties":Lorg/w3c/dom/NodeList;
    .restart local v36    # "property":Lorg/w3c/dom/Node;
    :cond_f
    :try_start_1
    const-string v37, "value"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 797
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    if-eqz v37, :cond_10

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_10

    .line 798
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/GameConfig;->setValue(Ljava/lang/String;)V

    goto :goto_8

    .line 800
    :cond_10
    const-string v37, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/GameConfig;->setValue(Ljava/lang/String;)V

    goto :goto_8

    .line 803
    .end local v20    # "gcProperty":Lorg/w3c/dom/Node;
    .end local v21    # "gcPropertyName":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 805
    .end local v7    # "attrValue":Ljava/lang/String;
    .end local v8    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v18    # "gc":Lcom/fusepowered/util/GameConfig;
    .end local v19    # "gcNodeList":Lorg/w3c/dom/NodeList;
    .end local v22    # "h":I
    :cond_12
    const-string v37, "incentives"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 807
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 809
    .local v25, "incentiveNodeList":Lorg/w3c/dom/NodeList;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v28, "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    const/16 v22, 0x0

    .restart local v22    # "h":I
    :goto_9
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    move/from16 v0, v22

    move/from16 v1, v37

    if-ge v0, v1, :cond_19

    .line 812
    new-instance v24, Lcom/fusepowered/util/Incentive;

    invoke-direct/range {v24 .. v24}, Lcom/fusepowered/util/Incentive;-><init>()V

    .line 813
    .local v24, "incentive":Lcom/fusepowered/util/Incentive;
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    .line 814
    .local v26, "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v27

    .line 815
    .local v27, "incentivePropertyName":Ljava/lang/String;
    const-string v37, "incentive"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_17

    .line 816
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    .line 817
    .local v13, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v37, "incentive_id"

    move-object/from16 v0, v37

    invoke-static {v13, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 818
    .restart local v7    # "attrValue":Ljava/lang/String;
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_13

    .line 819
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Incentive;->setIncentiveId(I)V

    .line 820
    :cond_13
    const-string v37, "amount"

    move-object/from16 v0, v37

    invoke-static {v13, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 821
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_14

    .line 822
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Incentive;->setAmount(I)V

    .line 823
    :cond_14
    const-string v37, "reward_item_id"

    move-object/from16 v0, v37

    invoke-static {v13, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 824
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_15

    .line 825
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/fusepowered/util/Incentive;->setRewardItemId(Ljava/lang/String;)V

    .line 826
    :cond_15
    const-string v37, "reward_item_name"

    move-object/from16 v0, v37

    invoke-static {v13, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 827
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_16

    .line 828
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/fusepowered/util/Incentive;->setRewardItemName(Ljava/lang/String;)V

    .line 829
    :cond_16
    const-string v37, "claim_confirmed"

    move-object/from16 v0, v37

    invoke-static {v13, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 830
    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_17

    .line 831
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    if-eqz v37, :cond_18

    const/16 v37, 0x1

    :goto_a
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Incentive;->setClaimConfirmed(Z)V

    .line 833
    .end local v7    # "attrValue":Ljava/lang/String;
    .end local v13    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_17
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_9

    .line 831
    .restart local v7    # "attrValue":Ljava/lang/String;
    .restart local v13    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_18
    const/16 v37, 0x0

    goto :goto_a

    .line 836
    .end local v7    # "attrValue":Ljava/lang/String;
    .end local v13    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v24    # "incentive":Lcom/fusepowered/util/Incentive;
    .end local v26    # "incentiveProperty":Lorg/w3c/dom/Node;
    .end local v27    # "incentivePropertyName":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setIncentives(Ljava/util/ArrayList;)V

    goto/16 :goto_6

    .line 840
    .end local v10    # "configProperty":Lorg/w3c/dom/Node;
    .end local v11    # "configPropertyName":Ljava/lang/String;
    .end local v22    # "h":I
    .end local v25    # "incentiveNodeList":Lorg/w3c/dom/NodeList;
    .end local v28    # "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    :cond_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/fusepowered/util/ResponseValues;->setAds(Ljava/util/ArrayList;)V

    .line 841
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setGameConfigs(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 843
    .end local v3    # "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    .end local v12    # "configs":Lorg/w3c/dom/NodeList;
    .end local v17    # "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    .end local v32    # "k":I
    :cond_1b
    const-string v37, "messages"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 844
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v33

    .line 845
    .local v33, "messages":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/fusepowered/util/XMLParser;->parseMessages(Lorg/w3c/dom/NodeList;Lcom/fusepowered/util/ResponseValues;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 732
    .end local v33    # "messages":Lorg/w3c/dom/NodeList;
    .end local v34    # "name":Ljava/lang/String;
    .end local v36    # "property":Lorg/w3c/dom/Node;
    :cond_1c
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 854
    .end local v29    # "item":Lorg/w3c/dom/Node;
    .end local v31    # "j":I
    .end local v35    # "properties":Lorg/w3c/dom/NodeList;
    :cond_1d
    return-void
.end method

.method private static parseSessionStart(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 16
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 381
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 382
    .local v7, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 383
    .local v4, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v14, Ljava/io/ByteArrayInputStream;

    const-string v15, "UTF-8"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 385
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v14, "bootstrap"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 386
    .local v8, "items":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/fusepowered/util/XMLParser;->parseSessionStart_Bootstrap(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 388
    const-string v14, "AD_REQUEST"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 389
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/fusepowered/util/XMLParser;->parseAdContent(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 391
    const-string v14, "p"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 392
    .local v10, "providerInfoNodes":Lorg/w3c/dom/NodeList;
    invoke-static {v10}, Lcom/fusepowered/api/XMLParser;->parseAdProviderConfig(Lorg/w3c/dom/NodeList;)[Lcom/fusepowered/api/model/AdProviderConfig;

    move-result-object v3

    .line 393
    .local v3, "adProviderConfigs":[Lcom/fusepowered/api/model/AdProviderConfig;
    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/fusepowered/util/ResponseValues;->adProviderConfigs:[Lcom/fusepowered/api/model/AdProviderConfig;

    .line 395
    const-string v14, "ad"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 396
    .local v2, "adNodes":Lorg/w3c/dom/NodeList;
    invoke-static {v2}, Lcom/fusepowered/api/XMLParser;->parseAdConfigs(Lorg/w3c/dom/NodeList;)[Lcom/fusepowered/api/model/AdConfig;

    move-result-object v1

    .line 397
    .local v1, "adConfigs":[Lcom/fusepowered/api/model/AdConfig;
    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/fusepowered/util/ResponseValues;->adConfigs:[Lcom/fusepowered/api/model/AdConfig;

    .line 399
    invoke-static {v5}, Lcom/fusepowered/api/XMLParser;->parseWelcomeMessage(Lorg/w3c/dom/Document;)Lcom/fusepowered/api/WelcomeMessage;

    move-result-object v12

    .line 400
    .local v12, "welcomeMessage":Lcom/fusepowered/api/WelcomeMessage;
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/fusepowered/util/ResponseValues;->welcomeMessage:Lcom/fusepowered/api/WelcomeMessage;

    .line 402
    const-string v14, "zone_config"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 403
    .local v13, "zone_configs":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/fusepowered/util/XMLParser;->parseAdZones(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 405
    const-string v14, "rewarded"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 406
    .local v11, "rewards":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/fusepowered/api/XMLParser;->parseZoneRewards(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 408
    const-string v14, "offers"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 409
    .local v9, "offers":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/fusepowered/api/XMLParser;->parseZoneOffers(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 411
    invoke-static/range {p1 .. p1}, Lcom/fusepowered/util/XMLParser;->applyRewardsAndOffersToAdZones(Lcom/fusepowered/util/ResponseValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    return-void

    .line 414
    .end local v1    # "adConfigs":[Lcom/fusepowered/api/model/AdConfig;
    .end local v2    # "adNodes":Lorg/w3c/dom/NodeList;
    .end local v3    # "adProviderConfigs":[Lcom/fusepowered/api/model/AdProviderConfig;
    .end local v4    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "items":Lorg/w3c/dom/NodeList;
    .end local v9    # "offers":Lorg/w3c/dom/NodeList;
    .end local v10    # "providerInfoNodes":Lorg/w3c/dom/NodeList;
    .end local v11    # "rewards":Lorg/w3c/dom/NodeList;
    .end local v12    # "welcomeMessage":Lcom/fusepowered/api/WelcomeMessage;
    .end local v13    # "zone_configs":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v6

    .line 415
    .local v6, "e":Ljava/lang/Exception;
    throw v6
.end method

.method private static parseSessionStart_Bootstrap(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V
    .locals 44
    .param p0, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p1, "items"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 455
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v41

    move/from16 v0, v25

    move/from16 v1, v41

    if-ge v0, v1, :cond_49

    .line 456
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    .line 458
    .local v31, "item":Lorg/w3c/dom/Node;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 459
    .local v36, "properties":Lorg/w3c/dom/NodeList;
    const/16 v32, 0x0

    .local v32, "j":I
    :goto_1
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v41

    move/from16 v0, v32

    move/from16 v1, v41

    if-ge v0, v1, :cond_48

    .line 460
    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v37

    .line 461
    .local v37, "property":Lorg/w3c/dom/Node;
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v35

    .line 462
    .local v35, "name":Ljava/lang/String;
    const-string v41, "session_id"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 463
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setSessionId(Ljava/lang/String;)V

    .line 459
    :cond_0
    :goto_2
    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    .line 465
    :cond_1
    const-string v41, "aid"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_4

    .line 466
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setApplifierId(Ljava/lang/String;)V

    .line 468
    const/16 v38, 0x0

    .line 471
    .local v38, "useImpact":Z
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 472
    .local v7, "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v7, :cond_2

    .line 473
    const-string v41, "use_impact"

    move-object/from16 v0, v41

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v39

    .line 474
    .local v39, "useImpactNode":Lorg/w3c/dom/Node;
    if-eqz v39, :cond_2

    .line 475
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v41

    const-string v42, "use_impact"

    invoke-interface/range {v41 .. v42}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v40

    .line 476
    .local v40, "useImpactValue":Ljava/lang/String;
    const-string v41, "1"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    .line 480
    .end local v39    # "useImpactNode":Lorg/w3c/dom/Node;
    .end local v40    # "useImpactValue":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setApplifierUseImpact(Z)V

    .line 481
    const-string v42, "APPLIFIER"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "-=-=-=-=-=-==-= USE IMPACT: "

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    if-eqz v38, :cond_3

    const-string v41, "TRUE"

    :goto_3
    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v41, "FALSE"

    goto :goto_3

    .line 484
    .end local v7    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v38    # "useImpact":Z
    :cond_4
    const-string v41, "aaid"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 485
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setAdColonyId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 487
    :cond_5
    const-string v41, "azid"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 489
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setAdColonyZone(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 491
    :cond_6
    const-string v41, "sa_id"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 492
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setStartAppId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 494
    :cond_7
    const-string v41, "sad_id"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_8

    .line 496
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setStartAppDeveloperId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 498
    :cond_8
    const-string v41, "vid"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 499
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setVungleId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 501
    :cond_9
    const-string v41, "mil_int_id"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 502
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setMillennialInterstitialId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 504
    :cond_a
    const-string v41, "mil_vid_id"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 505
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setMillennialVideoId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 507
    :cond_b
    const-string v41, "lm_phone_id"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 508
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setLoopMePhoneId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 510
    :cond_c
    const-string v41, "lm_tablet_id"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 511
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setLoopMeTabletId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 513
    :cond_d
    const-string v41, "disable_all"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_f

    .line 514
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    const-string v42, "0"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_e

    const/16 v41, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setDisableAll(Z)V

    goto/16 :goto_2

    :cond_e
    const/16 v41, 0x0

    goto :goto_4

    .line 516
    :cond_f
    const-string v41, "disable_notifications"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 517
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    const-string v42, "0"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_10

    const/16 v41, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setDisableNotifications(Z)V

    goto/16 :goto_2

    :cond_10
    const/16 v41, 0x0

    goto :goto_5

    .line 519
    :cond_11
    const-string v41, "disable_configuration"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_13

    .line 520
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    const-string v42, "0"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_12

    const/16 v41, 0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setDisableConfiguration(Z)V

    goto/16 :goto_2

    :cond_12
    const/16 v41, 0x0

    goto :goto_6

    .line 522
    :cond_13
    const-string v41, "disable_analytics"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_15

    .line 523
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    const-string v42, "0"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_14

    const/16 v41, 0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setDisableAnalytics(Z)V

    goto/16 :goto_2

    :cond_14
    const/16 v41, 0x0

    goto :goto_7

    .line 525
    :cond_15
    const-string v41, "utc_time"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_16

    .line 526
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 527
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setTimestamp(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 529
    :cond_16
    const-string v41, "user_city"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_17

    .line 530
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 531
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setUserCity(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 533
    :cond_17
    const-string v41, "user_country"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_18

    .line 534
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 535
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setUserCountry(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 537
    :cond_18
    const-string v41, "messages"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_19

    .line 538
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 539
    .local v34, "messages":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/fusepowered/util/XMLParser;->parseMessages(Lorg/w3c/dom/NodeList;Lcom/fusepowered/util/ResponseValues;)V

    goto/16 :goto_2

    .line 542
    .end local v34    # "messages":Lorg/w3c/dom/NodeList;
    :cond_19
    const-string v41, "config"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2b

    .line 543
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v2, "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v19, "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 546
    .local v10, "configs":Lorg/w3c/dom/NodeList;
    const/16 v33, 0x0

    .local v33, "k":I
    :goto_8
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v41

    move/from16 v0, v33

    move/from16 v1, v41

    if-ge v0, v1, :cond_2a

    .line 547
    move/from16 v0, v33

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 548
    .local v8, "configProperty":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 549
    .local v9, "configPropertyName":Ljava/lang/String;
    const-string v41, "ads"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_23

    .line 550
    new-instance v3, Lcom/fusepowered/util/AdProvider;

    invoke-direct {v3}, Lcom/fusepowered/util/AdProvider;-><init>()V

    .line 552
    .local v3, "ap":Lcom/fusepowered/util/AdProvider;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 553
    .local v4, "apNodeList":Lorg/w3c/dom/NodeList;
    const/16 v24, 0x0

    .local v24, "h":I
    :goto_9
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v41

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_21

    .line 554
    move/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 555
    .local v5, "apProperty":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 556
    .restart local v7    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v41, "provider_id"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 557
    .local v6, "attrValue":Ljava/lang/String;
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1a

    .line 558
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/fusepowered/util/AdProvider;->setProvider_id(I)V

    .line 559
    :cond_1a
    const-string v41, "test"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 560
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1b

    .line 561
    const-string v41, "test"

    move-object/from16 v0, v41

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    const-string v42, "0"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_20

    const/16 v41, 0x1

    :goto_a
    move/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/fusepowered/util/AdProvider;->setTest(Z)V

    .line 562
    :cond_1b
    const-string v41, "value"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 563
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1c

    .line 564
    const-string v41, "value"

    move-object/from16 v0, v41

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/fusepowered/util/AdProvider;->setValue(I)V

    .line 565
    :cond_1c
    const-string v41, "interstitial"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 566
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1d

    .line 567
    const-string v41, "interstitial"

    move-object/from16 v0, v41

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/fusepowered/util/AdProvider;->setInterstitial(I)V

    .line 568
    :cond_1d
    const-string v41, "keywords"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 569
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1e

    .line 570
    const-string v41, "keywords"

    move-object/from16 v0, v41

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/fusepowered/util/AdProvider;->setKeywords(Ljava/lang/String;)V

    .line 571
    :cond_1e
    const-string v41, "ids"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 572
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1f

    .line 573
    const-string v41, "ids"

    move-object/from16 v0, v41

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/fusepowered/util/AdProvider;->setIds(Ljava/lang/String;)V

    .line 553
    :cond_1f
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9

    .line 561
    :cond_20
    const/16 v41, 0x0

    goto/16 :goto_a

    .line 576
    .end local v5    # "apProperty":Lorg/w3c/dom/Node;
    .end local v6    # "attrValue":Ljava/lang/String;
    .end local v7    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    .end local v3    # "ap":Lcom/fusepowered/util/AdProvider;
    .end local v4    # "apNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "h":I
    :cond_22
    :goto_b
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    .line 578
    :cond_23
    const-string v41, "game_config"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_22

    .line 579
    new-instance v20, Lcom/fusepowered/util/GameConfig;

    invoke-direct/range {v20 .. v20}, Lcom/fusepowered/util/GameConfig;-><init>()V

    .line 580
    .local v20, "gc":Lcom/fusepowered/util/GameConfig;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 581
    .restart local v7    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v41, "id"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 582
    .restart local v6    # "attrValue":Ljava/lang/String;
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_24

    .line 583
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/GameConfig;->setId(I)V

    .line 585
    :cond_24
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 586
    .local v21, "gcNodeList":Lorg/w3c/dom/NodeList;
    const/16 v24, 0x0

    .restart local v24    # "h":I
    :goto_c
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v41

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_29

    .line 587
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    .line 588
    .local v22, "gcProperty":Lorg/w3c/dom/Node;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    .line 589
    .local v23, "gcPropertyName":Ljava/lang/String;
    const-string v41, "key"

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_27

    .line 590
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    if-eqz v41, :cond_26

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_26

    .line 591
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/GameConfig;->setKey(Ljava/lang/String;)V

    .line 586
    :cond_25
    :goto_d
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 593
    :cond_26
    const-string v41, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/GameConfig;->setKey(Ljava/lang/String;)V

    goto :goto_d

    .line 595
    :cond_27
    const-string v41, "value"

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_25

    .line 596
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    if-eqz v41, :cond_28

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_28

    .line 597
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/GameConfig;->setValue(Ljava/lang/String;)V

    goto :goto_d

    .line 599
    :cond_28
    const-string v41, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/GameConfig;->setValue(Ljava/lang/String;)V

    goto :goto_d

    .line 602
    .end local v22    # "gcProperty":Lorg/w3c/dom/Node;
    .end local v23    # "gcPropertyName":Ljava/lang/String;
    :cond_29
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 606
    .end local v6    # "attrValue":Ljava/lang/String;
    .end local v7    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "configProperty":Lorg/w3c/dom/Node;
    .end local v9    # "configPropertyName":Ljava/lang/String;
    .end local v20    # "gc":Lcom/fusepowered/util/GameConfig;
    .end local v21    # "gcNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "h":I
    :cond_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fusepowered/util/ResponseValues;->setAds(Ljava/util/ArrayList;)V

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setGameConfigs(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 610
    .end local v2    # "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    .end local v10    # "configs":Lorg/w3c/dom/NodeList;
    .end local v19    # "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    .end local v33    # "k":I
    :cond_2b
    const-string v41, "dlc"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_40

    .line 612
    new-instance v11, Lcom/fusepowered/util/DLC;

    invoke-direct {v11}, Lcom/fusepowered/util/DLC;-><init>()V

    .line 614
    .local v11, "dlc":Lcom/fusepowered/util/DLC;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 615
    .restart local v7    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v41, "bytes"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 616
    .restart local v6    # "attrValue":Ljava/lang/String;
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_2c

    .line 617
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v11, v0}, Lcom/fusepowered/util/DLC;->setBytes(I)V

    .line 618
    :cond_2c
    const-string v41, "content_id"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 619
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_2d

    .line 620
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v11, v0}, Lcom/fusepowered/util/DLC;->setContentId(I)V

    .line 621
    :cond_2d
    const-string v41, "id"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 622
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_2e

    .line 623
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v11, v0}, Lcom/fusepowered/util/DLC;->setId(I)V

    .line 624
    :cond_2e
    const-string v41, "num_files"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 625
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_2f

    .line 626
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v11, v0}, Lcom/fusepowered/util/DLC;->setNumFiles(I)V

    .line 627
    :cond_2f
    const-string v41, "product_id"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 628
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_30

    .line 629
    invoke-virtual {v11, v6}, Lcom/fusepowered/util/DLC;->setProductId(Ljava/lang/String;)V

    .line 630
    :cond_30
    const-string v41, "update"

    move-object/from16 v0, v41

    invoke-static {v7, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 631
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_31

    .line 632
    const-string v41, "0"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3b

    const/16 v41, 0x1

    :goto_e
    move/from16 v0, v41

    invoke-virtual {v11, v0}, Lcom/fusepowered/util/DLC;->setUpdate(Z)V

    .line 634
    :cond_31
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 636
    .local v15, "dlcNodeList":Lorg/w3c/dom/NodeList;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v14, "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    const/16 v24, 0x0

    .restart local v24    # "h":I
    :goto_f
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v41

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_3e

    .line 639
    new-instance v13, Lcom/fusepowered/util/DlcContent;

    invoke-direct {v13}, Lcom/fusepowered/util/DlcContent;-><init>()V

    .line 640
    .local v13, "dlcContent":Lcom/fusepowered/util/DlcContent;
    move/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 641
    .local v16, "dlcProperty":Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    .line 642
    .local v17, "dlcPropertyName":Ljava/lang/String;
    const-string v41, "dlc_content"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_3a

    .line 643
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    .line 644
    .local v12, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v41, "bytes"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 645
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_32

    .line 646
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/DlcContent;->setBytes(I)V

    .line 647
    :cond_32
    const-string v41, "content_id"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 648
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_33

    .line 649
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/DlcContent;->setContentId(I)V

    .line 650
    :cond_33
    const-string v41, "downloadpath"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 651
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_34

    .line 652
    invoke-virtual {v13, v6}, Lcom/fusepowered/util/DlcContent;->setDownloadPath(Ljava/lang/String;)V

    .line 653
    :cond_34
    const-string v41, "id"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 654
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_35

    .line 655
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/DlcContent;->setId(I)V

    .line 656
    :cond_35
    const-string v41, "md5"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 657
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_36

    .line 658
    invoke-virtual {v13, v6}, Lcom/fusepowered/util/DlcContent;->setMd5(Ljava/lang/String;)V

    .line 659
    :cond_36
    const-string v41, "parent_id"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 660
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_37

    .line 661
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/DlcContent;->setParentId(I)V

    .line 662
    :cond_37
    const-string v41, "purchased"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 663
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_38

    .line 664
    const-string v41, "0"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3c

    const/16 v41, 0x1

    :goto_10
    move/from16 v0, v41

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/DlcContent;->setPurchased(Z)V

    .line 665
    :cond_38
    const-string v41, "auto_download"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 666
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_39

    .line 667
    const-string v41, "0"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3d

    const/16 v41, 0x1

    :goto_11
    move/from16 v0, v41

    invoke-virtual {v13, v0}, Lcom/fusepowered/util/DlcContent;->setAutoDownload(Z)V

    .line 668
    :cond_39
    const-string v41, "product_id"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 669
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_3a

    .line 670
    invoke-virtual {v13, v6}, Lcom/fusepowered/util/DlcContent;->setProductId(Ljava/lang/String;)V

    .line 672
    .end local v12    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_3a
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_f

    .line 632
    .end local v13    # "dlcContent":Lcom/fusepowered/util/DlcContent;
    .end local v14    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .end local v15    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "dlcProperty":Lorg/w3c/dom/Node;
    .end local v17    # "dlcPropertyName":Ljava/lang/String;
    .end local v24    # "h":I
    :cond_3b
    const/16 v41, 0x0

    goto/16 :goto_e

    .line 664
    .restart local v12    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v13    # "dlcContent":Lcom/fusepowered/util/DlcContent;
    .restart local v14    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .restart local v15    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "dlcProperty":Lorg/w3c/dom/Node;
    .restart local v17    # "dlcPropertyName":Ljava/lang/String;
    .restart local v24    # "h":I
    :cond_3c
    const/16 v41, 0x0

    goto :goto_10

    .line 667
    :cond_3d
    const/16 v41, 0x0

    goto :goto_11

    .line 674
    .end local v12    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v13    # "dlcContent":Lcom/fusepowered/util/DlcContent;
    .end local v16    # "dlcProperty":Lorg/w3c/dom/Node;
    .end local v17    # "dlcPropertyName":Ljava/lang/String;
    :cond_3e
    invoke-virtual {v11, v14}, Lcom/fusepowered/util/DLC;->setDlcContents(Ljava/util/ArrayList;)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/util/ResponseValues;->getDlc()Ljava/util/ArrayList;

    move-result-object v18

    .line 678
    .local v18, "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    if-nez v18, :cond_3f

    .line 679
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .restart local v18    # "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    :cond_3f
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setDlc(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 686
    .end local v6    # "attrValue":Ljava/lang/String;
    .end local v7    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "dlc":Lcom/fusepowered/util/DLC;
    .end local v14    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .end local v15    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .end local v18    # "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    .end local v24    # "h":I
    :cond_40
    const-string v41, "incentives"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 688
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 690
    .local v27, "incentiveNodeList":Lorg/w3c/dom/NodeList;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v30, "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    const/16 v24, 0x0

    .restart local v24    # "h":I
    :goto_12
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v41

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_47

    .line 693
    new-instance v26, Lcom/fusepowered/util/Incentive;

    invoke-direct/range {v26 .. v26}, Lcom/fusepowered/util/Incentive;-><init>()V

    .line 694
    .local v26, "incentive":Lcom/fusepowered/util/Incentive;
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    .line 695
    .local v28, "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v29

    .line 696
    .local v29, "incentivePropertyName":Ljava/lang/String;
    const-string v41, "incentive"

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_45

    .line 697
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    .line 698
    .restart local v12    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v41, "incentive_id"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 699
    .restart local v6    # "attrValue":Ljava/lang/String;
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_41

    .line 700
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Incentive;->setIncentiveId(I)V

    .line 701
    :cond_41
    const-string v41, "amount"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 702
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_42

    .line 703
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Incentive;->setAmount(I)V

    .line 704
    :cond_42
    const-string v41, "reward_item_id"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 705
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_43

    .line 706
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/fusepowered/util/Incentive;->setRewardItemId(Ljava/lang/String;)V

    .line 707
    :cond_43
    const-string v41, "reward_item_name"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 708
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_44

    .line 709
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/fusepowered/util/Incentive;->setRewardItemName(Ljava/lang/String;)V

    .line 710
    :cond_44
    const-string v41, "claim_confirmed"

    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 711
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_45

    .line 712
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    if-eqz v41, :cond_46

    const/16 v41, 0x1

    :goto_13
    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Incentive;->setClaimConfirmed(Z)V

    .line 714
    .end local v6    # "attrValue":Ljava/lang/String;
    .end local v12    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_45
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_12

    .line 712
    .restart local v6    # "attrValue":Ljava/lang/String;
    .restart local v12    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_46
    const/16 v41, 0x0

    goto :goto_13

    .line 717
    .end local v6    # "attrValue":Ljava/lang/String;
    .end local v12    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v26    # "incentive":Lcom/fusepowered/util/Incentive;
    .end local v28    # "incentiveProperty":Lorg/w3c/dom/Node;
    .end local v29    # "incentivePropertyName":Ljava/lang/String;
    :cond_47
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setIncentives(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 455
    .end local v24    # "h":I
    .end local v27    # "incentiveNodeList":Lorg/w3c/dom/NodeList;
    .end local v30    # "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    .end local v35    # "name":Ljava/lang/String;
    .end local v37    # "property":Lorg/w3c/dom/Node;
    :cond_48
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 721
    .end local v31    # "item":Lorg/w3c/dom/Node;
    .end local v32    # "j":I
    .end local v36    # "properties":Lorg/w3c/dom/NodeList;
    :cond_49
    return-void
.end method

.method private static parseSetGamedata(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;I)Z
    .locals 12
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p2, "targetRequestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1171
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 1172
    .local v6, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 1173
    .local v2, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1174
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v10, "set_game_data"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1176
    .local v9, "items":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 1177
    .local v3, "currentRequestId":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 1178
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 1179
    .local v8, "item":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1181
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v10, "reqID"

    invoke-static {v1, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1183
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1185
    :cond_0
    if-ne v3, p2, :cond_1

    .line 1186
    const/4 v10, 0x1

    .line 1193
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "item":Lorg/w3c/dom/Node;
    :goto_1
    return v10

    .line 1177
    .restart local v0    # "attrValue":Ljava/lang/String;
    .restart local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "item":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1190
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "currentRequestId":I
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "i":I
    .end local v8    # "item":Lorg/w3c/dom/Node;
    .end local v9    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v5

    .line 1191
    .local v5, "e":Ljava/lang/Exception;
    throw v5

    .line 1193
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "currentRequestId":I
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "i":I
    .restart local v9    # "items":Lorg/w3c/dom/NodeList;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private static parseSignPost(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 18
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1526
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 1527
    .local v7, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 1528
    .local v4, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v16, Ljava/io/ByteArrayInputStream;

    const-string v17, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 1529
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v16, "sign_posts"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 1531
    .local v10, "items":Lorg/w3c/dom/NodeList;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1533
    .local v15, "signPosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/SignPost;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_7

    .line 1534
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 1535
    .local v9, "item":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 1536
    .local v14, "signPostList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    move/from16 v0, v16

    if-ge v11, v0, :cond_6

    .line 1537
    new-instance v12, Lcom/fusepowered/util/SignPost;

    invoke-direct {v12}, Lcom/fusepowered/util/SignPost;-><init>()V

    .line 1538
    .local v12, "signPost":Lcom/fusepowered/util/SignPost;
    invoke-interface {v14, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 1539
    .local v13, "signPostItem":Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 1540
    .local v3, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1541
    .local v2, "attrValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 1542
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/fusepowered/util/SignPost;->setId(I)V

    .line 1543
    :cond_0
    const-string v16, "alias"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1544
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1545
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/fusepowered/util/SignPost;->setAlias(Ljava/lang/String;)V

    .line 1546
    :cond_1
    const-string v16, "from_user"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1547
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1548
    invoke-virtual {v12, v2}, Lcom/fusepowered/util/SignPost;->setFuseId(Ljava/lang/String;)V

    .line 1549
    :cond_2
    const-string v16, "time"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1550
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1551
    invoke-virtual {v12, v2}, Lcom/fusepowered/util/SignPost;->setDate(Ljava/lang/String;)V

    .line 1552
    :cond_3
    const-string v16, "url"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1553
    invoke-static {v2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1554
    invoke-virtual {v12, v2}, Lcom/fusepowered/util/SignPost;->setUrl(Ljava/lang/String;)V

    .line 1556
    :cond_4
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 1557
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/fusepowered/util/SignPost;->setMessage(Ljava/lang/String;)V

    .line 1560
    :cond_5
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1533
    .end local v2    # "attrValue":Ljava/lang/String;
    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "signPost":Lcom/fusepowered/util/SignPost;
    .end local v13    # "signPostItem":Lorg/w3c/dom/Node;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1565
    .end local v9    # "item":Lorg/w3c/dom/Node;
    .end local v11    # "j":I
    .end local v14    # "signPostList":Lorg/w3c/dom/NodeList;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/fusepowered/util/ResponseValues;->setSignPosts(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    return-void

    .line 1568
    .end local v4    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "i":I
    .end local v10    # "items":Lorg/w3c/dom/NodeList;
    .end local v15    # "signPosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/SignPost;>;"
    :catch_0
    move-exception v6

    .line 1569
    .local v6, "e":Ljava/lang/Exception;
    throw v6
.end method

.method private static readTagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "parentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 347
    const-string v12, ""

    .line 349
    .local v12, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 350
    .local v4, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 351
    .local v1, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    const-string v14, "UTF-8"

    invoke-virtual {p0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 352
    .local v2, "doc":Lorg/w3c/dom/Document;
    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 353
    .local v7, "items":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 354
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 355
    .local v6, "item":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 356
    .local v10, "properties":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v8, v13, :cond_1

    .line 357
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 358
    .local v11, "property":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 360
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 356
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 353
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "property":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "i":I
    .end local v6    # "item":Lorg/w3c/dom/Node;
    .end local v7    # "items":Lorg/w3c/dom/NodeList;
    .end local v8    # "j":I
    .end local v10    # "properties":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/Exception;
    throw v3

    .line 369
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "i":I
    .restart local v7    # "items":Lorg/w3c/dom/NodeList;
    :cond_2
    return-object v12
.end method
