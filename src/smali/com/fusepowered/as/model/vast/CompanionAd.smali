.class public final Lcom/fusepowered/as/model/vast/CompanionAd;
.super Ljava/lang/Object;
.source "CompanionAd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final COMPANION_CLICKTHROUGH_ELEMENT_NAME:Ljava/lang/String; = "CompanionClickThrough"

.field private static final COMPANION_CLICK_TRACKING_ELEMENT_NAME:Ljava/lang/String; = "CompanionClickTracking"

.field public static final ELEMENT_NAME:Ljava/lang/String; = "Companion"

.field private static final HEIGHT_ATTRIBUTE_NAME:Ljava/lang/String; = "height"

.field private static final ID_ATTRIBUTE_NAME:Ljava/lang/String; = "id"

.field private static final STATIC_AD_CREATIVE_TYPE_ATTRIBUTE_NAME:Ljava/lang/String; = "creativeType"

.field private static final WIDTH_ATTRIBUTE_NAME:Ljava/lang/String; = "width"

.field private static final serialVersionUID:J = -0x172c29a534068544L


# instance fields
.field private clickThrough:Ljava/lang/String;

.field private clickTrackingUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private creativeViewTrackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

.field private height:I

.field private id:Ljava/lang/String;

.field private resource:Lcom/fusepowered/as/model/vast/AdResource;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/CompanionAd;->creativeViewTrackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/CompanionAd;->clickTrackingUris:Ljava/util/List;

    return-void
.end method

.method private addCreativeViewTrackingEvents(Lcom/fusepowered/as/model/vast/TrackingEvents;)V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/TrackingEvents;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/TrackingEvent;

    .line 51
    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getEventType()Lcom/fusepowered/as/model/vast/EventType;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/as/model/vast/EventType;->CREATIVE_VIEW:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/model/vast/EventType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/fusepowered/as/model/vast/CompanionAd;->creativeViewTrackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-virtual {v2, v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/CompanionAd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 91
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v3, Lcom/fusepowered/as/model/vast/CompanionAd;

    invoke-direct {v3}, Lcom/fusepowered/as/model/vast/CompanionAd;-><init>()V

    .line 94
    :goto_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const-string v4, "Companion"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 96
    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 98
    const-string v2, "Companion"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const-string v0, "width"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/fusepowered/as/model/vast/CompanionAd;->width:I

    .line 101
    const-string v0, "height"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/fusepowered/as/model/vast/CompanionAd;->height:I

    .line 102
    const-string v0, "id"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/CompanionAd;->id:Ljava/lang/String;

    .line 157
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 158
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_2
    const-string v2, "StaticResource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    new-instance v0, Lcom/fusepowered/as/model/vast/StaticAdResource;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/StaticAdResource;-><init>()V

    .line 107
    const-string v2, "creativeType"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/model/vast/StaticAdResource;->setMimeType(Ljava/lang/String;)V

    .line 110
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/model/vast/StaticAdResource;->setResourceUri(Ljava/lang/String;)V

    .line 112
    iput-object v0, v3, Lcom/fusepowered/as/model/vast/CompanionAd;->resource:Lcom/fusepowered/as/model/vast/AdResource;

    goto :goto_1

    .line 114
    :cond_3
    const-string v2, "IFrameResource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    new-instance v0, Lcom/fusepowered/as/model/vast/IFrameAdResource;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/IFrameAdResource;-><init>()V

    .line 117
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/model/vast/IFrameAdResource;->setiFrameUri(Ljava/lang/String;)V

    .line 119
    iput-object v0, v3, Lcom/fusepowered/as/model/vast/CompanionAd;->resource:Lcom/fusepowered/as/model/vast/AdResource;

    goto :goto_1

    .line 121
    :cond_4
    const-string v2, "HTMLResource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 123
    new-instance v0, Lcom/fusepowered/as/model/vast/HTMLAdResource;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/HTMLAdResource;-><init>()V

    .line 124
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/model/vast/HTMLAdResource;->setHtml(Ljava/lang/String;)V

    .line 126
    iput-object v0, v3, Lcom/fusepowered/as/model/vast/CompanionAd;->resource:Lcom/fusepowered/as/model/vast/AdResource;

    goto :goto_1

    .line 128
    :cond_5
    const-string v2, "TrackingEvents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/fusepowered/as/model/vast/CompanionAd;->addCreativeViewTrackingEvents(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    goto :goto_1

    .line 132
    :cond_6
    const-string v2, "CompanionClickThrough"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 134
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 135
    if-nez v0, :cond_7

    move-object v0, v1

    .line 137
    :goto_2
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/CompanionAd;->clickThrough:Ljava/lang/String;

    goto/16 :goto_1

    .line 135
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 143
    :cond_8
    const-string v2, "CompanionClickTracking"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 146
    if-nez v0, :cond_9

    move-object v0, v1

    .line 148
    :goto_3
    if-eqz v0, :cond_1

    .line 150
    iget-object v2, v3, Lcom/fusepowered/as/model/vast/CompanionAd;->clickTrackingUris:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 146
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 162
    :cond_a
    return-object v3
.end method


# virtual methods
.method public getClickThrough()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/CompanionAd;->clickThrough:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackingUris()Ljava/util/List;
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
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/CompanionAd;->clickTrackingUris:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCreativeViewTrackingEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/as/model/vast/TrackingEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/CompanionAd;->creativeViewTrackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/fusepowered/as/model/vast/CompanionAd;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/CompanionAd;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Lcom/fusepowered/as/model/vast/AdResource;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/CompanionAd;->resource:Lcom/fusepowered/as/model/vast/AdResource;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/fusepowered/as/model/vast/CompanionAd;->width:I

    return v0
.end method
