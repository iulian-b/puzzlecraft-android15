.class public Lcom/fusepowered/ads/adapters/VungleAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "VungleAdAdapter.java"


# static fields
.field private static initialized:Z = false

.field public static final name:Ljava/lang/String; = "Vungle"

.field public static pluginAvailable:Z

.field private static vungle:Lcom/vungle/publisher/VunglePub;


# instance fields
.field private activity:Landroid/app/Activity;

.field adConfig:Lcom/vungle/publisher/AdConfig;

.field private currentlyDisplaying:Z

.field private handler:Landroid/os/Handler;

.field private hasAdAvailabilityBeenReported:Z

.field private listening:Z

.field private vungleId:Ljava/lang/String;

.field private vungleListener:Lcom/vungle/publisher/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    sput-boolean v3, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->initialized:Z

    .line 38
    sput-boolean v3, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->pluginAvailable:Z

    .line 46
    :try_start_0
    const-string v2, "com.vungle.publisher.VunglePub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    .local v1, "klass":Ljava/lang/Class;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->pluginAvailable:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v3, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->pluginAvailable:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listening:Z

    .line 39
    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->currentlyDisplaying:Z

    .line 40
    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->handler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v0}, Lcom/vungle/publisher/AdConfig;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->adConfig:Lcom/vungle/publisher/AdConfig;

    .line 58
    new-instance v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;-><init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungleListener:Lcom/vungle/publisher/EventListener;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->currentlyDisplaying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/fusepowered/ads/adapters/VungleAdAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/VungleAdAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->currentlyDisplaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->hasAdAvailabilityBeenReported:Z

    return v0
.end method

.method static synthetic access$202(Lcom/fusepowered/ads/adapters/VungleAdAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/VungleAdAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->hasAdAvailabilityBeenReported:Z

    return p1
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x3
        0x0
        0x0
    .end array-data
.end method

.method public displayAd()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 228
    sget-object v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungle:Lcom/vungle/publisher/VunglePub;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->isAdAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    :cond_0
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 230
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    .line 232
    :cond_1
    sget-object v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungle:Lcom/vungle/publisher/VunglePub;

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->adConfig:Lcom/vungle/publisher/AdConfig;

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 233
    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->currentlyDisplaying:Z

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "Vungle"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 153
    sget-object v2, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungle:Lcom/vungle/publisher/VunglePub;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungle:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v2}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listening:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 154
    .local v0, "available":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->hasAdAvailabilityBeenReported:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v2, :cond_0

    .line 155
    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->hasAdAvailabilityBeenReported:Z

    .line 156
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 158
    :cond_0
    return v0

    .line 153
    .end local v0    # "available":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 182
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungleId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->pluginAvailable:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 183
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 182
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 189
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->isCapableOfLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    :goto_0
    return v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2

    .line 195
    :try_start_0
    sget-boolean v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->initialized:Z

    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->initialized:Z

    .line 197
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungle:Lcom/vungle/publisher/VunglePub;

    .line 198
    sget-object v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungle:Lcom/vungle/publisher/VunglePub;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungleId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 200
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listening:Z

    if-nez v0, :cond_2

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listening:Z

    .line 202
    sget-object v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungle:Lcom/vungle/publisher/VunglePub;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/vungle/publisher/EventListener;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungleListener:Lcom/vungle/publisher/EventListener;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/VunglePub;->addEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 204
    :cond_2
    monitor-exit v2

    move v0, v1

    .line 215
    goto :goto_0

    .line 204
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
    .line 249
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

.method public onResume()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/fusepowered/ads/adapters/AdAdapter;->onResume()V

    .line 221
    sget-object v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungle:Lcom/vungle/publisher/VunglePub;

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungle:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onResume()V

    .line 224
    :cond_0
    return-void
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
    .line 164
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->adConfig:Lcom/vungle/publisher/AdConfig;

    iget-boolean v2, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->isRewarded:Z

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/AdConfig;->setIncentivized(Z)V

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->activity:Landroid/app/Activity;

    .line 170
    :cond_0
    if-nez p2, :cond_2

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    const-string v1, "vungle_id"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "vungleId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 176
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->vungleId:Ljava/lang/String;

    goto :goto_0
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x3
        0x3
        0x0
    .end array-data
.end method
