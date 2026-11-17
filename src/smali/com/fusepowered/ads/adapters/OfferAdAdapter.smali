.class public abstract Lcom/fusepowered/ads/adapters/OfferAdAdapter;
.super Lcom/fusepowered/ads/adapters/MRaidAdAdapter;
.source "OfferAdAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OfferAdAdapter"


# instance fields
.field private offer:Lcom/fusepowered/OfferObject;

.field private offerAccepted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;-><init>(Landroid/content/Context;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public displayAd()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->isAdAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :cond_0
    sget-object v2, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 84
    :goto_0
    return v1

    .line 77
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->activity:Landroid/app/Activity;

    const-class v3, Lcom/fusepowered/ads/adapters/MRaidActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "registryId"

    iget v3, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->registryId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v2, "rotate"

    iget v3, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->rotateMode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 82
    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->hasReportedClose:Z

    .line 83
    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->loaded:Z

    .line 84
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract getOfferObject()Lcom/fusepowered/OfferObject;
.end method

.method public isAdAvailable()Z
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->getOfferObject()Lcom/fusepowered/OfferObject;

    move-result-object v0

    .line 91
    .local v0, "currentOffer":Lcom/fusepowered/OfferObject;
    invoke-super {p0}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->isAdAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 92
    .local v1, "isAvailable":Z
    :goto_0
    return v1

    .line 91
    .end local v1    # "isAvailable":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->getOfferObject()Lcom/fusepowered/OfferObject;

    move-result-object v7

    .line 44
    .local v7, "currentOffer":Lcom/fusepowered/OfferObject;
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    if-ne v7, v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->loaded:Z

    if-eqz v0, :cond_0

    move v0, v8

    .line 65
    :goto_0
    return v0

    .line 47
    :cond_0
    iput-object v7, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    .line 50
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    if-nez v0, :cond_2

    .line 51
    :cond_1
    iput-boolean v9, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->loaded:Z

    move v0, v9

    .line 52
    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    iget-boolean v0, v0, Lcom/fusepowered/OfferObject;->consumed:Z

    if-eqz v0, :cond_3

    .line 56
    const-string v0, "OfferAdAdapter"

    const-string v1, "Offer already consumed, will not load again"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 57
    goto :goto_0

    .line 60
    :cond_3
    iput-object v6, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 61
    iput-boolean v9, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->loaded:Z

    .line 62
    new-instance v0, Lcom/fusepowered/mraid1/MRAIDInterstitial;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->activity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    iget-object v3, v3, Lcom/fusepowered/OfferObject;->offerHtml:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/mraid1/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/fusepowered/mraid1/MRAIDInterstitialListener;Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .line 63
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->interstitial:Lcom/fusepowered/mraid1/MRAIDInterstitial;

    iget v1, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->rotateMode:I

    invoke-virtual {v0, v1}, Lcom/fusepowered/mraid1/MRAIDInterstitial;->setOrientationConfig(I)V

    .line 64
    iput-boolean v9, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offerAccepted:Z

    move v0, v8

    .line 65
    goto :goto_0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public mraidInterstitialAcceptPressed(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V
    .locals 2
    .param p1, "mraidInterstitial"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    .line 122
    const-string v0, "OfferAdAdapter"

    const-string v1, "Offer Accepted"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    invoke-interface {v0, p0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onOfferAccepted(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/OfferObject;)V

    .line 126
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offerAccepted:Z

    .line 127
    return-void
.end method

.method public mraidInterstitialHide(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V
    .locals 2
    .param p1, "mraidInterstitial"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->mraidInterstitialHide(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V

    .line 132
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offerAccepted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    invoke-interface {v0, p0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onOfferRejected(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/OfferObject;)V

    .line 135
    :cond_0
    return-void
.end method

.method public mraidInterstitialRejectPressed(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V
    .locals 2
    .param p1, "mraidInterstitial"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    .line 139
    const-string v0, "OfferAdAdapter"

    const-string v1, "Offer Rejected"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public mraidInterstitialShow(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V
    .locals 2
    .param p1, "mraidInterstitial"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    .line 113
    const-string v0, "OfferAdAdapter"

    const-string v1, "Offer Displayed"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    invoke-interface {v0, p0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/OfferObject;)V

    .line 116
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/OfferAdAdapter;->offer:Lcom/fusepowered/OfferObject;

    invoke-interface {v0, p0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onOfferDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/OfferObject;)V

    .line 118
    :cond_0
    return-void
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method
