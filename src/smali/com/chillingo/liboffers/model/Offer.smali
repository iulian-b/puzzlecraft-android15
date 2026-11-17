.class public Lcom/chillingo/liboffers/model/Offer;
.super Ljava/lang/Object;
.source "Offer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/model/Offer$OfferType;
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static DEFAULT_OFFERS_CACHE_EXPIRATION_TIME_MILLIS:Ljava/lang/Long; = null

.field private static final OFFER_TYPE_AMAZON:Ljava/lang/String; = "amazon"

.field private static final OFFER_TYPE_GOOGLEPLAY:Ljava/lang/String; = "googleplay"

.field private static final OFFER_TYPE_HREF:Ljava/lang/String; = "weblink"

.field private static final OFFER_TYPE_INTERSTITIAL:Ljava/lang/String; = "interstitial"

.field private static final OFFER_TYPE_SAMSUNG:Ljava/lang/String; = "samsung"

.field private static final serialVersionUID:J = -0x32bfb367f7efa119L


# instance fields
.field private affiliateRedirectUrl:Ljava/lang/String;

.field private bitmapData:[B

.field private embeddedWebView:Ljava/lang/Boolean;

.field private href:Ljava/lang/String;

.field private htmlPackage:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private image:Ljava/lang/String;

.field private imageName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private targetBundleId:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private weightedPriority:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/32 v0, 0xdbba00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/chillingo/liboffers/model/Offer;->DEFAULT_OFFERS_CACHE_EXPIRATION_TIME_MILLIS:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public defaultExpiryDate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 77
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 78
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v1, Lcom/chillingo/liboffers/model/Offer;->DEFAULT_OFFERS_CACHE_EXPIRATION_TIME_MILLIS:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 79
    return-object v0
.end method

.method public getAffiliateRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->affiliateRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmapData()[B
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->bitmapData:[B

    return-object v0
.end method

.method public getEmbeddedWebView()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->embeddedWebView:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->htmlPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferType()Lcom/chillingo/liboffers/model/Offer$OfferType;
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/chillingo/liboffers/model/Offer;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/liboffers/model/Offer;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No offer type set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_1
    sget-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_UNKNOWN:Lcom/chillingo/liboffers/model/Offer$OfferType;

    .line 122
    .local v0, "ot":Lcom/chillingo/liboffers/model/Offer$OfferType;
    iget-object v1, p0, Lcom/chillingo/liboffers/model/Offer;->type:Ljava/lang/String;

    const-string v2, "weblink"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    sget-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_HREF:Lcom/chillingo/liboffers/model/Offer$OfferType;

    .line 133
    :cond_2
    :goto_0
    return-object v0

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/chillingo/liboffers/model/Offer;->type:Ljava/lang/String;

    const-string v2, "interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    sget-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_INTERSTITIAL:Lcom/chillingo/liboffers/model/Offer$OfferType;

    goto :goto_0

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/chillingo/liboffers/model/Offer;->type:Ljava/lang/String;

    const-string v2, "googleplay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    sget-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_GOOGLEPLAY:Lcom/chillingo/liboffers/model/Offer$OfferType;

    goto :goto_0

    .line 128
    :cond_5
    iget-object v1, p0, Lcom/chillingo/liboffers/model/Offer;->type:Ljava/lang/String;

    const-string v2, "amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    sget-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_AMAZON:Lcom/chillingo/liboffers/model/Offer$OfferType;

    goto :goto_0

    .line 130
    :cond_6
    iget-object v1, p0, Lcom/chillingo/liboffers/model/Offer;->type:Ljava/lang/String;

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    sget-object v0, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_SAMSUNG:Lcom/chillingo/liboffers/model/Offer$OfferType;

    goto :goto_0
.end method

.method public getPurgableBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 221
    iget-object v1, p0, Lcom/chillingo/liboffers/model/Offer;->bitmapData:[B

    if-nez v1, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 231
    :goto_0
    return-object v1

    .line 225
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 228
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 229
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 231
    iget-object v1, p0, Lcom/chillingo/liboffers/model/Offer;->bitmapData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/chillingo/liboffers/model/Offer;->bitmapData:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getTargetBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->targetBundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWeightedPriority()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/chillingo/liboffers/model/Offer;->weightedPriority:Ljava/lang/Double;

    return-object v0
.end method

.method public readyToDisplay()Z
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "ready":Z
    iget-object v1, p0, Lcom/chillingo/liboffers/model/Offer;->bitmapData:[B

    if-eqz v1, :cond_0

    .line 241
    const/4 v0, 0x1

    .line 244
    :cond_0
    return v0
.end method

.method public setAffiliateRedirectUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "affiliateRedirectUrl"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->affiliateRedirectUrl:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setBitmapData([B)V
    .locals 0
    .param p1, "bitmapData"    # [B

    .prologue
    .line 207
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->bitmapData:[B

    .line 208
    return-void
.end method

.method public setEmbeddedWebView(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "embeddedWebView"    # Ljava/lang/Boolean;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->embeddedWebView:Ljava/lang/Boolean;

    .line 192
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->href:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setHtmlPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "htmlPackage"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->htmlPackage:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->id:Ljava/lang/Long;

    .line 168
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->image:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->imageName:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->name:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setTargetBundleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetBundleId"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->targetBundleId:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->type:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setWeightedPriority(Ljava/lang/Double;)V
    .locals 0
    .param p1, "weightedPriority"    # Ljava/lang/Double;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/chillingo/liboffers/model/Offer;->weightedPriority:Ljava/lang/Double;

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Offer{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/Offer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/Offer;->id:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", targetBundleId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/Offer;->targetBundleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", href=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/Offer;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", imageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/Offer;->imageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", image=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/Offer;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/Offer;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", htmlPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/Offer;->htmlPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", embeddedWebView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/Offer;->embeddedWebView:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", weightedPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/model/Offer;->weightedPriority:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
