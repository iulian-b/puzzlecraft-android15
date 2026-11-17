.class public Lcom/fusepowered/ads/adapters/LoopMeVideoAdAdapter;
.super Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;
.source "LoopMeVideoAdAdapter.java"


# static fields
.field public static final name:Ljava/lang/String; = "LoopMeVideo"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;-><init>(Landroid/content/Context;I)V

    .line 13
    return-void
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 34
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

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "LoopMeVideo"

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/LoopMeVideoAdAdapter;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loopme_tablet_id"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "loopme_phone_id"

    goto :goto_0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 39
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

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x4
        0x0
        0x3
    .end array-data
.end method
