.class Lcom/fusepowered/m2/nativeads/ServerPositioningSource;
.super Ljava/lang/Object;
.source "ServerPositioningSource.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/PositioningSource;


# static fields
.field private static final DEFAULT_RETRY_TIME_MILLISECONDS:D = 1000.0

.field private static final EXPONENTIAL_BACKOFF_FACTOR:D = 2.0

.field private static final MAXIMUM_RETRY_TIME_MILLISECONDS:I = 0x493e0


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mErrorListener:Lcom/fusepowered/m2/volley/Response$ErrorListener;

.field private mListener:Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMaximumRetryTimeMillis:I

.field private final mPositioningListener:Lcom/fusepowered/m2/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m2/volley/Response$Listener",
            "<",
            "Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/fusepowered/m2/nativeads/PositioningRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRetryCount:I

.field private final mRetryHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRetryRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRetryUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x493e0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mMaximumRetryTimeMillis:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$1;-><init>(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryRunnable:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$2;-><init>(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mPositioningListener:Lcom/fusepowered/m2/volley/Response$Listener;

    .line 88
    new-instance v0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$3;-><init>(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mErrorListener:Lcom/fusepowered/m2/volley/Response$ErrorListener;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ServerPositioningSource;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->requestPositioningInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ServerPositioningSource;
    .param p1, "x1"    # Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->handleSuccess(Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ServerPositioningSource;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ServerPositioningSource;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->handleFailure()V

    return-void
.end method

.method private handleFailure()V
    .locals 8

    .prologue
    .line 143
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 144
    .local v2, "multiplier":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v2

    double-to-int v0, v4

    .line 145
    .local v0, "delay":I
    iget v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mMaximumRetryTimeMillis:I

    if-lt v0, v1, :cond_1

    .line 146
    const-string v1, "Error downloading positioning information"

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mListener:Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mListener:Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;

    invoke-interface {v1}, Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;->onFailed()V

    .line 150
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mListener:Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryCount:I

    .line 155
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryRunnable:Ljava/lang/Runnable;

    int-to-long v6, v0

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handleSuccess(Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1
    .param p1, "positioning"    # Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mListener:Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mListener:Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;->onLoad(Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mListener:Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryCount:I

    .line 140
    return-void
.end method

.method private requestPositioningInternal()V
    .locals 5

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading positioning from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/fusepowered/m2/nativeads/PositioningRequest;

    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mPositioningListener:Lcom/fusepowered/m2/volley/Response$Listener;

    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mErrorListener:Lcom/fusepowered/m2/volley/Response$ErrorListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/fusepowered/m2/nativeads/PositioningRequest;-><init>(Ljava/lang/String;Lcom/fusepowered/m2/volley/Response$Listener;Lcom/fusepowered/m2/volley/Response$ErrorListener;)V

    iput-object v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRequest:Lcom/fusepowered/m2/nativeads/PositioningRequest;

    .line 130
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fusepowered/m2/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/fusepowered/m2/network/MoPubRequestQueue;

    move-result-object v0

    .line 131
    .local v0, "requestQueue":Lcom/fusepowered/m2/volley/RequestQueue;
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRequest:Lcom/fusepowered/m2/nativeads/PositioningRequest;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/volley/RequestQueue;->add(Lcom/fusepowered/m2/volley/Request;)Lcom/fusepowered/m2/volley/Request;

    .line 132
    return-void
.end method


# virtual methods
.method public loadPositions(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRequest:Lcom/fusepowered/m2/nativeads/PositioningRequest;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRequest:Lcom/fusepowered/m2/nativeads/PositioningRequest;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/PositioningRequest;->cancel()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRequest:Lcom/fusepowered/m2/nativeads/PositioningRequest;

    .line 114
    :cond_0
    iget v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryCount:I

    if-lez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryCount:I

    .line 119
    :cond_1
    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mListener:Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;

    .line 120
    new-instance v0, Lcom/fusepowered/m2/nativeads/PositioningUrlGenerator;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/m2/nativeads/PositioningUrlGenerator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/PositioningUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/fusepowered/m2/nativeads/PositioningUrlGenerator;

    move-result-object v0

    const-string v1, "ads.mopub.com"

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/nativeads/PositioningUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mRetryUrl:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->requestPositioningInternal()V

    .line 124
    return-void
.end method

.method setMaximumRetryTimeMilliseconds(I)V
    .locals 0
    .param p1, "millis"    # I
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    iput p1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->mMaximumRetryTimeMillis:I

    .line 162
    return-void
.end method
