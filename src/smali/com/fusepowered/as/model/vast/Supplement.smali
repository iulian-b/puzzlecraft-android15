.class public final Lcom/fusepowered/as/model/vast/Supplement;
.super Ljava/lang/Object;
.source "Supplement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "Supplement"

.field private static final serialVersionUID:J = -0x142db6331b18c26fL


# instance fields
.field private banner:Lcom/fusepowered/as/model/vast/Banner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Supplement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 30
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v2, Lcom/fusepowered/as/model/vast/Supplement;

    invoke-direct {v2}, Lcom/fusepowered/as/model/vast/Supplement;-><init>()V

    .line 33
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const-string v3, "Supplement"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 35
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 37
    const-string v1, "Banner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/Banner;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Banner;

    move-result-object v0

    iput-object v0, v2, Lcom/fusepowered/as/model/vast/Supplement;->banner:Lcom/fusepowered/as/model/vast/Banner;

    .line 45
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 46
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getBanner()Lcom/fusepowered/as/model/vast/Banner;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Supplement;->banner:Lcom/fusepowered/as/model/vast/Banner;

    return-object v0
.end method
