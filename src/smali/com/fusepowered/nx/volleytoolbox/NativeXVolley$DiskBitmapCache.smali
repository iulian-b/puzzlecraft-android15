.class public Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;
.super Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;
.source "NativeXVolley.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiskBitmapCache"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;
    .param p2, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;->this$0:Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    .line 115
    invoke-direct {p0, p2}, Lcom/fusepowered/nx/network/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    .line 116
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;->get(Ljava/lang/String;)Lcom/fusepowered/nx/network/volley/Cache$Entry;

    move-result-object v0

    .line 121
    .local v0, "requestedItem":Lcom/fusepowered/nx/network/volley/Cache$Entry;
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 124
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/fusepowered/nx/network/volley/Cache$Entry;->data:[B

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/fusepowered/nx/network/volley/Cache$Entry;->data:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 128
    new-instance v0, Lcom/fusepowered/nx/network/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/fusepowered/nx/network/volley/Cache$Entry;-><init>()V

    .line 129
    .local v0, "entry":Lcom/fusepowered/nx/network/volley/Cache$Entry;
    invoke-static {p2}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->access$000(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/fusepowered/nx/network/volley/Cache$Entry;->data:[B

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;->put(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Cache$Entry;)V

    .line 131
    return-void
.end method
