.class public Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "ChartboostAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$2;
    }
.end annotation


# static fields
.field public static final INSTANCE_ID:Ljava/lang/String; = "instance_id"

.field private static final TAG:Ljava/lang/String; = "ChartboostAdAdapter"

.field private static instances:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public static final name:Ljava/lang/String; = "Chartboost"


# instance fields
.field private CBActivity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private appSignature:Ljava/lang/String;

.field private delegate:Lcom/chartboost/sdk/ChartboostDelegate;

.field private initialized:Z

.field lastActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->instances:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 37
    sget-object v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->instances:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    new-instance v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;-><init>(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->delegate:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;
    .param p1, "x1"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->setErrorCode(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->CBActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->sendFailCallbackAndCloseAdActivity()V

    return-void
.end method

.method public static getInstance(I)Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 161
    sget-object v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->instances:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    return-object v0
.end method

.method private sendFailCallbackAndCloseAdActivity()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToDisplay(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 275
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->clearCache()V

    .line 276
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->CBActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->CBActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 279
    :cond_0
    return-void
.end method

.method private setErrorCode(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2
    .param p1, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 282
    sget-object v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$2;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 290
    :goto_0
    return-void

    .line 285
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 260
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
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->isAdAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 243
    const/4 v1, 0x0

    .line 250
    :goto_0
    return v1

    .line 246
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->lastActivity:Landroid/app/Activity;

    const-class v2, Lcom/fusepowered/ads/adapters/CBActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_rewarded"

    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->isRewarded:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string v1, "instance_id"

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->lastActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 250
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const-string v0, "Chartboost"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->isRewarded:Z

    if-eqz v2, :cond_1

    .line 232
    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->initialized:Z

    if-eqz v2, :cond_0

    const-string v2, "Default"

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->lastActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 236
    .local v0, "isAvailable":Z
    :goto_0
    return v0

    .end local v0    # "isAvailable":Z
    :cond_0
    move v0, v1

    .line 232
    goto :goto_0

    .line 234
    :cond_1
    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->initialized:Z

    if-eqz v2, :cond_2

    const-string v2, "Default"

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->lastActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .restart local v0    # "isAvailable":Z
    :goto_1
    goto :goto_0

    .end local v0    # "isAvailable":Z
    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->lastActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->appId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->appSignature:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 187
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 186
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->isCapableOfLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    :goto_0
    return v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->initialized:Z

    if-nez v0, :cond_1

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->initialized:Z

    .line 201
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->lastActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->appSignature:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->delegate:Lcom/chartboost/sdk/ChartboostDelegate;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 204
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V

    .line 205
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->lastActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 206
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->lastActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 209
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_3

    .line 210
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 218
    :cond_2
    :goto_1
    monitor-exit v2

    move v0, v1

    .line 219
    goto :goto_0

    .line 214
    :cond_3
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 265
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
    .locals 3
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
    .line 166
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string v2, "cb_app_id"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, "appId":Ljava/lang/String;
    const-string v2, "cb_app_sig"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 174
    .local v1, "appSignature":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 175
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->appId:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->appSignature:Ljava/lang/String;

    .line 178
    :cond_2
    if-eqz p1, :cond_0

    .line 179
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->lastActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x5
        0x0
        0x3
    .end array-data
.end method

.method public setChartboostActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "CBActivity"    # Landroid/app/Activity;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->CBActivity:Landroid/app/Activity;

    .line 270
    return-void
.end method
