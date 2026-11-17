.class public final Lcom/fusepowered/as/model/vast/VAST;
.super Ljava/lang/Object;
.source "VAST.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "VAST"

.field private static final ID_ATTRIBUTE_NAME:Ljava/lang/String; = "id"

.field private static final SEQUENCE_ATTRIBUTE_NAME:Ljava/lang/String; = "sequence"

.field private static final VERSION_ATTRIBUTE_NAME:Ljava/lang/String; = "version"

.field private static final serialVersionUID:J = -0x41ab06fcb7fd1a38L


# instance fields
.field private ads:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/fusepowered/as/model/vast/Ad;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;

.field private wrappedVast:Lcom/fusepowered/as/model/vast/VAST;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/VAST;->ads:Ljava/util/TreeSet;

    return-void
.end method

.method private static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/VAST;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v2, Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {v2}, Lcom/fusepowered/as/model/vast/VAST;-><init>()V

    .line 99
    const/4 v0, 0x0

    const-string v1, "version"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/fusepowered/as/model/vast/VAST;->version:Ljava/lang/String;

    .line 101
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const-string v3, "VAST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 106
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "Ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/VAST;->parseAdObject(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Ad;

    move-result-object v0

    .line 109
    iget-object v1, v2, Lcom/fusepowered/as/model/vast/VAST;->ads:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 113
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_2
    return-object v2
.end method

.method private static parseAdObject(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Ad;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 54
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v0, "id"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    const-string v0, "sequence"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    move-object v0, v1

    .line 64
    :goto_0
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    const-string v5, "Ad"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 66
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 68
    const-string v3, "InLine"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 69
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/InLine;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/InLine;

    move-result-object v2

    .line 70
    iget-object v3, v2, Lcom/fusepowered/as/model/vast/InLine;->impressionUris:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v1, v2

    .line 80
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 81
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 60
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_4
    const-class v2, Lcom/fusepowered/as/model/vast/VAST;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Throwing away inline vast because it doesn\'t have an impression element"

    invoke-static {v2, v3}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_5
    const-string v3, "Wrapper"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/Wrapper;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Wrapper;

    move-result-object v1

    goto :goto_1

    .line 84
    :cond_6
    if-eqz v1, :cond_7

    .line 87
    iput-object v4, v1, Lcom/fusepowered/as/model/vast/Ad;->id:Ljava/lang/String;

    .line 88
    iput-object v0, v1, Lcom/fusepowered/as/model/vast/Ad;->sequencePosition:Ljava/lang/Integer;

    .line 92
    :cond_7
    return-object v1
.end method

.method public static parseXml(Ljava/lang/String;)Lcom/fusepowered/as/model/vast/VAST;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 121
    const/4 v1, 0x0

    .line 123
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 126
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 127
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 129
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 131
    :goto_0
    if-eq v1, v4, :cond_1

    .line 133
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v1, "VAST"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {v2}, Lcom/fusepowered/as/model/vast/VAST;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    .line 137
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 140
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAds()Ljava/util/TreeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/fusepowered/as/model/vast/Ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/VAST;->ads:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/VAST;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/VAST;->wrappedVast:Lcom/fusepowered/as/model/vast/VAST;

    return-object v0
.end method

.method public setWrappedVast(Lcom/fusepowered/as/model/vast/VAST;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fusepowered/as/model/vast/VAST;->wrappedVast:Lcom/fusepowered/as/model/vast/VAST;

    .line 41
    return-void
.end method
