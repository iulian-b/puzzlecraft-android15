.class public Lcom/fusepowered/mraid1/internal/MRAIDParser;
.super Ljava/lang/Object;
.source "MRAIDParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkParamsForCommand(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 79
    const-string v2, "createCalendarEvent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const-string v0, "eventJSON"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    const-string v2, "open"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "playVideo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "storePicture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    :cond_2
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 83
    :cond_3
    const-string v2, "setOrientationProperties"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    const-string v2, "allowOrientationChange"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "forceOrientation"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 86
    :cond_5
    const-string v2, "setResizeProperties"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    const-string v2, "width"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "height"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "offsetX"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "offsetY"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "customClosePosition"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "allowOffscreen"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 93
    :cond_7
    const-string v1, "useCustomClose"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v0, "useCustomClose"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private isValidCommand(Ljava/lang/String;)Z
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 62
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "success"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "close"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "createCalendarEvent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "expand"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "open"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "playVideo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "resize"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "setOrientationProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "setResizeProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "storePicture"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "useCustomClose"

    aput-object v2, v0, v1

    .line 75
    .local v0, "commands":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public parseCommandUrl(Ljava/lang/String;)Ljava/util/Map;
    .locals 17
    .param p1, "commandUrl"    # Ljava/lang/String;
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
    .line 19
    const-string v14, "MRAIDParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "parseCommandUrl "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 25
    .local v12, "s":Ljava/lang/String;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v14, 0x3f

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 29
    .local v5, "idx":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_0

    .line 30
    const/4 v14, 0x0

    invoke-virtual {v12, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "command":Ljava/lang/String;
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 32
    .local v10, "paramStr":Ljava/lang/String;
    const-string v14, "&"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 33
    .local v9, "paramArray":[Ljava/lang/String;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v8, v1, v4

    .line 34
    .local v8, "param":Ljava/lang/String;
    const/16 v14, 0x3d

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 35
    const/4 v14, 0x0

    invoke-virtual {v8, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 37
    .local v13, "val":Ljava/lang/String;
    invoke-interface {v11, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "command":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v8    # "param":Ljava/lang/String;
    .end local v9    # "paramArray":[Ljava/lang/String;
    .end local v10    # "paramStr":Ljava/lang/String;
    .end local v13    # "val":Ljava/lang/String;
    :cond_0
    move-object v2, v12

    .line 44
    .restart local v2    # "command":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/fusepowered/mraid1/internal/MRAIDParser;->isValidCommand(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 45
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "command "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is unknown"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->i(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x0

    .line 58
    :goto_1
    return-object v3

    .line 50
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/fusepowered/mraid1/internal/MRAIDParser;->checkParamsForCommand(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 51
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "command URL "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is missing parameters"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->i(Ljava/lang/String;)V

    .line 52
    const/4 v3, 0x0

    goto :goto_1

    .line 55
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v3, "commandMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "command"

    invoke-interface {v3, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {v3, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1
.end method
