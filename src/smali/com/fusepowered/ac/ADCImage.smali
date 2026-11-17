.class public Lcom/fusepowered/ac/ADCImage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static k:I

.field static l:I


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Paint;

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/Rect;

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field m:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 38
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;D)V

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/String;D)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "scale"    # D

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;DZ)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;DZ)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "scale"    # D
    .param p4, "down_state"    # Z

    .prologue
    .line 64
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;DZZ)V

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/String;DZZ)V
    .locals 10
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "scale"    # D
    .param p4, "down_state"    # Z
    .param p5, "is_native"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->c:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->d:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    .line 71
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    .line 74
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    .line 76
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    .line 77
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    .line 78
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    .line 79
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    .line 80
    iget v0, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    sput v0, Lcom/fusepowered/ac/ADCImage;->k:I

    .line 81
    iget v0, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    sput v0, Lcom/fusepowered/ac/ADCImage;->l:I

    .line 83
    invoke-virtual {p0, p2, p3}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/ADCImage;->h:Z

    .line 87
    if-eqz p4, :cond_2

    .line 90
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/fusepowered/ac/ADCImage;->convertToMutable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    .line 93
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    .line 94
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v8

    .line 97
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 99
    aget v2, v1, v0

    const/16 v3, 0xff

    if-ge v2, v3, :cond_0

    aget v2, v1, v0

    if-eqz v2, :cond_0

    aget v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    const v3, 0x7f7f7f

    and-int/2addr v2, v3

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 104
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    .line 106
    :cond_2
    if-nez p5, :cond_3

    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_3
    :goto_1
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/ac/a;->e(Ljava/lang/String;)V

    .line 112
    iput-boolean v9, p0, Lcom/fusepowered/ac/ADCImage;->m:Z

    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 43
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;D)V

    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/fusepowered/ac/ADCImage;->b(II)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "down_state"    # Z

    .prologue
    .line 54
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;DZ)V

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "is_native"    # Z
    .param p3, "down_state"    # Z

    .prologue
    .line 49
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;DZZ)V

    .line 50
    return-void
.end method

.method public static convertToMutable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "img_in"    # Landroid/graphics/Bitmap;

    .prologue
    .line 263
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v7, v6, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    sget v8, Lcom/fusepowered/ac/ADCImage;->k:I

    .line 267
    sget v9, Lcom/fusepowered/ac/ADCImage;->l:I

    .line 268
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    .line 270
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 271
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    mul-int/2addr v4, v9

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 272
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 277
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 278
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 280
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 282
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 283
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 285
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-object p0

    .line 287
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method a(D)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fusepowered/ac/ADCImage;->a(DZ)V

    .line 196
    return-void
.end method

.method a(DZ)V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 205
    iget-object v1, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    .line 206
    iget v2, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    if-eq v1, v2, :cond_3

    .line 208
    :cond_2
    iput v0, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    .line 209
    iput v1, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    .line 210
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    iget v2, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    .line 211
    if-nez p3, :cond_3

    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_3
    if-eqz p3, :cond_4

    .line 215
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->d:Landroid/graphics/Rect;

    iget v1, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 220
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->d:Landroid/graphics/Rect;

    iget v1, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method a(II)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v1, v1, 0x3

    iget v3, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    invoke-static {v0, v2, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    invoke-static {v1, v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 125
    iget-object v1, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    invoke-static {v1, v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    iget v3, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    invoke-static {v1, p1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 131
    iget v1, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v1, v1, 0x3

    iget v3, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    .line 132
    iget v3, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    mul-int/2addr v3, v4

    new-array v12, v3, [I

    .line 135
    iget v3, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v6, v4, 0x3

    iget v7, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 136
    iget v0, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v6, v0, 0x3

    iget v0, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v9, v0, 0x3

    iget v10, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    move-object v3, v8

    move-object v4, v12

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 139
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v4, v0, [I

    .line 142
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object v3, v11

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 148
    :cond_1
    :goto_1
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 150
    iget v6, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v6, v6, 0x3

    if-ge v4, v6, :cond_4

    .line 151
    array-length v6, v1

    if-ge v3, v6, :cond_2

    aget v6, v1, v3

    invoke-virtual {v11, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 152
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 159
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 160
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 162
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    .line 163
    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    div-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    if-lt v4, v6, :cond_3

    .line 156
    array-length v6, v12

    if-ge v0, v6, :cond_5

    aget v6, v12, v0

    invoke-virtual {v11, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 157
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 167
    :cond_6
    iput-object v11, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    .line 168
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    .line 170
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    .line 171
    iget v0, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    iput v0, p0, Lcom/fusepowered/ac/ADCImage;->i:I

    .line 172
    iget v0, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    iput v0, p0, Lcom/fusepowered/ac/ADCImage;->j:I

    .line 173
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->d:Landroid/graphics/Rect;

    iget v1, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 174
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->d:Landroid/graphics/Rect;

    iget v1, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCImage;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/fusepowered/ac/ADCImage;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method a(Landroid/graphics/Canvas;II)V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0, p2, p3}, Lcom/fusepowered/ac/ADCImage;->c(II)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;)V

    .line 250
    return-void
.end method

.method a()[I
    .locals 3

    .prologue
    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v0, v1

    .line 235
    return-object v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method b(II)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget v0, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    if-eq p2, v0, :cond_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    .line 185
    iput p1, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    .line 186
    iput p2, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    .line 187
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->d:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 188
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->d:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 190
    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method c()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method c(II)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 227
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 228
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    iget v1, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 229
    iget-object v0, p0, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    iget v1, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 230
    return-void
.end method

.method d(II)V
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fusepowered/ac/ADCImage;->g:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/ADCImage;->c(II)V

    .line 244
    return-void
.end method
