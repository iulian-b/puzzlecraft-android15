.class public Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;
.super Ljava/lang/Object;
.source "RichMediaResponseData.java"


# instance fields
.field private CDNs:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "CDNs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private base64HtmlContent:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Content"
    .end annotation
.end field

.field private offerIds:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "OfferIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewTimeOut:J
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ViewTimeout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase64HtmlContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;->base64HtmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferIds()Ljava/util/List;
    .locals 1
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
    .line 23
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;->offerIds:Ljava/util/List;

    return-object v0
.end method

.method public getViewTimeOut()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/fusepowered/nx/monetization/business/RichMediaResponseData;->viewTimeOut:J

    return-wide v0
.end method
