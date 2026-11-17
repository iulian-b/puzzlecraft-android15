.class Lcom/fusepowered/m2/nativeads/NativeAdSource;
.super Ljava/lang/Object;
.source "NativeAdSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/nativeads/NativeAdSource$AdSourceListener;
    }
.end annotation


# static fields
.field private static final CACHE_LIMIT:I = 0x3

.field private static final DEFAULT_RETRY_TIME_MILLISECONDS:I = 0x3e8

.field private static final EXPIRATION_TIME_MILLISECONDS:I = 0xdbba0

.field private static final EXPONENTIAL_BACKOFF_FACTOR:D = 2.0

.field private static final MAXIMUM_RETRY_TIME_MILLISECONDS:I = 0x493e0


# instance fields
.field private mAdSourceListener:Lcom/fusepowered/m2/nativeads/NativeAdSource$AdSourceListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMoPubNative:Lcom/fusepowered/m2/nativeads/MoPubNative;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNativeAdCache:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/nativeads/TimestampWrapper",
            "<",
            "Lcom/fusepowered/m2/nativeads/NativeResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReplenishCacheHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mReplenishCacheRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mRequestInFlight:Z
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation
.end field

.field private mRequestParameters:Lcom/fusepowered/m2/nativeads/RequestParameters;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mRetryInFlight:Z
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation
.end field

.field mRetryTimeMilliseconds:I
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation
.end field

.field mSequenceNumber:I
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/m2/nativeads/NativeAdSource;-><init>(Ljava/util/List;Landroid/os/Handler;)V

    .line 67
    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "replenishCacheHandler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/nativeads/TimestampWrapper",
            "<",
            "Lcom/fusepowered/m2/nativeads/NativeResponse;",
            ">;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "nativeAdCache":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/nativeads/TimestampWrapper<Lcom/fusepowered/m2/nativeads/NativeResponse;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    .line 73
    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/fusepowered/m2/nativeads/NativeAdSource$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/nativeads/NativeAdSource$1;-><init>(Lcom/fusepowered/m2/nativeads/NativeAdSource;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/fusepowered/m2/nativeads/NativeAdSource$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/nativeads/NativeAdSource$2;-><init>(Lcom/fusepowered/m2/nativeads/NativeAdSource;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mSequenceNumber:I

    .line 123
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRetryTimeMilliseconds:I

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/nativeads/NativeAdSource;)Lcom/fusepowered/m2/nativeads/MoPubNative;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/NativeAdSource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNative:Lcom/fusepowered/m2/nativeads/MoPubNative;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/nativeads/NativeAdSource;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/NativeAdSource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/m2/nativeads/NativeAdSource;)Lcom/fusepowered/m2/nativeads/NativeAdSource$AdSourceListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/NativeAdSource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mAdSourceListener:Lcom/fusepowered/m2/nativeads/NativeAdSource$AdSourceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/m2/nativeads/NativeAdSource;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/NativeAdSource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/m2/nativeads/NativeAdSource;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/NativeAdSource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 156
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNative:Lcom/fusepowered/m2/nativeads/MoPubNative;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNative:Lcom/fusepowered/m2/nativeads/MoPubNative;

    invoke-virtual {v2}, Lcom/fusepowered/m2/nativeads/MoPubNative;->destroy()V

    .line 158
    iput-object v4, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNative:Lcom/fusepowered/m2/nativeads/MoPubNative;

    .line 161
    :cond_0
    iput-object v4, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRequestParameters:Lcom/fusepowered/m2/nativeads/RequestParameters;

    .line 163
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m2/nativeads/TimestampWrapper;

    .line 164
    .local v1, "timestampWrapper":Lcom/fusepowered/m2/nativeads/TimestampWrapper;, "Lcom/fusepowered/m2/nativeads/TimestampWrapper<Lcom/fusepowered/m2/nativeads/NativeResponse;>;"
    iget-object v2, v1, Lcom/fusepowered/m2/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v2, Lcom/fusepowered/m2/nativeads/NativeResponse;

    invoke-virtual {v2}, Lcom/fusepowered/m2/nativeads/NativeResponse;->destroy()V

    goto :goto_0

    .line 166
    .end local v1    # "timestampWrapper":Lcom/fusepowered/m2/nativeads/TimestampWrapper;, "Lcom/fusepowered/m2/nativeads/TimestampWrapper<Lcom/fusepowered/m2/nativeads/NativeResponse;>;"
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 168
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iput-boolean v3, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRequestInFlight:Z

    .line 170
    iput v3, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mSequenceNumber:I

    .line 171
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeAdSource;->resetRetryTime()V

    .line 172
    return-void
