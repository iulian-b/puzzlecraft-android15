.class public Lcom/chillingo/liboffers/gui/renderer/opengl/TextureTextOpenGLImpl;
.super Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
.source "TextureTextOpenGLImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OffersTextureText"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Paint$Align;Landroid/graphics/Typeface;FII)V
    .locals 14
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "dimensions"    # Landroid/graphics/Point;
    .param p4, "alignment"    # Landroid/graphics/Paint$Align;
    .param p5, "typeFace"    # Landroid/graphics/Typeface;
    .param p6, "fontSize"    # F
    .param p7, "textColour"    # I
    .param p8, "backgroundColour"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;-><init>()V

    .line 30
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 31
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Invalid identifier specified for TextureText"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 32
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 33
    :cond_2
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Invalid text specified for TextureText"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 34
    :cond_3
    const/4 v12, 0x0

    cmpg-float v12, p6, v12

    if-gtz v12, :cond_4

    .line 35
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Invalid font size specified for TextureText"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 36
    :cond_4
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Point;->x:I

    if-gtz v12, :cond_5

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Point;->y:I

    if-gtz v12, :cond_5

    .line 37
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Invalid text dimensions specified for TextureText"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 42
    :cond_5
    :try_start_0
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .local v9, "paint":Landroid/graphics/Paint;
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    move/from16 v0, p7

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 50
    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    int-to-float v1, v12

    .line 51
    .local v1, "baseline":F
    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v12

    add-float/2addr v12, v1

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v10, v12

    .line 53
    .local v10, "textHeight":I
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 54
    .local v11, "width":I
    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 56
    .local v5, "height":I
    if-lez v11, :cond_7

    if-lez v5, :cond_7

    .line 57
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v5, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 58
    .local v6, "image":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .local v2, "canvas":Landroid/graphics/Canvas;
    move/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 62
    div-int/lit8 v12, v11, 0x2

    int-to-float v7, v12

    .line 64
    .local v7, "originX":F
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int v13, v5, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    int-to-float v8, v12

    .line 66
    .local v8, "originY":F
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 68
    if-eqz v6, :cond_6

    .line 73
    new-instance v3, Ljava/util/HashMap;

    const/4 v12, 0x2

    invoke-direct {v3, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 75
    .local v3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "image"

    invoke-virtual {v3, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v12, "recycle"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-boolean v12, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureTextOpenGLImpl;->multiThreadingEnabled:Z

    invoke-virtual {p0, v3, v12}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureTextOpenGLImpl;->createTextureWithDictionary(Ljava/util/HashMap;Z)V

    .line 95
    .end local v1    # "baseline":F
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "height":I
    .end local v6    # "image":Landroid/graphics/Bitmap;
    .end local v7    # "originX":F
    .end local v8    # "originY":F
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "textHeight":I
    .end local v11    # "width":I
    :goto_0
    return-void

    .line 85
    .restart local v1    # "baseline":F
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "height":I
    .restart local v6    # "image":Landroid/graphics/Bitmap;
    .restart local v7    # "originX":F
    .restart local v8    # "originY":F
    .restart local v9    # "paint":Landroid/graphics/Paint;
    .restart local v10    # "textHeight":I
    .restart local v11    # "width":I
    :cond_6
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Failed to generate sprite text image"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "baseline":F
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "height":I
    .end local v6    # "image":Landroid/graphics/Bitmap;
    .end local v7    # "originX":F
    .end local v8    # "originY":F
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "textHeight":I
    .end local v11    # "width":I
    :catch_0
    move-exception v4

    .line 92
    .local v4, "e":Ljava/lang/Throwable;
    const-string v12, "OffersTextureText"

    const-string v13, "Error creating text for Sprite"

    invoke-static {v12, v13}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v1    # "baseline":F
    .restart local v5    # "height":I
    .restart local v9    # "paint":Landroid/graphics/Paint;
    .restart local v10    # "textHeight":I
    .restart local v11    # "width":I
    :cond_7
    :try_start_1
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "SpriteText dimensions are invalid"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
