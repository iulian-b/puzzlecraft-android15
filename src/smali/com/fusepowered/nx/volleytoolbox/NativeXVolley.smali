.class public Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;
.super Ljava/lang/Object;
.source "NativeXVolley.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;
    }
.end annotation


# static fields
.field private static instance:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

.field private static mDiskCache:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

.field private static mImageLoader:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

.field private static mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

.field private static mSSLRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->instance:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "nativex"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .local v0, "nativexVolleyDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "volley"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v1, "nativexVolleyDiskCacheDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "volley_request_queue"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v2, "nativexVolleyRequestQueueDiskCacheDirectory":Ljava/io/File;
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fusepowered/nx/volleytoolbox/SslHttpStack;

    invoke-direct {v4}, Lcom/fusepowered/nx/volleytoolbox/SslHttpStack;-><init>()V

    invoke-static {v3, v2, v4}, Lcom/fusepowered/nx/network/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Ljava/io/File;Lcom/fusepowered/nx/network/volley/toolbox/HttpStack;)Lcom/fusepowered/nx/network/volley/RequestQueue;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mSSLRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    sput-object v3, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    .line 43
    new-instance v3, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    invoke-direct {v3, p0, v1}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;-><init>(Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;Ljava/io/File;)V

    sput-object v3, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mDiskCache:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    .line 44
    sget-object v3, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mDiskCache:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    invoke-virtual {v3}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;->initialize()V

    .line 45
    new-instance v3, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    sget-object v4, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    sget-object v5, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mDiskCache:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    invoke-direct {v3, v4, v5}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;-><init>(Lcom/fusepowered/nx/network/volley/RequestQueue;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;)V

    sput-object v3, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mImageLoader:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    .line 46
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;)[B
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->convertBitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method private static convertBitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 136
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 139
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 143
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v2

    .line 141
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 143
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0
.end method

.method public static getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->instance:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    invoke-direct {v0}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->instance:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    .line 52
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->instance:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    return-object v0
.end method

.method public static release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    const-string v1, "NativeXRequest"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 92
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mSSLRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mSSLRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    const-string v1, "NativeXRequest"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 96
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mDiskCache:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mDiskCache:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    invoke-virtual {v0}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;->clear()V

    .line 100
    :cond_2
    sput-object v2, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->instance:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    .line 101
    sput-object v2, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    .line 102
    sput-object v2, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mSSLRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    .line 103
    sput-object v2, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mImageLoader:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    .line 104
    sput-object v2, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mDiskCache:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    .line 105
    return-void
.end method


# virtual methods
.method public getImageCache()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mDiskCache:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mDiskCache:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DiskBitmapCache not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImageLoader()Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mImageLoader:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mImageLoader:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestQueue()Lcom/fusepowered/nx/network/volley/RequestQueue;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestQueue not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSSLRequestQueue()Lcom/fusepowered/nx/network/volley/RequestQueue;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mSSLRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->mSSLRequestQueue:Lcom/fusepowered/nx/network/volley/RequestQueue;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestQueue not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
