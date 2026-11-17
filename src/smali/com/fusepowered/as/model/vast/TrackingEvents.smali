.class public final Lcom/fusepowered/as/model/vast/TrackingEvents;
.super Ljava/util/ArrayList;
.source "TrackingEvents.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/fusepowered/as/model/vast/TrackingEvent;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "TrackingEvents"

.field private static final serialVersionUID:J = -0x62d9bc40f0e6b89eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
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
    new-instance v2, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    .line 34
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const-string v3, "TrackingEvents"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 36
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "Tracking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/TrackingEvent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->add(Ljava/lang/Object;)Z

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
