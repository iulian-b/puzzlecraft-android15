.class public Lcom/fusepowered/api/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/api/XMLParser$AttributeParser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XMLParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static parseAdConfig(Lorg/w3c/dom/Node;)Lcom/fusepowered/api/model/AdConfig;
    .locals 16
    .param p0, "adNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 225
    new-instance v10, Lcom/fusepowered/api/XMLParser$AttributeParser;

    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/fusepowered/api/XMLParser$AttributeParser;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    .line 226
    .local v10, "parser":Lcom/fusepowered/api/XMLParser$AttributeParser;
    new-instance v0, Lcom/fusepowered/api/model/AdConfig;

    invoke-direct {v0}, Lcom/fusepowered/api/model/AdConfig;-><init>()V

    .line 227
    .local v0, "adConfig":Lcom/fusepowered/api/model/AdConfig;
    const-string v13, "t"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Lcom/fusepowered/api/model/AdConfig;->type:I

    .line 228
    const-string v13, "t"

    invoke-virtual {v10, v13}, Lcom/fusepowered/api/XMLParser$AttributeParser;->toHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v13

    iput-object v13, v0, Lcom/fusepowered/api/model/AdConfig;->values:Ljava/util/HashMap;

    .line 229
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 230
    .local v6, "children":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v7, v13, :cond_2

    .line 231
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 232
    .local v5, "child":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, "nodeName":Ljava/lang/String;
    const-string v13, "beacons"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 235
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 236
    .local v4, "beaconNodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v2, v13, :cond_1

    .line 237
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 238
    .local v3, "beacon":Lorg/w3c/dom/Node;
    new-instance v1, Lcom/fusepowered/api/XMLParser$AttributeParser;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/fusepowered/api/XMLParser$AttributeParser;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    .line 239
    .local v1, "attributeParser":Lcom/fusepowered/api/XMLParser$AttributeParser;
    const-string v13, "type"

    invoke-virtual {v1, v13}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 240
    .local v11, "type":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 241
    .local v12, "url":Ljava/lang/String;
    iget-object v13, v0, Lcom/fusepowered/api/model/AdConfig;->values:Ljava/util/HashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "beacon-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    .end local v1    # "attributeParser":Lcom/fusepowered/api/XMLParser$AttributeParser;
    .end local v2    # "b":I
    .end local v3    # "beacon":Lorg/w3c/dom/Node;
    .end local v4    # "beaconNodes":Lorg/w3c/dom/NodeList;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_0
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "nodeValue":Ljava/lang/String;
    iget-object v13, v0, Lcom/fusepowered/api/model/AdConfig;->values:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v9    # "nodeValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 248
    .end local v5    # "child":Lorg/w3c/dom/Node;
    .end local v8    # "nodeName":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static parseAdConfigs(Lorg/w3c/dom/NodeList;)[Lcom/fusepowered/api/model/AdConfig;
    .locals 7
    .param p0, "adNodes"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v1, "adConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/api/model/AdConfig;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 211
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 213
    .local v2, "adNode":Lorg/w3c/dom/Node;
    :try_start_0
    invoke-static {v2}, Lcom/fusepowered/api/XMLParser;->parseAdConfig(Lorg/w3c/dom/Node;)Lcom/fusepowered/api/model/AdConfig;

    move-result-object v0

    .line 214
    .local v0, "adConfig":Lcom/fusepowered/api/model/AdConfig;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "adConfig":Lcom/fusepowered/api/model/AdConfig;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v3

    .line 216
    .local v3, "ex":Ljava/lang/Exception;
    const-string v5, "XMLParser"

    const-string v6, "Could not parse an ad config"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    .end local v2    # "adNode":Lorg/w3c/dom/Node;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/fusepowered/api/model/AdConfig;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/fusepowered/api/model/AdConfig;

    return-object v5
.end method

