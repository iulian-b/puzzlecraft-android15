.class public Lcom/fusepowered/ads/adapters/FuseMRAIDAdAdapter;
.super Lcom/fusepowered/ads/adapters/MRaidAdAdapter;
.source "FuseMRAIDAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/ads/FuseInternalAdAdapter;


# static fields
.field public static final name:Ljava/lang/String; = "FuseMRAID"


# instance fields
.field private assetId:Ljava/lang/Integer;

.field private campaignId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;-><init>(Landroid/content/Context;I)V

    .line 23
    const-string v0, "http://www.fuseboxx.com"

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseMRAIDAdAdapter;->baseURL:Ljava/lang/String;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseMRAIDAdAdapter;->assetId:Ljava/lang/Integer;

    .line 25
    iput v1, p0, Lcom/fusepowered/ads/adapters/FuseMRAIDAdAdapter;->campaignId:I

    .line 26
    return-void
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 61
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

.method public getAssetId()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseMRAIDAdAdapter;->assetId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCampaignId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/fusepowered/ads/adapters/FuseMRAIDAdAdapter;->campaignId:I

    return v0
.end method

.method public getFuseAdId()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseMRAIDAdAdapter;->assetId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "FuseMRAID"

    return-object v0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 66
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

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 1
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
    .line 40
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;->onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 43
    if-nez p2, :cond_0

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseMRAIDAdAdapter;->assetId:Ljava/lang/Integer;

    .line 49
    const-string v0, "campaign_id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/FuseMRAIDAdAdapter;->campaignId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 56
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
