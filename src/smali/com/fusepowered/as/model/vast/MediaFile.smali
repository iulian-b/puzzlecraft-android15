.class public final Lcom/fusepowered/as/model/vast/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final API_FRAMEWORK_ATTRIBUTE_NAME:Ljava/lang/String; = "apiFramework"

.field private static final DELIVERY_ATTRIBUTE_NAME:Ljava/lang/String; = "delivery"

.field public static final ELEMENT_NAME:Ljava/lang/String; = "MediaFile"

.field private static final HEIGHT_ATTRIBUTE_NAME:Ljava/lang/String; = "height"

.field private static final MIME_TYPE_ATTRIBUTE_NAME:Ljava/lang/String; = "type"

.field public static final VPAID_API_FRAMEWORK:Ljava/lang/String; = "VPAID"

.field private static final WIDTH_ATTRIBUTE_NAME:Ljava/lang/String; = "width"

.field private static final serialVersionUID:J = -0x7949459ed2c539b9L


# instance fields
.field private apiFramework:Ljava/lang/String;

.field private deliveryMethod:Lcom/fusepowered/as/model/vast/DeliveryMethod;

.field private height:I

.field private mediaUri:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/MediaFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 77
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v3, Lcom/fusepowered/as/model/vast/MediaFile;

    invoke-direct {v3}, Lcom/fusepowered/as/model/vast/MediaFile;-><init>()V

    .line 88
    :goto_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const-string v2, "MediaFile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "delivery"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/as/model/vast/DeliveryMethod;->get(Ljava/lang/String;)Lcom/fusepowered/as/model/vast/DeliveryMethod;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/MediaFile;->deliveryMethod:Lcom/fusepowered/as/model/vast/DeliveryMethod;

    .line 93
    const-string v0, "width"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/as/utils/VASTUtils;->safeToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/fusepowered/as/model/vast/MediaFile;->width:I

    .line 94
    const-string v0, "height"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/as/utils/VASTUtils;->safeToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/fusepowered/as/model/vast/MediaFile;->height:I

    .line 95
    const-string v0, "apiFramework"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/MediaFile;->apiFramework:Ljava/lang/String;

    .line 96
    const-string v0, "type"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    move-object v0, v1

    .line 101
    :goto_1
    const-string v2, "mp4"

    .line 102
    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/fusepowered/as/model/vast/MediaFile;->mediaUri:Ljava/lang/String;

    .line 104
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, ".*\\."

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ge v5, v6, :cond_3

    .line 108
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/fusepowered/as/utils/VASTUtils;->getOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/fusepowered/as/model/vast/MediaFile;->mimeType:Ljava/lang/String;

    .line 109
    const-class v0, Lcom/fusepowered/as/model/vast/MediaFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimeType determined to be: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/fusepowered/as/model/vast/MediaFile;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fusepowered/as/utils/AerServLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 119
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 121
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    const-string v4, "MediaFile"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    return-object v3

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_3

    :cond_2
    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method


# virtual methods
.method public getApiFramework()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/MediaFile;->apiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryMethod()Lcom/fusepowered/as/model/vast/DeliveryMethod;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/MediaFile;->deliveryMethod:Lcom/fusepowered/as/model/vast/DeliveryMethod;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/fusepowered/as/model/vast/MediaFile;->height:I

    return v0
.end method

.method public getMediaUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/MediaFile;->mediaUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/MediaFile;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/fusepowered/as/model/vast/MediaFile;->width:I

    return v0
.end method
