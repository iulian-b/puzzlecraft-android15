.class public Lcom/fusepowered/m2/nativeads/MoPubNative;
.super Ljava/lang/Object;
.source "MoPubNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/nativeads/MoPubNative$5;,
        Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeListener;,
        Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;,
        Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;
    }
.end annotation


# static fields
.field static final EMPTY_EVENT_LISTENER:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

.field static final EMPTY_NETWORK_LISTENER:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;


# instance fields
.field private final mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalExtras:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNativeRequest:Lcom/fusepowered/m2/network/AdRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVolleyListener:Lcom/fusepowered/m2/network/AdRequest$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/fusepowered/m2/nativeads/MoPubNative$1;

    invoke-direct {v0}, Lcom/fusepowered/m2/nativeads/MoPubNative$1;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/nativeads/MoPubNative;->EMPTY_NETWORK_LISTENER:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 57
    new-instance v0, Lcom/fusepowered/m2/nativeads/MoPubNative$2;

    invoke-direct {v0}, Lcom/fusepowered/m2/nativeads/MoPubNative$2;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/nativeads/MoPubNative;->EMPTY_EVENT_LISTENER:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "moPubNativeListener"    # Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/fusepowered/m2/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    .line 101
    invoke-virtual {p0, p3}, Lcom/fusepowered/m2/nativeads/MoPubNative;->setNativeEventListener(Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "moPubNativeNetworkListener"    # Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mLocalExtras:Ljava/util/Map;

    .line 107
    const-string v0, "Context may not be null."

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const-string v0, "AdUnitId may not be null."

    invoke-static {p2, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const-string v0, "MoPubNativeNetworkListener may not be null."

    invoke-static {p3, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lcom/fusepowered/m2/common/util/ManifestUtils;->checkNativeActivitiesDeclared(Landroid/content/Context;)V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mContext:Ljava/lang/ref/WeakReference;

    .line 114
    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mAdUnitId:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 116
    sget-object v0, Lcom/fusepowered/m2/nativeads/MoPubNative;->EMPTY_EVENT_LISTENER:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 117
    new-instance v0, Lcom/fusepowered/m2/nativeads/MoPubNative$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/nativeads/MoPubNative$3;-><init>(Lcom/fusepowered/m2/nativeads/MoPubNative;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mVolleyListener:Lcom/fusepowered/m2/network/AdRequest$Listener;

    .line 130
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/GpsHelper;->fetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/fusepowered/m2/common/GpsHelper$GpsHelperListener;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/nativeads/MoPubNative;Lcom/fusepowered/m2/network/AdResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/MoPubNative;
    .param p1, "x1"    # Lcom/fusepowered/m2/network/AdResponse;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/nativeads/MoPubNative;->onAdLoad(Lcom/fusepowered/m2/network/AdResponse;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/nativeads/MoPubNative;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/MoPubNative;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/m2/nativeads/MoPubNative;)Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/MoPubNative;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/m2/nativeads/MoPubNative;)Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/MoPubNative;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-object v0
.end method

.method private loadNativeAd(Lcom/fusepowered/m2/nativeads/RequestParameters;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "requestParameters"    # Lcom/fusepowered/m2/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "sequenceNumber"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v0

    .line 183
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 187
    :cond_0
    new-instance v3, Lcom/fusepowered/m2/nativeads/NativeUrlGenerator;

    invoke-direct {v3, v0}, Lcom/fusepowered/m2/nativeads/NativeUrlGenerator;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fusepowered/m2/nativeads/NativeUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/fusepowered/m2/nativeads/NativeUrlGenerator;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/fusepowered/m2/nativeads/NativeUrlGenerator;->withRequest(Lcom/fusepowered/m2/nativeads/RequestParameters;)Lcom/fusepowered/m2/nativeads/NativeUrlGenerator;

    move-result-object v2

    .line 191
    .local v2, "generator":Lcom/fusepowered/m2/nativeads/NativeUrlGenerator;
    if-eqz p2, :cond_1

    .line 192
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/nativeads/NativeUrlGenerator;->withSequenceNumber(I)Lcom/fusepowered/m2/nativeads/NativeUrlGenerator;

    .line 195
    :cond_1
    const-string v3, "ads.mopub.com"

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/nativeads/NativeUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "endpointUrl":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading ad from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 201
    :cond_2
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/nativeads/MoPubNative;->requestNativeAd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onAdLoad(Lcom/fusepowered/m2/network/AdResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/fusepowered/m2/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v0

    .line 222
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v1, Lcom/fusepowered/m2/nativeads/MoPubNative$4;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/m2/nativeads/MoPubNative$4;-><init>(Lcom/fusepowered/m2/nativeads/MoPubNative;Lcom/fusepowered/m2/network/AdResponse;)V

    .line 249
    .local v1, "customEventNativeListener":Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mLocalExtras:Ljava/util/Map;

    invoke-static {v0, v2, p1, v1}, Lcom/fusepowered/m2/nativeads/CustomEventNativeAdapter;->loadNativeAd(Landroid/content/Context;Ljava/util/Map;Lcom/fusepowered/m2/network/AdResponse;Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 140
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mNativeRequest:Lcom/fusepowered/m2/network/AdRequest;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mNativeRequest:Lcom/fusepowered/m2/network/AdRequest;

    invoke-virtual {v0}, Lcom/fusepowered/m2/network/AdRequest;->cancel()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mNativeRequest:Lcom/fusepowered/m2/network/AdRequest;

    .line 144
    :cond_0
    sget-object v0, Lcom/fusepowered/m2/nativeads/MoPubNative;->EMPTY_NETWORK_LISTENER:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 145
    sget-object v0, Lcom/fusepowered/m2/nativeads/MoPubNative;->EMPTY_EVENT_LISTENER:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 146
    return-void
.end method

.method getContextOrDestroy()Landroid/content/Context;
    .locals 2

    .prologue
    .line 298
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 299
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/MoPubNative;->destroy()V

    .line 301
    const-string v1, "Weak reference to Activity Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed."

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 304
    :cond_0
    return-object v0
.end method

.method getMoPubNativeEventListener()Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    return-object v0
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
    .line 311
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-object v0
.end method

.method public makeRequest()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    check-cast v0, Lcom/fusepowered/m2/nativeads/RequestParameters;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/nativeads/MoPubNative;->makeRequest(Lcom/fusepowered/m2/nativeads/RequestParameters;)V

    .line 158
    return-void
.end method

.method public makeRequest(Lcom/fusepowered/m2/nativeads/RequestParameters;)V
    .locals 1
    .param p1, "requestParameters"    # Lcom/fusepowered/m2/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m2/nativeads/MoPubNative;->makeRequest(Lcom/fusepowered/m2/nativeads/RequestParameters;Ljava/lang/Integer;)V

    .line 162
    return-void
.end method

.method public makeRequest(Lcom/fusepowered/m2/nativeads/RequestParameters;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "requestParameters"    # Lcom/fusepowered/m2/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "sequenceNumber"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {v0}, Lcom/fusepowered/m2/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v2, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v1, v2}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/nativeads/MoPubNative;->loadNativeAd(Lcom/fusepowered/m2/nativeads/RequestParameters;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method onAdError(Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 4
    .param p1, "volleyError"    # Lcom/fusepowered/m2/volley/VolleyError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 259
    const-string v2, "Native ad request failed."

    invoke-static {v2, p1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    instance-of v2, p1, Lcom/fusepowered/m2/network/MoPubNetworkError;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 261
    check-cast v0, Lcom/fusepowered/m2/network/MoPubNetworkError;

    .line 262
    .local v0, "error":Lcom/fusepowered/m2/network/MoPubNetworkError;
    sget-object v2, Lcom/fusepowered/m2/nativeads/MoPubNative$5;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    invoke-virtual {v0}, Lcom/fusepowered/m2/network/MoPubNetworkError;->getReason()Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 280
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    .line 295
    .end local v0    # "error":Lcom/fusepowered/m2/network/MoPubNetworkError;
    :goto_0
    return-void

    .line 264
    .restart local v0    # "error":Lcom/fusepowered/m2/network/MoPubNetworkError;
    :pswitch_0
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->INVALID_JSON:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->INVALID_JSON:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 272
    :pswitch_2
    sget-object v2, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->WARMUP:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m2/common/logging/MoPubLog;->c(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->EMPTY_AD_RESPONSE:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 276
    :pswitch_3
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->EMPTY_AD_RESPONSE:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 285
    .end local v0    # "error":Lcom/fusepowered/m2/network/MoPubNetworkError;
    :cond_0
    iget-object v1, p1, Lcom/fusepowered/m2/volley/VolleyError;->networkResponse:Lcom/fusepowered/m2/volley/NetworkResponse;

    .line 286
    .local v1, "response":Lcom/fusepowered/m2/volley/NetworkResponse;
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/fusepowered/m2/volley/NetworkResponse;->statusCode:I

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_1

    iget v2, v1, Lcom/fusepowered/m2/volley/NetworkResponse;->statusCode:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_1

    .line 287
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->SERVER_ERROR_RESPONSE_CODE:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 288
    :cond_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/fusepowered/m2/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 289
    sget-object v2, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m2/common/logging/MoPubLog;->c(Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method requestNativeAd(Ljava/lang/String;)V
    .locals 7
    .param p1, "endpointUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v4

    .line 206
    .local v4, "context":Landroid/content/Context;
    if-nez v4, :cond_0

    .line 218
    :goto_0
    return-void

    .line 210
    :cond_0
    if-nez p1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->INVALID_REQUEST_URL:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Lcom/fusepowered/m2/network/AdRequest;

    sget-object v2, Lcom/fusepowered/m2/common/AdFormat;->NATIVE:Lcom/fusepowered/m2/common/AdFormat;

    iget-object v3, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mAdUnitId:Ljava/lang/String;

    iget-object v5, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mVolleyListener:Lcom/fusepowered/m2/network/AdRequest$Listener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/m2/network/AdRequest;-><init>(Ljava/lang/String;Lcom/fusepowered/m2/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/fusepowered/m2/network/AdRequest$Listener;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mNativeRequest:Lcom/fusepowered/m2/network/AdRequest;

    .line 216
    invoke-static {v4}, Lcom/fusepowered/m2/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/fusepowered/m2/network/MoPubRequestQueue;

    move-result-object v6

    .line 217
    .local v6, "requestQueue":Lcom/fusepowered/m2/volley/RequestQueue;
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mNativeRequest:Lcom/fusepowered/m2/network/AdRequest;

    invoke-virtual {v6, v0}, Lcom/fusepowered/m2/volley/RequestQueue;->add(Lcom/fusepowered/m2/volley/Request;)Lcom/fusepowered/m2/volley/Request;

    goto :goto_0
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 150
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mLocalExtras:Ljava/util/Map;

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mLocalExtras:Ljava/util/Map;

    goto :goto_0
.end method

.method public setNativeEventListener(Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;)V
    .locals 0
    .param p1, "nativeEventListener"    # Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 134
    if-nez p1, :cond_0

    sget-object p1, Lcom/fusepowered/m2/nativeads/MoPubNative;->EMPTY_EVENT_LISTENER:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    .end local p1    # "nativeEventListener":Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubNative;->mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 136
    return-void
.end method