.end method

.method dequeueAd()Lcom/fusepowered/m2/nativeads/NativeResponse;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 189
    .local v0, "now":J
    iget-boolean v3, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRequestInFlight:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRetryInFlight:Z

    if-nez v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m2/nativeads/TimestampWrapper;

    .line 197
    .local v2, "responseWrapper":Lcom/fusepowered/m2/nativeads/TimestampWrapper;, "Lcom/fusepowered/m2/nativeads/TimestampWrapper<Lcom/fusepowered/m2/nativeads/NativeResponse;>;"
    iget-wide v4, v2, Lcom/fusepowered/m2/nativeads/TimestampWrapper;->mCreatedTimestamp:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xdbba0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 198
    iget-object v3, v2, Lcom/fusepowered/m2/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v3, Lcom/fusepowered/m2/nativeads/NativeResponse;

    .line 201
    .end local v2    # "responseWrapper":Lcom/fusepowered/m2/nativeads/TimestampWrapper;, "Lcom/fusepowered/m2/nativeads/TimestampWrapper<Lcom/fusepowered/m2/nativeads/NativeResponse;>;"
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method getMoPubNativeNetworkListener()Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-object v0
.end method

.method loadAds(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/nativeads/RequestParameters;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestParameters"    # Lcom/fusepowered/m2/nativeads/RequestParameters;

    .prologue
    .line 137
    new-instance v0, Lcom/fusepowered/m2/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/fusepowered/m2/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    invoke-virtual {p0, p3, v0}, Lcom/fusepowered/m2/nativeads/NativeAdSource;->loadAds(Lcom/fusepowered/m2/nativeads/RequestParameters;Lcom/fusepowered/m2/nativeads/MoPubNative;)V

    .line 138
    return-void
.end method

.method loadAds(Lcom/fusepowered/m2/nativeads/RequestParameters;Lcom/fusepowered/m2/nativeads/MoPubNative;)V
    .locals 0
    .param p1, "requestParameters"    # Lcom/fusepowered/m2/nativeads/RequestParameters;
    .param p2, "moPubNative"    # Lcom/fusepowered/m2/nativeads/MoPubNative;
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeAdSource;->clear()V

    .line 145
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRequestParameters:Lcom/fusepowered/m2/nativeads/RequestParameters;

    .line 146
    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNative:Lcom/fusepowered/m2/nativeads/MoPubNative;

    .line 148
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeAdSource;->replenishCache()V

    .line 149
    return-void
.end method

.method replenishCache()V
    .locals 3
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRequestInFlight:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNative:Lcom/fusepowered/m2/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRequestInFlight:Z

    .line 227
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNative:Lcom/fusepowered/m2/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRequestParameters:Lcom/fusepowered/m2/nativeads/RequestParameters;

    iget v2, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mSequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/nativeads/MoPubNative;->makeRequest(Lcom/fusepowered/m2/nativeads/RequestParameters;Ljava/lang/Integer;)V

    .line 229
    :cond_0
    return-void
.end method

.method resetRetryTime()V
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 215
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRetryTimeMilliseconds:I

    .line 216
    return-void
.end method

.method setAdSourceListener(Lcom/fusepowered/m2/nativeads/NativeAdSource$AdSourceListener;)V
    .locals 0
    .param p1, "adSourceListener"    # Lcom/fusepowered/m2/nativeads/NativeAdSource$AdSourceListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mAdSourceListener:Lcom/fusepowered/m2/nativeads/NativeAdSource$AdSourceListener;

    .line 132
    return-void
.end method

.method setMoPubNative(Lcom/fusepowered/m2/nativeads/MoPubNative;)V
    .locals 0
    .param p1, "moPubNative"    # Lcom/fusepowered/m2/nativeads/MoPubNative;
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mMoPubNative:Lcom/fusepowered/m2/nativeads/MoPubNative;

    .line 235
    return-void
.end method

.method updateRetryTime()V
    .locals 5
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    const v4, 0x493e0

    .line 207
    iget v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRetryTimeMilliseconds:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRetryTimeMilliseconds:I

    .line 208
    iget v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRetryTimeMilliseconds:I

    if-le v0, v4, :cond_0

    .line 209
    iput v4, p0, Lcom/fusepowered/m2/nativeads/NativeAdSource;->mRetryTimeMilliseconds:I

    .line 211
    :cond_0
    return-void
.end method
