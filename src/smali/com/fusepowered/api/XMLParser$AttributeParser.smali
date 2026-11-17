.class Lcom/fusepowered/api/XMLParser$AttributeParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/api/XMLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeParser"
.end annotation


# instance fields
.field private final attributes:Lorg/w3c/dom/NamedNodeMap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NamedNodeMap;)V
    .locals 0
    .param p1, "attributes"    # Lorg/w3c/dom/NamedNodeMap;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/fusepowered/api/XMLParser$AttributeParser;->attributes:Lorg/w3c/dom/NamedNodeMap;

    .line 33
    return-void
.end method


# virtual methods
.method public getAPIVersion(Ljava/lang/String;)Lcom/fusepowered/ads/APIVersion;
    .locals 7
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 102
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 98
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/fusepowered/ads/APIVersion;

    invoke-direct {v2, v1}, Lcom/fusepowered/ads/APIVersion;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v2, "version":Lcom/fusepowered/ads/APIVersion;
    goto :goto_0

    .line 100
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "version":Lcom/fusepowered/ads/APIVersion;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "XMLParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem parsing api version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 102
    goto :goto_0
.end method

.method public getAPIVersions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/APIVersion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    move-object v1, v9

    .line 122
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 112
    .restart local v6    # "value":Ljava/lang/String;
    :cond_2
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "versions":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "apiVersions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/APIVersion;>;"
    move-object v2, v8

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v7, v2, v4

    .line 116
    .local v7, "version":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    invoke-direct {v0, v7}, Lcom/fusepowered/ads/APIVersion;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "apiVersion":Lcom/fusepowered/ads/APIVersion;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 120
    .end local v0    # "apiVersion":Lcom/fusepowered/ads/APIVersion;
    .end local v1    # "apiVersions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/APIVersion;>;"
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    .end local v8    # "versions":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 121
    .local v3, "ex":Ljava/lang/Exception;
    const-string v10, "XMLParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem parsing api version list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v9

    .line 122
    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 5
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    .end local v1    # "s":Ljava/lang/String;
    .end local p2    # "defaultValue":F
    :cond_0
    :goto_0
    return p2

    .line 72
    .restart local v1    # "s":Ljava/lang/String;
    .restart local p2    # "defaultValue":F
    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 73
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "XMLParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    .end local v1    # "s":Ljava/lang/String;
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 52
    .restart local v1    # "s":Ljava/lang/String;
    .restart local p2    # "defaultValue":I
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 53
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "XMLParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/api/XMLParser$AttributeParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    .end local v1    # "s":Ljava/lang/String;
    .end local p2    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p2

    .line 62
    .restart local v1    # "s":Ljava/lang/String;
    .restart local p2    # "defaultValue":J
    :cond_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 63
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "XMLParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/fusepowered/api/XMLParser$AttributeParser;->attributes:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 37
    .local v0, "n":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "exclude"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v1, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/fusepowered/api/XMLParser$AttributeParser;->attributes:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/fusepowered/api/XMLParser$AttributeParser;->attributes:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 84
    .local v0, "attributeNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    .end local v0    # "attributeNode":Lorg/w3c/dom/Node;
    :cond_1
    return-object v1
.end method
