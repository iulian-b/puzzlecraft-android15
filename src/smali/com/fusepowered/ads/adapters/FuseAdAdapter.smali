.class public Lcom/fusepowered/ads/adapters/FuseAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "FuseAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FuseAdAdapter"

.field public static final name:Ljava/lang/String; = "Fuse"


# instance fields
.field private action:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private adId:Ljava/lang/Integer;

.field private clickBeacon:Ljava/lang/String;

.field private htmlBody:Ljava/lang/String;

.field private impressionBeacon:Ljava/lang/String;

.field private final interstitialFactory:Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;

.field private orientation:Ljava/lang/Integer;

.field private size:Lcom/fusepowered/ads/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 37
    new-instance v0, Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;

    invoke-direct {v0}, Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->interstitialFactory:Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->adId:Ljava/lang/Integer;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->orientation:Ljava/lang/Integer;

    .line 40
    return-void
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 218
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

.method public displayAd()Z
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->isAdAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 153
    const/4 v1, 0x0

    .line 156
    :goto_0
    return v1

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->interstitialFactory:Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;

    invoke-virtual {v1}, Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;->showMeTheInterstitial()Lcom/fusepowered/ads/adapters/FuseInterstitial;

    move-result-object v0

    .line 156
    .local v0, "interstitial":Lcom/fusepowered/ads/adapters/FuseInterstitial;
    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->displayAd()Z

    move-result v1

    goto :goto_0
.end method

.method public getFuseAdId()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->adId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "Fuse"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-super {p0}, Lcom/fusepowered/ads/adapters/AdAdapter;->isAdAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v1

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->interstitialFactory:Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->interstitialFactory:Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;->showMeTheInterstitial()Lcom/fusepowered/ads/adapters/FuseInterstitial;

    move-result-object v0

    .line 143
    .local v0, "interstitial":Lcom/fusepowered/ads/adapters/FuseInterstitial;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->isReady()Z

    move-result v1

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->adId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->action:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->action:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->htmlBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->htmlBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->size:Lcom/fusepowered/ads/Size;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->orientation:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 113
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 105
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 118
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->adId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->action:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->action:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->htmlBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->htmlBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->size:Lcom/fusepowered/ads/Size;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->orientation:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    .line 126
    :cond_1
    iput-object v7, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 127
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->interstitialFactory:Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;

    invoke-virtual {v1}, Lcom/fusepowered/ads/adapters/FuseAdAdapter$FuseInterstitialFactory;->showMeTheInterstitial()Lcom/fusepowered/ads/adapters/FuseInterstitial;

    move-result-object v0

    .line 128
    .local v0, "interstitial":Lcom/fusepowered/ads/adapters/FuseInterstitial;
    invoke-virtual {v0, p0}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->setListener(Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;)V

    .line 129
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->adId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->htmlBody:Ljava/lang/String;

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->size:Lcom/fusepowered/ads/Size;

    iget-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->orientation:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->activity:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v6}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->prepare(ILjava/lang/String;Ljava/lang/String;Lcom/fusepowered/ads/Size;ILandroid/content/Context;)V

    .line 130
    iput-object v7, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->htmlBody:Ljava/lang/String;

    .line 131
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 223
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

.method public onFuseAdClicked(Lcom/fusepowered/ads/adapters/FuseInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/fusepowered/ads/adapters/FuseInterstitial;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 181
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onWillLeaveApp(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->clickBeacon:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->clickBeacon:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->sendRequestToBeacon(Ljava/lang/String;)V

    .line 186
    :cond_1
    return-void
.end method

.method public onFuseAdClosed(Lcom/fusepowered/ads/adapters/FuseInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/fusepowered/ads/adapters/FuseInterstitial;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onFuseAdDisplayed(Lcom/fusepowered/ads/adapters/FuseInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/fusepowered/ads/adapters/FuseInterstitial;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->impressionBeacon:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->impressionBeacon:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->sendRequestToBeacon(Ljava/lang/String;)V

    .line 203
    :cond_1
    return-void
.end method

.method public onFuseAdError(Lcom/fusepowered/ads/adapters/FuseInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/fusepowered/ads/adapters/FuseInterstitial;

    .prologue
    .line 171
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 172
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onFuseAdReady(Lcom/fusepowered/ads/adapters/FuseInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/fusepowered/ads/adapters/FuseInterstitial;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->didLoadAd()V

    .line 164
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 59
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->activity:Landroid/app/Activity;

    if-eq p1, v5, :cond_0

    .line 60
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->activity:Landroid/app/Activity;

    .line 64
    :cond_0
    if-nez p2, :cond_1

    .line 101
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v5, "id"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v6}, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "adId":I
    const-string v5, "action"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "action":Ljava/lang/String;
    const-string v5, "script"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    .local v2, "htmlBody":Ljava/lang/String;
    new-instance v4, Lcom/fusepowered/ads/Size;

    const-string v5, "ph"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->parseInt(Ljava/lang/String;I)I

    move-result v6

    const-string v5, "pw"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->parseInt(Ljava/lang/String;I)I

    move-result v7

    const-string v5, "lh"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->parseInt(Ljava/lang/String;I)I

    move-result v8

    const-string v5, "lw"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v4, v6, v7, v8, v5}, Lcom/fusepowered/ads/Size;-><init>(IIII)V

    .line 77
    .local v4, "size":Lcom/fusepowered/ads/Size;
    const-string v5, "o"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 79
    .local v3, "orientation":I
    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->adId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v1, v5, :cond_2

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->adId:Ljava/lang/Integer;

    .line 82
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->action:Ljava/lang/String;

    if-eq v0, v5, :cond_3

    .line 83
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->action:Ljava/lang/String;

    .line 85
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->htmlBody:Ljava/lang/String;

    if-eq v2, v5, :cond_4

    .line 86
    iput-object v2, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->htmlBody:Ljava/lang/String;

    .line 88
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/fusepowered/ads/Size;->hasAllDimensions()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->size:Lcom/fusepowered/ads/Size;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 89
    iput-object v4, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->size:Lcom/fusepowered/ads/Size;

    .line 91
    :cond_5
    if-eqz v3, :cond_6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    const/4 v5, 0x1

    if-eq v3, v5, :cond_6

    .line 94
    const/4 v3, 0x0

    .line 96
    :cond_6
    iget-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->orientation:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v3, v5, :cond_7

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->orientation:Ljava/lang/Integer;

    .line 99
    :cond_7
    const-string v5, "beacon-click"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->clickBeacon:Ljava/lang/String;

    .line 100
    const-string v5, "beacon-impression"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/fusepowered/ads/adapters/FuseAdAdapter;->impressionBeacon:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "intString"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 49
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 51
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 50
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x3
        0x7
    .end array-data
.end method
