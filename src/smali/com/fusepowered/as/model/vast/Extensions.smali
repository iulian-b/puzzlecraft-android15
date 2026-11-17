.class public Lcom/fusepowered/as/model/vast/Extensions;
.super Ljava/util/ArrayList;
.source "Extensions.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/fusepowered/as/model/vast/Extension;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "Extensions"

.field private static final serialVersionUID:J = -0x655338deaf73921cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/as/model/vast/Extensions;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Extensions;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 38
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v2, Lcom/fusepowered/as/model/vast/Extensions;

    invoke-direct {v2}, Lcom/fusepowered/as/model/vast/Extensions;-><init>()V

    .line 41
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const-string v3, "Extensions"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 43
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "Extension"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/Extension;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Extension;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fusepowered/as/model/vast/Extensions;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 50
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_2
    return-object v2
.end method
