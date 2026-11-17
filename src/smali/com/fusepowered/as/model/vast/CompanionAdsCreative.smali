.class public final Lcom/fusepowered/as/model/vast/CompanionAdsCreative;
.super Lcom/fusepowered/as/model/vast/Creative;
.source "CompanionAdsCreative.java"


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "CompanionAds"

.field private static final REQUIRED_ATTRIBUTE_NAME:Ljava/lang/String; = "required"

.field private static final serialVersionUID:J = -0x2d9721db3d5f18a7L


# instance fields
.field private companionAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/as/model/vast/CompanionAd;",
            ">;"
        }
    .end annotation
.end field

.field private companionAdsRequirement:Lcom/fusepowered/as/model/vast/CompanionAdsRequirement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fusepowered/as/model/vast/Creative;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;->companionAds:Ljava/util/List;

    return-void
.end method

.method public static createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/CompanionAdsCreative;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 38
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v2, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;

    invoke-direct {v2}, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;-><init>()V

    .line 41
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const-string v1, "CompanionAds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 43
    :cond_0
    const-string v1, "CompanionAds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    const/4 v0, 0x0

    const-string v1, "required"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/as/model/vast/CompanionAdsRequirement;->get(Ljava/lang/String;)Lcom/fusepowered/as/model/vast/CompanionAdsRequirement;

    move-result-object v0

    iput-object v0, v2, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;->companionAdsRequirement:Lcom/fusepowered/as/model/vast/CompanionAdsRequirement;

    .line 50
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 51
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_2
    const-string v1, "Companion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, v2, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;->companionAds:Ljava/util/List;

    invoke-static {p0}, Lcom/fusepowered/as/model/vast/CompanionAd;->createFromParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fusepowered/as/model/vast/CompanionAd;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_3
    return-object v2
.end method


# virtual methods
.method public getCompanionAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/as/model/vast/CompanionAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;->companionAds:Ljava/util/List;

    return-object v0
.end method

.method public getCompanionAdsRequirement()Lcom/fusepowered/as/model/vast/CompanionAdsRequirement;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;->companionAdsRequirement:Lcom/fusepowered/as/model/vast/CompanionAdsRequirement;

    return-object v0
.end method
