.class public Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# static fields
.field private static final ENABLE_TEXTURE_LOG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OffersTexture"

.field protected static multiThreadingEnabled:Z


# instance fields
.field private _format:I

.field private _height:I

.field private _texture:I

.field private _width:I

.field private isReady:Z

.field private spriteData:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->multiThreadingEnabled:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->isReady:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "imageData"    # Landroid/graphics/Bitmap;
    .param p2, "recycle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tried to create texture with invalid image data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->isReady:Z

    .line 99
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 101
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "recycle"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-boolean v1, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->multiThreadingEnabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->createTextureWithDictionary(Ljava/util/HashMap;Z)V

    .line 108
    return-void
.end method

.method private createTextureWithDictionary(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 252
    const-string v2, "OffersTexture"

    const-string v3, "Creating texture in the background"

    invoke-static {v2, v3, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 264
    const-string v2, "image"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 266
    .local v0, "imageData":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid image data for texture creation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_1
    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->createTextureWithImage(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_texture:I

    .line 270
    const-string v2, "OffersTexture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created texture with Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_texture:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 272
    const-string v2, "recycle"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    const-string v2, "recycle"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 276
    .local v1, "recycle":Z
    if-eqz v1, :cond_2

    .line 280
    const-string v2, "OffersTexture"

    const-string v3, "Recycling image data"

    invoke-static {v2, v3, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 281
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 286
    .end local v1    # "recycle":Z
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->isReady:Z

    .line 287
    return-void
.end method

.method private createTextureWithImage(Landroid/graphics/Bitmap;)I
    .locals 16
    .param p1, "imageData"    # Landroid/graphics/Bitmap;

    .prologue
    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    .line 296
    .local v12, "bmpConfig":Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v12, v1, :cond_0

    .line 297
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bitmap image format ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap$Config;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") when trying to create texture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_width:I

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_height:I

    .line 303
    const/16 v11, 0x20

    .line 304
    .local v11, "bitsPerPixel":I
    const/16 v10, 0x8

    .line 307
    .local v10, "bitsPerComponent":I
    const/16 v1, 0x1908

    move-object/from16 v0, p0

    iput v1, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_format:I

    .line 310
    const/16 v8, 0x1401

    .line 313
    .local v8, "pixelFormatType":I
    div-int v13, v11, v10

    .line 315
    .local v13, "bytesPerPixel":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_width:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v14, v1, 0x4

    .line 317
    .local v14, "imagesize":I
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->spriteData:Ljava/nio/ByteBuffer;

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->spriteData:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->spriteData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 349
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v15

    .line 350
    .local v15, "texName":Ljava/nio/IntBuffer;
    const/4 v1, 0x1

    invoke-static {v1, v15}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 359
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 369
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 370
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 372
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 373
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 383
    const/16 v1, 0xde1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_format:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_height:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_format:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->spriteData:Ljava/nio/ByteBuffer;

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 392
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    return v1
.end method

.method private destroyTexture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 400
    iget-boolean v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->isReady:Z

    if-ne v1, v4, :cond_0

    .line 402
    const-string v1, "OffersTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting texture with Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_texture:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 404
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 405
    .local v0, "texName":Ljava/nio/IntBuffer;
    iget v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_texture:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 407
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 417
    .end local v0    # "texName":Ljava/nio/IntBuffer;
    :cond_0
    return-void
.end method


# virtual methods
.method protected createTextureInBackgroundWithDictionary(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->createTextureWithDictionary(Ljava/util/HashMap;)V

    .line 248
    return-void
.end method

.method protected createTextureWithDictionary(Ljava/util/HashMap;Z)V
    .locals 1
    .param p2, "inBackground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->createTextureInBackgroundWithDictionary(Ljava/util/HashMap;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->createTextureWithDictionary(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->destroyTexture()V

    .line 136
    return-void
.end method

.method public use()V
    .locals 3

    .prologue
    const v2, 0x84c0

    .line 140
    iget-boolean v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->isReady:Z

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 143
    .local v0, "currentActiveTexture":Ljava/nio/IntBuffer;
    const v1, 0x84e0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 146
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 148
    :cond_0
    const/16 v1, 0xde1

    iget v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->_texture:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 151
    .end local v0    # "currentActiveTexture":Ljava/nio/IntBuffer;
    :cond_1
    return-void
.end method
