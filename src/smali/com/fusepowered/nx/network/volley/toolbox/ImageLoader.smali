.class public Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;,
        Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;,
        Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;,
        Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;
    }
.end annotation


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/network/volley/RequestQueue;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 2
    .param p1, "queue"    # Lcom/fusepowered/nx/network/volley/RequestQueue;
    .param p2, "imageCache"    # Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    .line 88
    iput-object p2, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mCache:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/fusepowered/nx/network/volley/VolleyError;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;)V
    .locals 4
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$4;-><init>(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;)V

    iput-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    .line 462
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 464
    :cond_0
    return-void
.end method

.method private static getCacheKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageListener(Landroid/widget/ImageView;II)Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "defaultImageResId"    # I
    .param p2, "errorImageResId"    # I

    .prologue
    .line 101
    new-instance v0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$1;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method private onGetImageError(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/nx/network/volley/VolleyError;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 280
    .local v0, "request":Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;
    invoke-virtual {v0, p2}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;->setError(Lcom/fusepowered/nx/network/volley/VolleyError;)V

    .line 282
    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0, p1, v0}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    .line 286
    :cond_0
    return-void
.end method

.method private onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mCache:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, p1, p2}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 259
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 261
    .local v0, "request":Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v0, :cond_0

    .line 263
    invoke-static {v0, p2}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;->access$202(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 266
    invoke-direct {p0, p1, v0}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    .line 268
    :cond_0
    return-void
.end method

.method private throwIfNotOnMainThread()V
    .locals 2

    .prologue
    .line 467
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;)Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;
    .locals 1
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;II)Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;II)Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;
    .locals 19
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "imageListener"    # Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    .line 192
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    .line 195
    .local v10, "cacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mCache:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v4, v10}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 196
    .local v5, "cachedBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 198
    new-instance v3, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;)V

    .line 199
    .local v3, "container":Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;Z)V

    move-object v6, v3

    .line 237
    .end local v3    # "container":Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;
    :goto_0
    return-object v6

    .line 204
    :cond_0
    new-instance v6, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v8, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;)V

    .line 208
    .local v6, "imageContainer":Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v4}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 212
    .local v18, "request":Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v18, :cond_1

    .line 214
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;->addContainer(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;)V

    goto :goto_0

    .line 220
    :cond_1
    new-instance v11, Lcom/fusepowered/nx/network/volley/toolbox/ImageRequest;

    new-instance v13, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v10}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$2;-><init>(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    sget-object v16, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v17, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$3;-><init>(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    move-object/from16 v12, p1

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-direct/range {v11 .. v17}, Lcom/fusepowered/nx/network/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/fusepowered/nx/network/volley/Response$ErrorListener;)V

    .line 234
    .local v11, "newRequest":Lcom/fusepowered/nx/network/volley/Request;, "Lcom/fusepowered/nx/network/volley/Request<*>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    invoke-virtual {v4, v11}, Lcom/fusepowered/nx/network/volley/RequestQueue;->add(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/Request;

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v7, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v11, v6}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;Lcom/fusepowered/nx/network/volley/Request;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v4, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isCached(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    .line 157
    invoke-static {p1, p2, p3}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mCache:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, v0}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBatchedResponseDelay(I)V
    .locals 0
    .param p1, "newBatchedResponseDelayMs"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    .line 247
    return-void
.end method
