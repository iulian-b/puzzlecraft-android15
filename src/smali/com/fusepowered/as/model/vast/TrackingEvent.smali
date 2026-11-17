.class public final Lcom/fusepowered/as/model/vast/TrackingEvent;
.super Ljava/lang/Object;
.source "TrackingEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "Tracking"

.field private static final EVENT_ATTRIBUTE_NAME:Ljava/lang/String; = "event"

.field private static final OFFSET_ATTRIBUTE_NAME:Ljava/lang/String; = "offset"


# instance fields
.field private eventType:Lcom/fusepowered/as/model/vast/EventType;

.field private offset:Lcom/fusepowered/as/utils/TimeSpan;

.field private trackingUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/TrackingEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 47
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v3, Lcom/fusepowered/as/model/vast/TrackingEvent;

    invoke-direct {v3}, Lcom/fusepowered/as/model/vast/TrackingEvent;-><init>()V

    .line 58
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    const-string v1, "Tracking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    const-string v0, "event"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/as/model/vast/EventType;->get(Ljava/lang/String;)Lcom/fusepowered/as/model/vast/EventType;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/TrackingEvent;->eventType:Lcom/fusepowered/as/model/vast/EventType;

    .line 61
    const-string v0, "offset"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->setOffset(Ljava/lang/String;)V

    .line 63
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 64
    if-nez v0, :cond_2

    move-object v0, v2

    .line 66
    :goto_0
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/TrackingEvent;->trackingUri:Ljava/lang/String;

    .line 70
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 71
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const-string v4, "Tracking"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    return-object v3

    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1
.end method

.method private setOffset(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/fusepowered/as/model/vast/TrackingEvent;->offset:Lcom/fusepowered/as/utils/TimeSpan;

    .line 30
    return-void

    .line 29
    :cond_0
    new-instance v0, Lcom/fusepowered/as/utils/TimeSpan;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/utils/TimeSpan;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getEventType()Lcom/fusepowered/as/model/vast/EventType;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/TrackingEvent;->eventType:Lcom/fusepowered/as/model/vast/EventType;

    return-object v0
.end method

.method public getOffset()Lcom/fusepowered/as/utils/TimeSpan;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/TrackingEvent;->offset:Lcom/fusepowered/as/utils/TimeSpan;

    return-object v0
.end method

.method public getTrackingUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/TrackingEvent;->trackingUri:Ljava/lang/String;

    return-object v0
.end method
