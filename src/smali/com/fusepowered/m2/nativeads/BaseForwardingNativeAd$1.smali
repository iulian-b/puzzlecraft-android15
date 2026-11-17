.class final Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$1;
.super Ljava/lang/Object;
.source "BaseForwardingNativeAd.java"

# interfaces
.implements Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/fusepowered/m2/nativeads/CustomEventNative$ImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$anyFailures:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$imageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$imageListener:Lcom/fusepowered/m2/nativeads/CustomEventNative$ImageListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/fusepowered/m2/nativeads/CustomEventNative$ImageListener;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$1;->val$imageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$1;->val$anyFailures:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$1;->val$imageListener:Lcom/fusepowered/m2/nativeads/CustomEventNative$ImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/fusepowered/m2/volley/VolleyError;

    .prologue
    .line 384
    const-string v1, "Failed to download a native ads image:"

    invoke-static {v1, p1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$1;->val$anyFailures:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 386
    .local v0, "anyPreviousErrors":Z
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$1;->val$imageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 387
    if-nez v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$1;->val$imageListener:Lcom/fusepowered/m2/nativeads/CustomEventNative$ImageListener;

    sget-object v2, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {v1, v2}, Lcom/fusepowered/m2/nativeads/CustomEventNative$ImageListener;->onImagesFailedToCache(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    .line 390
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2
    .param p1, "imageContainer"    # Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$1;->val$imageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 376
    .local v0, "count":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$1;->val$anyFailures:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$1;->val$imageListener:Lcom/fusepowered/m2/nativeads/CustomEventNative$ImageListener;

    invoke-interface {v1}, Lcom/fusepowered/m2/nativeads/CustomEventNative$ImageListener;->onImagesCached()V

    .line 380
    .end local v0    # "count":I
    :cond_0
    return-void
.end method
