.class public final Lcom/fusepowered/as/model/vast/MediaFiles;
.super Ljava/util/ArrayList;
.source "MediaFiles.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/fusepowered/as/model/vast/MediaFile;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "MediaFiles"

.field private static final serialVersionUID:J = 0x3c72b4f84e8576f5L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/as/model/vast/MediaFiles;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/MediaFiles;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 31
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v2, Lcom/fusepowered/as/model/vast/MediaFiles;

    invoke-direct {v2}, Lcom/fusepowered/as/model/vast/MediaFiles;-><init>()V

    .line 34
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const-string v3, "MediaFiles"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 36
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "MediaFile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/MediaFile;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/MediaFile;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fusepowered/as/model/vast/MediaFiles;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 43
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_2
    return-object v2
.end method
