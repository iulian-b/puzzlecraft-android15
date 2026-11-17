.class public final Lcom/fusepowered/as/model/vast/LinearCreative;
.super Lcom/fusepowered/as/model/vast/Creative;
.source "LinearCreative.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADPARAMETERS_ELEMENT_NAME:Ljava/lang/String; = "AdParameters"

.field private static final CLICKTHROUGH_ELEMENT_NAME:Ljava/lang/String; = "ClickThrough"

.field private static final CLICK_TRACKING_ELEMENT_NAME:Ljava/lang/String; = "ClickTracking"

.field private static final CUSTOM_CLICK_ELEMENT_NAME:Ljava/lang/String; = "CustomClick"

.field private static final DURATION_ELEMENT_NAME:Ljava/lang/String; = "Duration"

.field public static final ELEMENT_NAME:Ljava/lang/String; = "Linear"

.field private static final SKIP_OFFSET_ATTRIBUTE_NAME:Ljava/lang/String; = "skipoffset"

.field private static final serialVersionUID:J = 0x44609ef98566d10bL


# instance fields
.field private adParameters:Ljava/lang/String;

.field private clickThroughUri:Ljava/lang/String;

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

.field private customClickTrackingUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private duration:Lcom/fusepowered/as/utils/TimeSpan;

.field private mediaFiles:Lcom/fusepowered/as/model/vast/MediaFiles;

.field private skipOffset:Ljava/lang/String;

.field private supplement:Lcom/fusepowered/as/model/vast/Supplement;

.field private trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fusepowered/as/model/vast/Creative;-><init>()V

    .line 43
    new-instance v0, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->clickTrackingUris:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->customClickTrackingUris:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/fusepowered/as/model/vast/MediaFiles;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/MediaFiles;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->mediaFiles:Lcom/fusepowered/as/model/vast/MediaFiles;

    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/LinearCreative;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 112
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v3, Lcom/fusepowered/as/model/vast/LinearCreative;

    invoke-direct {v3}, Lcom/fusepowered/as/model/vast/LinearCreative;-><init>()V

    .line 115
    :goto_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const-string v4, "Linear"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 117
    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 119
    const-string v2, "Linear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    const-string v0, "skipoffset"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/LinearCreative;->skipOffset:Ljava/lang/String;

    .line 189
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 190
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_2
    const-string v2, "Duration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 127
    if-nez v2, :cond_3

    move-object v0, v1

    :goto_2
    iput-object v0, v3, Lcom/fusepowered/as/model/vast/LinearCreative;->duration:Lcom/fusepowered/as/utils/TimeSpan;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/fusepowered/as/utils/TimeSpan;

    invoke-direct {v0, v2}, Lcom/fusepowered/as/utils/TimeSpan;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_4
    const-string v2, "AdParameters"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 131
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 133
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    iput-object v0, v3, Lcom/fusepowered/as/model/vast/LinearCreative;->adParameters:Ljava/lang/String;

    goto :goto_1

    .line 136
    :cond_6
    const-string v2, "TrackingEvents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    iget-object v0, v3, Lcom/fusepowered/as/model/vast/LinearCreative;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-static {p0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 140
    :cond_7
    const-string v2, "ClickThrough"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 143
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 144
    if-nez v0, :cond_8

    move-object v0, v1

    .line 146
    :goto_3
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/LinearCreative;->clickThroughUri:Ljava/lang/String;

    goto :goto_1

    .line 144
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 152
    :cond_9
    const-string v2, "ClickTracking"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 155
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 156
    if-nez v0, :cond_a

    move-object v0, v1

    .line 158
    :goto_4
    if-eqz v0, :cond_1

    .line 160
    iget-object v2, v3, Lcom/fusepowered/as/model/vast/LinearCreative;->clickTrackingUris:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 156
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    .line 164
    :cond_b
    const-string v2, "CustomClick"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 167
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 168
    if-nez v0, :cond_c

    move-object v0, v1

    .line 170
    :goto_5
    if-eqz v0, :cond_1

    .line 172
    iget-object v2, v3, Lcom/fusepowered/as/model/vast/LinearCreative;->customClickTrackingUris:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 168
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5

    .line 177
    :cond_d
    const-string v2, "MediaFiles"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 179
    iget-object v0, v3, Lcom/fusepowered/as/model/vast/LinearCreative;->mediaFiles:Lcom/fusepowered/as/model/vast/MediaFiles;

    invoke-static {p0}, Lcom/fusepowered/as/model/vast/MediaFiles;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/MediaFiles;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/model/vast/MediaFiles;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 181
    :cond_e
    const-string v2, "Supplement"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/Supplement;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Supplement;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/LinearCreative;->supplement:Lcom/fusepowered/as/model/vast/Supplement;

    goto/16 :goto_1

    .line 194
    :cond_f
    return-object v3
.end method


# virtual methods
.method public getAdParameters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->adParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getClickThroughUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->clickThroughUri:Ljava/lang/String;

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
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->clickTrackingUris:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCustomClickTrackingUris()Ljava/util/List;
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
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->customClickTrackingUris:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDuration()Lcom/fusepowered/as/utils/TimeSpan;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->duration:Lcom/fusepowered/as/utils/TimeSpan;

    return-object v0
.end method

.method public getMediaFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/as/model/vast/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->mediaFiles:Lcom/fusepowered/as/model/vast/MediaFiles;

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->skipOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplement()Lcom/fusepowered/as/model/vast/Supplement;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->supplement:Lcom/fusepowered/as/model/vast/Supplement;

    return-object v0
.end method

.method public getTrackingEvents()Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    return-object v0
.end method

.method public getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 4

    .prologue
    .line 70
    new-instance v1, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/LinearCreative;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/TrackingEvent;

    .line 75
    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getEventType()Lcom/fusepowered/as/model/vast/EventType;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/fusepowered/as/model/vast/EventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v1, v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_1
    return-object v1
.end method
