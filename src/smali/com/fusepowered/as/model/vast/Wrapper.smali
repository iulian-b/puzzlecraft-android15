.class public final Lcom/fusepowered/as/model/vast/Wrapper;
.super Lcom/fusepowered/as/model/vast/Ad;
.source "Wrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final AD_SYSTEM_ELEMENT_NAME:Ljava/lang/String; = "AdSystem"

.field public static final ELEMENT_NAME:Ljava/lang/String; = "Wrapper"

.field private static final ERROR_ELEMENT_NAME:Ljava/lang/String; = "Error"

.field private static final IMPRESSION_ELEMENT_NAME:Ljava/lang/String; = "Impression"

.field private static final VAST_AD_TAG_ELEMENT_NAME:Ljava/lang/String; = "VASTAdTagURI"

.field private static final VERSION_ATTRIBUTE_NAME:Ljava/lang/String; = "version"

.field private static final serialVersionUID:J = 0x123927921efb2888L


# instance fields
.field private adSystem:Ljava/lang/String;

.field private adSystemVersion:Ljava/lang/String;

.field private adTagUri:Ljava/lang/String;

.field private creatives:Lcom/fusepowered/as/model/vast/Creatives;

.field private errorUri:Ljava/lang/String;

.field private extensions:Lcom/fusepowered/as/model/vast/Extensions;

.field private impressionUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fusepowered/as/model/vast/Ad;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/Wrapper;->impressionUris:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/fusepowered/as/model/vast/Creatives;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/Creatives;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/Wrapper;->creatives:Lcom/fusepowered/as/model/vast/Creatives;

    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Wrapper;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 78
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v3, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-direct {v3}, Lcom/fusepowered/as/model/vast/Wrapper;-><init>()V

    .line 81
    :goto_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const-string v4, "Wrapper"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 83
    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 85
    const-string v2, "AdSystem"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    const-string v0, "version"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/Wrapper;->adSystemVersion:Ljava/lang/String;

    .line 88
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/Wrapper;->adSystem:Ljava/lang/String;

    .line 137
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 138
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_2
    const-string v2, "VASTAdTagURI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 93
    if-nez v0, :cond_3

    move-object v0, v1

    .line 95
    :goto_2
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/Wrapper;->adTagUri:Ljava/lang/String;

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 101
    :cond_4
    const-string v2, "Error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 103
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 104
    if-nez v0, :cond_5

    move-object v0, v1

    .line 106
    :goto_3
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/Wrapper;->errorUri:Ljava/lang/String;

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 112
    :cond_6
    const-string v2, "Impression"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 114
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_7

    move-object v0, v1

    .line 117
    :goto_4
    if-eqz v0, :cond_1

    .line 119
    iget-object v2, v3, Lcom/fusepowered/as/model/vast/Wrapper;->impressionUris:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    .line 123
    :cond_8
    const-string v2, "Creatives"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 125
    iget-object v0, v3, Lcom/fusepowered/as/model/vast/Wrapper;->creatives:Lcom/fusepowered/as/model/vast/Creatives;

    invoke-static {p0}, Lcom/fusepowered/as/model/vast/Creatives;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/model/vast/Creatives;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 127
    :cond_9
    const-string v2, "Extensions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, v3, Lcom/fusepowered/as/model/vast/Wrapper;->extensions:Lcom/fusepowered/as/model/vast/Extensions;

    if-nez v0, :cond_1

    .line 131
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/Extensions;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Extensions;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/Wrapper;->extensions:Lcom/fusepowered/as/model/vast/Extensions;

    goto/16 :goto_1

    .line 142
    :cond_a
    return-object v3
.end method


# virtual methods
.method public getAdSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Wrapper;->adSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Wrapper;->adSystemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTagUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Wrapper;->adTagUri:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatives()Lcom/fusepowered/as/model/vast/Creatives;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/fusepowered/as/model/vast/Creatives;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/Wrapper;->creatives:Lcom/fusepowered/as/model/vast/Creatives;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/model/vast/Creatives;-><init>(Lcom/fusepowered/as/model/vast/Creatives;)V

    return-object v0
.end method

.method public getErrorUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Wrapper;->errorUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensions()Lcom/fusepowered/as/model/vast/Extensions;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Wrapper;->extensions:Lcom/fusepowered/as/model/vast/Extensions;

    return-object v0
.end method

.method public getImpressionUris()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/Wrapper;->impressionUris:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
