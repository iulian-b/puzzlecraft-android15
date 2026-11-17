.class public final Lcom/fusepowered/as/model/vast/Creatives;
.super Ljava/util/TreeSet;
.source "Creatives.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet",
        "<",
        "Lcom/fusepowered/as/model/vast/Creative;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final AD_ID_ATTRIBUTE_NAME:Ljava/lang/String; = "AdID"

.field public static final ELEMENT_NAME:Ljava/lang/String; = "Creatives"

.field public static final ID_ATTRIBUTE_NAME:Ljava/lang/String; = "id"

.field public static final SEQUENCE_ATTRIBUTE_NAME:Ljava/lang/String; = "sequence"

.field private static final serialVersionUID:J = 0x79c184d65f86e9e5L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/as/model/vast/Creatives;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 31
    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/Creatives;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 37
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v6, Lcom/fusepowered/as/model/vast/Creatives;

    invoke-direct {v6}, Lcom/fusepowered/as/model/vast/Creatives;-><init>()V

    move-object v2, v3

    move-object v4, v0

    move v5, v1

    move-object v1, v3

    move-object v0, v3

    .line 43
    :goto_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_0

    const-string v7, "Creatives"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 45
    :cond_0
    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    .line 47
    const-string v5, "Creative"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 49
    const-string v0, "id"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    const-string v0, "AdID"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v0, "sequence"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    move-object v0, v3

    .line 87
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 88
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 53
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 57
    :cond_4
    const-string v5, "Linear"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 59
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/LinearCreative;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v4

    .line 60
    iput-object v2, v4, Lcom/fusepowered/as/model/vast/LinearCreative;->creativeId:Ljava/lang/String;

    .line 61
    iput-object v1, v4, Lcom/fusepowered/as/model/vast/LinearCreative;->adId:Ljava/lang/String;

    .line 62
    iput-object v0, v4, Lcom/fusepowered/as/model/vast/LinearCreative;->sequencePosition:Ljava/lang/Integer;

    .line 64
    invoke-virtual {v6, v4}, Lcom/fusepowered/as/model/vast/Creatives;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_5
    const-string v5, "CompanionAds"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 68
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/CompanionAdsCreative;

    move-result-object v4

    .line 69
    iput-object v2, v4, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;->creativeId:Ljava/lang/String;

    .line 70
    iput-object v1, v4, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;->adId:Ljava/lang/String;

    .line 71
    iput-object v0, v4, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;->sequencePosition:Ljava/lang/Integer;

    .line 73
    invoke-virtual {v6, v4}, Lcom/fusepowered/as/model/vast/Creatives;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_6
    const-string v5, "NonLinearAds"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    invoke-static {p0}, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;

    move-result-object v4

    .line 78
    iput-object v2, v4, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->creativeId:Ljava/lang/String;

    .line 79
    iput-object v1, v4, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->adId:Ljava/lang/String;

    .line 80
    iput-object v0, v4, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->sequencePosition:Ljava/lang/Integer;

    .line 82
    invoke-virtual {v6, v4}, Lcom/fusepowered/as/model/vast/Creatives;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_7
    return-object v6
.end method
