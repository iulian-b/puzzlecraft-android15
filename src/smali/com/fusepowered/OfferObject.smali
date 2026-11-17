.class public Lcom/fusepowered/OfferObject;
.super Ljava/lang/Object;
.source "OfferObject.java"


# static fields
.field public static final IAP_OFFER:I = 0x33

.field public static final VIRTUAL_GOODS_OFFER:I = 0x34


# instance fields
.field public adZoneID:I

.field public consumed:Z

.field public contentId:I

.field public endTime:Ljava/util/Date;

.field public id:I

.field public itemId:Ljava/lang/String;

.field public itemName:Ljava/lang/String;

.field public itemQuantity:I

.field public offerHtml:Ljava/lang/String;

.field public purchaseCurrency:Ljava/lang/String;

.field public purchasePrice:F

.field public startTime:Ljava/util/Date;

.field public t:I

.field public type:Lcom/fusepowered/OfferType;

.field public vg_currencyID:I

.field public vg_virtualGoodID:I

.field public zoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/OfferObject;->consumed:Z

    return-void
.end method


# virtual methods
.method public consume()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/OfferObject;->consumed:Z

    .line 73
    return-void
.end method

.method public getInfo()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 48
    iget v1, p0, Lcom/fusepowered/OfferObject;->t:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 49
    new-instance v0, Lcom/fusepowered/IAPOfferInfo;

    invoke-direct {v0}, Lcom/fusepowered/IAPOfferInfo;-><init>()V

    .line 50
    .local v0, "info":Lcom/fusepowered/IAPOfferInfo;
    iget v1, p0, Lcom/fusepowered/OfferObject;->itemQuantity:I

    iput v1, v0, Lcom/fusepowered/IAPOfferInfo;->itemAmount:I

    .line 51
    iget v1, p0, Lcom/fusepowered/OfferObject;->purchasePrice:F

    iput v1, v0, Lcom/fusepowered/IAPOfferInfo;->productPrice:F

    .line 52
    iget-object v1, p0, Lcom/fusepowered/OfferObject;->itemName:Ljava/lang/String;

    iput-object v1, v0, Lcom/fusepowered/IAPOfferInfo;->itemName:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/fusepowered/OfferObject;->itemId:Ljava/lang/String;

    iput-object v1, v0, Lcom/fusepowered/IAPOfferInfo;->productID:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/fusepowered/OfferObject;->startTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/fusepowered/IAPOfferInfo;->startTime:Ljava/util/Date;

    .line 55
    iget-object v1, p0, Lcom/fusepowered/OfferObject;->endTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/fusepowered/IAPOfferInfo;->endTime:Ljava/util/Date;

    .line 67
    .end local v0    # "info":Lcom/fusepowered/IAPOfferInfo;
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/fusepowered/VGOfferInfo;

    invoke-direct {v0}, Lcom/fusepowered/VGOfferInfo;-><init>()V

    .line 59
    .local v0, "info":Lcom/fusepowered/VGOfferInfo;
    iget-object v1, p0, Lcom/fusepowered/OfferObject;->purchaseCurrency:Ljava/lang/String;

    iput-object v1, v0, Lcom/fusepowered/VGOfferInfo;->purchaseCurrency:Ljava/lang/String;

    .line 60
    iget v1, p0, Lcom/fusepowered/OfferObject;->purchasePrice:F

    iput v1, v0, Lcom/fusepowered/VGOfferInfo;->purchasePrice:F

    .line 61
    iget-object v1, p0, Lcom/fusepowered/OfferObject;->itemName:Ljava/lang/String;

    iput-object v1, v0, Lcom/fusepowered/VGOfferInfo;->itemName:Ljava/lang/String;

    .line 62
    iget v1, p0, Lcom/fusepowered/OfferObject;->itemQuantity:I

    iput v1, v0, Lcom/fusepowered/VGOfferInfo;->itemAmount:I

    .line 63
    iget v1, p0, Lcom/fusepowered/OfferObject;->vg_virtualGoodID:I

    iput v1, v0, Lcom/fusepowered/VGOfferInfo;->virtualGoodID:I

    .line 64
    iget v1, p0, Lcom/fusepowered/OfferObject;->vg_currencyID:I

    iput v1, v0, Lcom/fusepowered/VGOfferInfo;->currencyID:I

    .line 65
    iget-object v1, p0, Lcom/fusepowered/OfferObject;->startTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/fusepowered/VGOfferInfo;->startTime:Ljava/util/Date;

    .line 66
    iget-object v1, p0, Lcom/fusepowered/OfferObject;->endTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/fusepowered/VGOfferInfo;->endTime:Ljava/util/Date;

    goto :goto_0
.end method
