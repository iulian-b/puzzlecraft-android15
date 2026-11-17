.class public Lcom/fusepowered/ads/adapters/IAPOfferAdAdapter;
.super Lcom/fusepowered/ads/adapters/OfferAdAdapter;
.source "IAPOfferAdAdapter.java"


# static fields
.field public static final name:Ljava/lang/String; = "IAPOffer"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/OfferAdAdapter;-><init>(Landroid/content/Context;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "IAPOffer"

    return-object v0
.end method

.method public getOfferObject()Lcom/fusepowered/OfferObject;
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getAdManager()Lcom/fusepowered/ads/AdManager;

    move-result-object v0

    .line 29
    .local v0, "adManager":Lcom/fusepowered/ads/AdManager;
    invoke-virtual {v0}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZone()Lcom/fusepowered/ads/AdZone;

    move-result-object v1

    .line 30
    .local v1, "adZone":Lcom/fusepowered/ads/AdZone;
    iget-object v2, v1, Lcom/fusepowered/ads/AdZone;->IAPOfferObject:Lcom/fusepowered/OfferObject;

    return-object v2
.end method
