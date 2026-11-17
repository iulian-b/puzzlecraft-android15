.class public final Lcom/fusepowered/as/model/vast/InLine;
.super Lcom/fusepowered/as/model/vast/Ad;
.source "InLine.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final AD_SYSTEM_ELEMENT_NAME:Ljava/lang/String; = "AdSystem"

.field private static final AD_TITLE_ELEMENT_NAME:Ljava/lang/String; = "AdTitle"

.field public static final ELEMENT_NAME:Ljava/lang/String; = "InLine"

.field private static final ERROR_ELEMENT_NAME:Ljava/lang/String; = "Error"

.field private static final IMPRESSION_ELEMENT_NAME:Ljava/lang/String; = "Impression"

.field private static final serialVersionUID:J = -0x754cdb1436ecb004L


# instance fields
.field adSystem:Ljava/lang/String;

.field adSystemVersion:Ljava/lang/String;

.field adTitle:Ljava/lang/String;

.field creatives:Lcom/fusepowered/as/model/vast/Creatives;

.field errorUri:Ljava/lang/String;

.field impressionUris:Ljava/util/List;
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
    .line 17
    invoke-direct {p0}, Lcom/fusepowered/as/model/vast/Ad;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/InLine;->impressionUris:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/fusepowered/as/model/vast/Creatives;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/Creatives;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/InLine;->creatives:Lcom/fusepowered/as/model/vast/Creatives;

    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/InLine;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 73
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v3, Lcom/fusepowered/as/model/vast/InLine;

    invoke-direct {v3}, Lcom/fusepowered/as/model/vast/InLine;-><init>()V

    .line 76
    :goto_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const-string v4, "InLine"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 78
    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 80
    const-string v2, "AdSystem"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    const-string v0, "version"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/InLine;->adSystemVersion:Ljava/lang/String;

    .line 83
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/InLine;->adSystem:Ljava/lang/String;

    .line 118
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 119
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_2
    const-string v2, "AdTitle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/InLine;->adTitle:Ljava/lang/String;

    goto :goto_1

    .line 89
    :cond_3
    const-string v2, "Error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 92
    if-nez v0, :cond_4

    move-object v0, v1

    .line 94
    :goto_2
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/InLine;->errorUri:Ljava/lang/String;

    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 100
    :cond_5
    const-string v2, "Impression"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 103
    if-nez v0, :cond_6

    move-object v0, v1

    .line 105
    :goto_3
    if-eqz v0, :cond_1

    .line 107
    iget-object v2, v3, Lcom/fusepowered/as/model/vast/InLine;->impressionUris:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 111
    :cond_7
    const-string v2, "Creatives"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, v3, Lcom/fusepowered/as/model/vast/InLine;->creatives:Lcom/fusepowered/as/model/vast/Creatives;

    invoke-static {p0}, Lcom/fusepowered/as/model/vast/Creatives;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/model/vast/Creatives;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 123
    :cond_8
    return-object v3
.end method


# virtual methods
.method public getAdSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/InLine;->adSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/InLine;->adSystemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/InLine;->adTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatives()Lcom/fusepowered/as/model/vast/Creatives;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/fusepowered/as/model/vast/Creatives;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/InLine;->creatives:Lcom/fusepowered/as/model/vast/Creatives;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/model/vast/Creatives;-><init>(Lcom/fusepowered/as/model/vast/Creatives;)V

    return-object v0
.end method

.method public getErrorUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/InLine;->errorUri:Ljava/lang/String;

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
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/InLine;->impressionUris:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
