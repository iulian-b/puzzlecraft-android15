.class public final Lcom/fusepowered/as/model/vast/NonLinearAd;
.super Ljava/lang/Object;
.source "NonLinearAd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "NonLinear"

.field private static final HEIGHT_ATTRIBUTE_NAME:Ljava/lang/String; = "height"

.field private static final ID_ATTRIBUTE_NAME:Ljava/lang/String; = "id"

.field private static final NONLINEAR_CLICKTHROUGH_ELEMENT_NAME:Ljava/lang/String; = "NonLinearClickThrough"

.field private static final NONLINEAR_CLICK_TRACKING_ELEMENT_NAME:Ljava/lang/String; = "NonLinearClickTracking"

.field private static final STATIC_AD_CREATIVE_TYPE_ATTRIBUTE_NAME:Ljava/lang/String; = "creativeType"

.field private static final WIDTH_ATTRIBUTE_NAME:Ljava/lang/String; = "width"

.field private static final serialVersionUID:J = -0x2b9a086dc8415db0L


# instance fields
.field private adResource:Lcom/fusepowered/as/model/vast/AdResource;

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

.field private height:I

.field private id:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/NonLinearAd;->clickTrackingUris:Ljava/util/List;

    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/NonLinearAd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 75
    new-instance v3, Lcom/fusepowered/as/model/vast/NonLinearAd;

    invoke-direct {v3}, Lcom/fusepowered/as/model/vast/NonLinearAd;-><init>()V

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const-string v4, "NonLinear"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 80
    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const-string v2, "NonLinear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    const-string v0, "width"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/fusepowered/as/model/vast/NonLinearAd;->width:I

    .line 83
    const-string v0, "height"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/fusepowered/as/model/vast/NonLinearAd;->height:I

    .line 84
    const-string v0, "id"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/NonLinearAd;->id:Ljava/lang/String;

    .line 148
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 149
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_2
    const-string v2, "StaticResource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    new-instance v2, Lcom/fusepowered/as/model/vast/StaticAdResource;

    invoke-direct {v2}, Lcom/fusepowered/as/model/vast/StaticAdResource;-><init>()V

    .line 89
    const-string v0, "creativeType"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fusepowered/as/model/vast/StaticAdResource;->setMimeType(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 92
    if-nez v0, :cond_4

    move-object v0, v1

    .line 94
    :goto_2
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fusepowered/as/model/vast/StaticAdResource;->setResourceUri(Ljava/lang/String;)V

    .line 100
    :cond_3
    iput-object v2, v3, Lcom/fusepowered/as/model/vast/NonLinearAd;->adResource:Lcom/fusepowered/as/model/vast/AdResource;

    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 102
    :cond_5
    const-string v2, "IFrameResource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 104
    new-instance v2, Lcom/fusepowered/as/model/vast/IFrameAdResource;

    invoke-direct {v2}, Lcom/fusepowered/as/model/vast/IFrameAdResource;-><init>()V

    .line 106
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 107
    if-nez v0, :cond_7

    move-object v0, v1

    .line 109
    :goto_3
    if-eqz v0, :cond_6

    .line 111
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fusepowered/as/model/vast/IFrameAdResource;->setiFrameUri(Ljava/lang/String;)V

    .line 115
    :cond_6
    iput-object v2, v3, Lcom/fusepowered/as/model/vast/NonLinearAd;->adResource:Lcom/fusepowered/as/model/vast/AdResource;

    goto :goto_1

    .line 107
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 117
    :cond_8
    const-string v2, "HTMLResource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 119
    new-instance v0, Lcom/fusepowered/as/model/vast/HTMLAdResource;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/HTMLAdResource;-><init>()V

    .line 120
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/model/vast/HTMLAdResource;->setHtml(Ljava/lang/String;)V

    .line 122
    iput-object v0, v3, Lcom/fusepowered/as/model/vast/NonLinearAd;->adResource:Lcom/fusepowered/as/model/vast/AdResource;

    goto :goto_1

    .line 124
    :cond_9
    const-string v2, "NonLinearClickTracking"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 126
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 127
    if-nez v0, :cond_a

    move-object v0, v1

    .line 129
    :goto_4
    if-eqz v0, :cond_1

    .line 131
    iget-object v2, v3, Lcom/fusepowered/as/model/vast/NonLinearAd;->clickTrackingUris:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 127
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    .line 135
    :cond_b
    const-string v2, "NonLinearClickThrough"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 138
    if-nez v0, :cond_c

    move-object v0, v1

    .line 140
    :goto_5
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/NonLinearAd;->clickThrough:Ljava/lang/String;

    goto/16 :goto_1

    .line 138
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5

    .line 153
    :cond_d
    return-object v3
.end method


# virtual methods
.method public getAdResource()Lcom/fusepowered/as/model/vast/AdResource;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/NonLinearAd;->adResource:Lcom/fusepowered/as/model/vast/AdResource;

    return-object v0
.end method

.method public getClickThrough()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/NonLinearAd;->clickThrough:Ljava/lang/String;

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
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/as/model/vast/NonLinearAd;->clickTrackingUris:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/fusepowered/as/model/vast/NonLinearAd;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/NonLinearAd;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/fusepowered/as/model/vast/NonLinearAd;->width:I

    return v0
.end method
