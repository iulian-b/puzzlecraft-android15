.class public final Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;
.super Lcom/fusepowered/as/model/vast/Creative;
.source "NonLinearAdsCreative.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "NonLinearAds"

.field private static final serialVersionUID:J = -0x3bdb8d59f829d9e3L


# instance fields
.field private nonLinearAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/as/model/vast/NonLinearAd;",
            ">;"
        }
    .end annotation
.end field

.field private trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fusepowered/as/model/vast/Creative;-><init>()V

    .line 23
    new-instance v0, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->nonLinearAds:Ljava/util/List;

    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    .line 56
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v2, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;

    invoke-direct {v2}, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;-><init>()V

    .line 59
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const-string v1, "NonLinearAds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    :cond_0
    const-string v1, "TrackingEvents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v0, v2, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-static {p0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 68
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_2
    const-string v1, "NonLinear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, v2, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->nonLinearAds:Ljava/util/List;

    invoke-static {p0}, Lcom/fusepowered/as/model/vast/NonLinearAd;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/NonLinearAd;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_3
    return-object v2
.end method


# virtual methods
.method public getNonLinearAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/as/model/vast/NonLinearAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->nonLinearAds:Ljava/util/List;

    return-object v0
.end method

.method public getTrackingEvents()Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/fusepowered/as/model/vast/TrackingEvents;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    return-object v0
.end method

.method public getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 4

    .prologue
    .line 29
    new-instance v1, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    .line 31
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

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

    .line 32
    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getEventType()Lcom/fusepowered/as/model/vast/EventType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/fusepowered/as/model/vast/EventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v1, v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    return-object v1
.end method
