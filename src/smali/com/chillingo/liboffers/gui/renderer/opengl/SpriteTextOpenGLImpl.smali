.class public Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;
.super Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;
.source "SpriteTextOpenGLImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Paint$Align;Landroid/graphics/Typeface;FII)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "string"    # Ljava/lang/String;
    .param p4, "dimensions"    # Landroid/graphics/Point;
    .param p5, "alignment"    # Landroid/graphics/Paint$Align;
    .param p6, "typeFace"    # Landroid/graphics/Typeface;
    .param p7, "fontSize"    # F
    .param p8, "textColour"    # I
    .param p9, "backgroundColour"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;-><init>(Landroid/content/Context;)V

    .line 26
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid identifier specified for Sprite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid text specified for Sprite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, p7, v0

    if-gtz v0, :cond_4

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid font size specified for Sprite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_4
    iget v0, p4, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_5

    iget v0, p4, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_5

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid text dimensions specified for Sprite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_5
    iput-object p2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;->identifier:Ljava/lang/String;

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;->alphaMultiplier:F

    .line 41
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;->setupVertexBuffer()V

    .line 42
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;->setupIndexBuffer()V

    .line 43
    invoke-virtual {p0, p2}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;->setupShaderWithId(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 44
    invoke-direct/range {v0 .. v8}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;->setupTextureText(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Paint$Align;Landroid/graphics/Typeface;FII)V

    .line 45
    return-void
.end method

.method private setupTextureText(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Paint$Align;Landroid/graphics/Typeface;FII)V
    .locals 9
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "dimensions"    # Landroid/graphics/Point;
    .param p4, "alignment"    # Landroid/graphics/Paint$Align;
    .param p5, "typeFace"    # Landroid/graphics/Typeface;
    .param p6, "fontSize"    # F
    .param p7, "textColour"    # I
    .param p8, "backgroundColour"    # I

    .prologue
    .line 58
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->textureForKey(Ljava/lang/String;)Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    move-result-object v0

    .line 60
    .local v0, "spriteTexture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureTextOpenGLImpl;

    .end local v0    # "spriteTexture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureTextOpenGLImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Paint$Align;Landroid/graphics/Typeface;FII)V

    .line 70
    .restart local v0    # "spriteTexture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->addTextureForKey(Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;Ljava/lang/String;)V

    .line 73
    :cond_0
    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;->texture:Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    .line 74
    return-void
.end method