.method public static parseAdProviderConfig(Lorg/w3c/dom/NodeList;)[Lcom/fusepowered/api/model/AdProviderConfig;
    .locals 21
    .param p0, "providerNodes"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 132
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v13, "providerConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/api/model/AdProviderConfig;>;"
    const/4 v15, 0x0

    .local v15, "providerIndex":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    .line 135
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 136
    .local v16, "providerNode":Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "p"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    if-nez v18, :cond_0

    .line 134
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 141
    :cond_0
    :try_start_1
    new-instance v12, Lcom/fusepowered/api/model/AdProviderConfig;

    invoke-direct {v12}, Lcom/fusepowered/api/model/AdProviderConfig;-><init>()V

    .line 143
    .local v12, "providerConfig":Lcom/fusepowered/api/model/AdProviderConfig;
    new-instance v2, Lcom/fusepowered/api/XMLParser$AttributeParser;

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    .line 144
    .local v2, "attributes":Lcom/fusepowered/api/XMLParser$AttributeParser;
    const-string v18, "id"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->id:I

    .line 145
    const-string v18, "class"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->className:Ljava/lang/String;

    .line 146
    const-string v18, "enabled"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->isEnabled:Z

    .line 147
    const-string v18, "fusead"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->isFuseAd:Z

    .line 148
    const-string v18, "log"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->isLoggingEnabled:Z

    .line 149
    const-string v18, "mraid"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->isMRaid:Z

    .line 150
    const-string v18, "s2s"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->isServerToServer:Z

    .line 151
    const-string v18, "vast"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->isVast:Z

    .line 152
    const-string v18, "video"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->isVideo:Z

    .line 153
    const-string v18, "timeout"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->timeout:I

    .line 154
    const-string v18, "rewarded"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->isRewarded:Z

    .line 155
    const-string v18, "rtn"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->isRTN:Z

    .line 156
    const-string v18, "rotate"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->rotateMode:I

    .line 157
    const-string v18, "cb_ms"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->closeButtonDelay:J

    .line 158
    const-string v18, "rti"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->returnToInterstitial:Z

    .line 159
    const-string v18, "reward_timer"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->rewardTimer:I

    .line 160
    const-string v18, "max_size"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->maxVastFileSize:Ljava/lang/String;

    .line 161
    const-string v18, "validate_xml"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->shouldValidateSchema:Z

    .line 162
    const-string v18, "bgc"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->backgroundColor:I

    .line 163
    const-string v18, "pl"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->shouldPreload:Z

    .line 166
    const-string v18, "min_ver"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getAPIVersion(Ljava/lang/String;)Lcom/fusepowered/ads/APIVersion;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->minimumAdapterVersion:Lcom/fusepowered/ads/APIVersion;

    .line 167
    const-string v18, "max_ver"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getAPIVersion(Ljava/lang/String;)Lcom/fusepowered/ads/APIVersion;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->maximumAdapterVersion:Lcom/fusepowered/ads/APIVersion;

    .line 168
    const-string v18, "pbl"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getAPIVersions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->blacklistedProviderVersions:Ljava/util/ArrayList;

    .line 169
    const-string v18, "abl"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getAPIVersions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/fusepowered/api/model/AdProviderConfig;->blacklistedAdapterVersions:Ljava/util/ArrayList;

    .line 171
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v14, "providerIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 174
    .local v5, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "childIndex":I
    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_3

    .line 175
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 177
    .local v4, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ids"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 174
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 180
    :cond_2
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 182
    .local v10, "idNodes":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "idIndex":I
    :goto_3
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_1

    .line 183
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 185
    .local v9, "idNode":Lorg/w3c/dom/Node;
    new-instance v7, Lcom/fusepowered/api/XMLParser$AttributeParser;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    .line 186
    .local v7, "idAttributes":Lcom/fusepowered/api/XMLParser$AttributeParser;
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 187
    .local v11, "name":Ljava/lang/String;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    .line 189
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 193
    .end local v4    # "childNode":Lorg/w3c/dom/Node;
    .end local v7    # "idAttributes":Lcom/fusepowered/api/XMLParser$AttributeParser;
    .end local v8    # "idIndex":I
    .end local v9    # "idNode":Lorg/w3c/dom/Node;
    .end local v10    # "idNodes":Lorg/w3c/dom/NodeList;
    .end local v11    # "name":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_3
    iput-object v14, v12, Lcom/fusepowered/api/model/AdProviderConfig;->providerIds:Ljava/util/HashMap;

    .line 194
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 195
    .end local v2    # "attributes":Lcom/fusepowered/api/XMLParser$AttributeParser;
    .end local v3    # "childIndex":I
    .end local v5    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v12    # "providerConfig":Lcom/fusepowered/api/model/AdProviderConfig;
    .end local v14    # "providerIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 196
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v18, "XMLParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Could not parse an ad provider config: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 201
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v13    # "providerConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/api/model/AdProviderConfig;>;"
    .end local v15    # "providerIndex":I
    .end local v16    # "providerNode":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v6

    .line 202
    .restart local v6    # "ex":Ljava/lang/Exception;
    const-string v18, "XMLParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Could not parse ANY ad provider configs: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    const/16 v18, 0x0

    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_4
    return-object v18

    .line 200
    .restart local v13    # "providerConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/api/model/AdProviderConfig;>;"
    .restart local v15    # "providerIndex":I
    :cond_4
    :try_start_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lcom/fusepowered/api/model/AdProviderConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/fusepowered/api/model/AdProviderConfig;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4
.end method

.method public static parseWelcomeMessage(Lorg/w3c/dom/Document;)Lcom/fusepowered/api/WelcomeMessage;
    .locals 8
    .param p0, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 254
    :try_start_0
    const-string v6, "welcome"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 255
    .local v4, "welcomeNode":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "welcomeString":Ljava/lang/String;
    const-string v6, "latest"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 258
    .local v1, "latestNode":Lorg/w3c/dom/Node;
    new-instance v2, Lcom/fusepowered/ads/APIVersion;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/fusepowered/ads/APIVersion;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "latestVersion":Lcom/fusepowered/ads/APIVersion;
    new-instance v3, Lcom/fusepowered/api/WelcomeMessage;

    invoke-direct {v3, v5, v2}, Lcom/fusepowered/api/WelcomeMessage;-><init>(Ljava/lang/String;Lcom/fusepowered/ads/APIVersion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1    # "latestNode":Lorg/w3c/dom/Node;
    .end local v2    # "latestVersion":Lcom/fusepowered/ads/APIVersion;
    .end local v4    # "welcomeNode":Lorg/w3c/dom/Node;
    .end local v5    # "welcomeString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "XMLParser"

    const-string v7, "Could not parse welcome message"

    invoke-static {v6, v7, v0}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseZoneOffers(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V
    .locals 24
    .param p0, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 368
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 369
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 376
    .local v8, "offersNode":Lorg/w3c/dom/Node;
    const/4 v14, 0x0

    .line 377
    .local v14, "zoneList":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 378
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    .line 379
    .local v17, "zonesNode":Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 384
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .local v7, "offerObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/OfferObject;>;"
    const/4 v13, 0x0

    .local v13, "zoneIndex":I
    :goto_0
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    .line 387
    invoke-interface {v14, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 388
    .local v16, "zoneNode":Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v18

    if-nez v18, :cond_2

    .line 385
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 371
    .end local v7    # "offerObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/OfferObject;>;"
    .end local v8    # "offersNode":Lorg/w3c/dom/Node;
    .end local v13    # "zoneIndex":I
    .end local v14    # "zoneList":Lorg/w3c/dom/NodeList;
    .end local v16    # "zoneNode":Lorg/w3c/dom/Node;
    .end local v17    # "zonesNode":Lorg/w3c/dom/Node;
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/fusepowered/OfferObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fusepowered/util/ResponseValues;->zoneOffers:[Lcom/fusepowered/OfferObject;

    .line 428
    :cond_1
    :goto_2
    return-void

    .line 391
    .restart local v7    # "offerObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/OfferObject;>;"
    .restart local v8    # "offersNode":Lorg/w3c/dom/Node;
    .restart local v13    # "zoneIndex":I
    .restart local v14    # "zoneList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "zoneNode":Lorg/w3c/dom/Node;
    .restart local v17    # "zonesNode":Lorg/w3c/dom/Node;
    :cond_2
    new-instance v11, Lcom/fusepowered/api/XMLParser$AttributeParser;

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    .line 392
    .local v11, "zoneAttributes":Lcom/fusepowered/api/XMLParser$AttributeParser;
    const-string v18, "id"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 393
    .local v12, "zoneId":I
    const-string v18, "zone_id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 396
    .local v15, "zoneName":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .line 397
    .local v5, "offerNode":Lorg/w3c/dom/Node;
    new-instance v4, Lcom/fusepowered/api/XMLParser$AttributeParser;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    .line 398
    .local v4, "attributes":Lcom/fusepowered/api/XMLParser$AttributeParser;
    new-instance v6, Lcom/fusepowered/OfferObject;

    invoke-direct {v6}, Lcom/fusepowered/OfferObject;-><init>()V

    .line 399
    .local v6, "offerObject":Lcom/fusepowered/OfferObject;
    const-string v18, "offer_id"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Lcom/fusepowered/OfferObject;->id:I

    .line 400
    iput v12, v6, Lcom/fusepowered/OfferObject;->adZoneID:I

    .line 401
    iput-object v15, v6, Lcom/fusepowered/OfferObject;->zoneName:Ljava/lang/String;

    .line 402
    const-string v18, "content_id"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Lcom/fusepowered/OfferObject;->contentId:I

    .line 403
    const-string v18, "type"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/fusepowered/OfferType;->getType(I)Lcom/fusepowered/OfferType;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/fusepowered/OfferObject;->type:Lcom/fusepowered/OfferType;

    .line 404
    const-string v18, "bundle_id"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/fusepowered/OfferObject;->itemId:Ljava/lang/String;

    .line 405
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/fusepowered/OfferObject;->itemName:Ljava/lang/String;

    .line 406
    const-string v18, "price"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getFloat(Ljava/lang/String;F)F

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Lcom/fusepowered/OfferObject;->purchasePrice:F

    .line 407
    const-string v18, "currency"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/fusepowered/OfferObject;->purchaseCurrency:Ljava/lang/String;

    .line 408
    const-string v18, "itemQty"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Lcom/fusepowered/OfferObject;->itemQuantity:I

    .line 409
    const-string v18, "virtualgoodID"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Lcom/fusepowered/OfferObject;->vg_virtualGoodID:I

    .line 410
    const-string v18, "currencyID"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Lcom/fusepowered/OfferObject;->vg_currencyID:I

    .line 411
    new-instance v18, Ljava/util/Date;

    const-string v19, "start_date"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/fusepowered/OfferObject;->startTime:Ljava/util/Date;

    .line 412
    new-instance v18, Ljava/util/Date;

    const-string v19, "end_date"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/fusepowered/OfferObject;->endTime:Ljava/util/Date;

    .line 414
    const-string v18, "t"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Lcom/fusepowered/OfferObject;->t:I

    .line 417
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    .line 418
    .local v10, "scriptNode":Lorg/w3c/dom/Node;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "script"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 419
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/fusepowered/OfferObject;->offerHtml:Ljava/lang/String;

    .line 421
    :cond_3
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    const-string v18, "OfferObject"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Loaded OfferObject for zone: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/fusepowered/OfferObject;->zoneName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 426
    .end local v4    # "attributes":Lcom/fusepowered/api/XMLParser$AttributeParser;
    .end local v5    # "offerNode":Lorg/w3c/dom/Node;
    .end local v6    # "offerObject":Lcom/fusepowered/OfferObject;
    .end local v10    # "scriptNode":Lorg/w3c/dom/Node;
    .end local v11    # "zoneAttributes":Lcom/fusepowered/api/XMLParser$AttributeParser;
    .end local v12    # "zoneId":I
    .end local v15    # "zoneName":Ljava/lang/String;
    .end local v16    # "zoneNode":Lorg/w3c/dom/Node;
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lcom/fusepowered/OfferObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/fusepowered/OfferObject;

    .line 427
    .local v9, "results":[Lcom/fusepowered/OfferObject;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/fusepowered/util/ResponseValues;->zoneOffers:[Lcom/fusepowered/OfferObject;

    goto/16 :goto_2
.end method

.method public static parseZoneRewards(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V
    .locals 16
    .param p0, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 286
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    const/4 v14, 0x1

    if-lt v13, v14, :cond_1

    .line 287
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 294
    .local v8, "rewarded":Lorg/w3c/dom/Node;
    const/4 v10, 0x0

    .line 295
    .local v10, "zoneList":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 296
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 297
    .local v12, "zonesElement":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 301
    .end local v12    # "zonesElement":Lorg/w3c/dom/Node;
    :cond_0
    if-nez v10, :cond_2

    .line 302
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/fusepowered/RewardedObject;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/fusepowered/util/ResponseValues;->zoneRewards:[Lcom/fusepowered/RewardedObject;

    .line 344
    .end local v8    # "rewarded":Lorg/w3c/dom/Node;
    .end local v10    # "zoneList":Lorg/w3c/dom/NodeList;
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/fusepowered/RewardedObject;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/fusepowered/util/ResponseValues;->zoneRewards:[Lcom/fusepowered/RewardedObject;

    goto :goto_0

    .line 306
    .restart local v8    # "rewarded":Lorg/w3c/dom/Node;
    .restart local v10    # "zoneList":Lorg/w3c/dom/NodeList;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .local v7, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/RewardedObject;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v4, v13, :cond_8

    .line 309
    invoke-interface {v10, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 310
    .local v11, "zoneNode":Lorg/w3c/dom/Node;
    new-instance v1, Lcom/fusepowered/api/XMLParser$AttributeParser;

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/fusepowered/api/XMLParser$AttributeParser;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    .line 311
    .local v1, "attributes":Lcom/fusepowered/api/XMLParser$AttributeParser;
    new-instance v9, Lcom/fusepowered/RewardedObject;

    invoke-direct {v9}, Lcom/fusepowered/RewardedObject;-><init>()V

    .line 312
    .local v9, "rewardedObject":Lcom/fusepowered/RewardedObject;
    const-string v13, "offer_id"

    const/4 v14, -0x1

    invoke-virtual {v1, v13, v14}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v9, Lcom/fusepowered/RewardedObject;->offerId:I

    .line 313
    const-string v13, "id"

    const/4 v14, -0x1

    invoke-virtual {v1, v13, v14}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v9, Lcom/fusepowered/RewardedObject;->zoneId:I

    .line 314
    const-string v13, "zone_id"

    invoke-virtual {v1, v13}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/fusepowered/RewardedObject;->zoneName:Ljava/lang/String;

    .line 315
    const-string v13, "item_id"

    const/4 v14, -0x1

    invoke-virtual {v1, v13, v14}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v9, Lcom/fusepowered/RewardedObject;->itemId:I

    .line 316
    const-string v13, "reward"

    invoke-virtual {v1, v13}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/fusepowered/RewardedObject;->rewardItem:Ljava/lang/String;

    .line 317
    const-string v13, "amount"

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v9, Lcom/fusepowered/RewardedObject;->rewardAmount:I

    .line 319
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 320
    .local v3, "children":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v6, v13, :cond_5

    .line 321
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 322
    .local v2, "child":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "pre_roll"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 323
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/fusepowered/RewardedObject;->preRollMessage:Ljava/lang/String;

    .line 320
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 324
    :cond_4
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "post_roll"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 325
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/fusepowered/RewardedObject;->postRollMessage:Ljava/lang/String;

    goto :goto_3

    .line 329
    .end local v2    # "child":Lorg/w3c/dom/Node;
    :cond_5
    iget-object v13, v9, Lcom/fusepowered/RewardedObject;->postRollMessage:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, v9, Lcom/fusepowered/RewardedObject;->preRollMessage:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, v9, Lcom/fusepowered/RewardedObject;->rewardItem:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget v13, v9, Lcom/fusepowered/RewardedObject;->offerId:I

    if-ltz v13, :cond_6

    iget v13, v9, Lcom/fusepowered/RewardedObject;->zoneId:I

    if-ltz v13, :cond_6

    iget v13, v9, Lcom/fusepowered/RewardedObject;->itemId:I

    if-ltz v13, :cond_6

    iget v13, v9, Lcom/fusepowered/RewardedObject;->rewardAmount:I

    if-lez v13, :cond_6

    const/4 v5, 0x1

    .line 336
    .local v5, "isValid":Z
    :goto_4
    if-eqz v5, :cond_7

    .line 337
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v13, "RewardedObject"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loaded RewardedObject: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 329
    .end local v5    # "isValid":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 340
    .restart local v5    # "isValid":Z
    :cond_7
    const-string v13, "RewardedObject"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rejected rewarded object: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 343
    .end local v1    # "attributes":Lcom/fusepowered/api/XMLParser$AttributeParser;
    .end local v3    # "children":Lorg/w3c/dom/NodeList;
    .end local v5    # "isValid":Z
    .end local v6    # "j":I
    .end local v9    # "rewardedObject":Lcom/fusepowered/RewardedObject;
    .end local v11    # "zoneNode":Lorg/w3c/dom/Node;
    :cond_8
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/fusepowered/RewardedObject;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/fusepowered/RewardedObject;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/fusepowered/util/ResponseValues;->zoneRewards:[Lcom/fusepowered/RewardedObject;

    goto/16 :goto_0
.end method
