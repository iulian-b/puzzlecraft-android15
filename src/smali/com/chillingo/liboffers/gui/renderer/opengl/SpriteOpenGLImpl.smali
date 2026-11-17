.class public Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;
.super Ljava/lang/Object;
.source "SpriteOpenGLImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/renderer/Sprite;


# static fields
.field private static final ENABLE_SPRITE_LOG:Z = false

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final INDEX_COUNT:I = 0x4

.field private static final INT_SIZE_BYTES:I = 0x4

.field private static final Indices:[S

.field private static final LOG_TAG:Ljava/lang/String; = "OffersSprite"

.field private static final SHORT_SIZE_BYTES:I = 0x2

.field private static TEX_COORD_MAX:I = 0x0

.field private static final USE_NEW_DRAW_CODE:Z = false

.field private static final VERTEX_COLOUR_COMPONENT_COUNT:I = 0x4

.field private static final VERTEX_COLOUR_OFFSET:I = 0x3

.field private static final VERTEX_COMPONENT_COUNT:I = 0x9

.field private static final VERTEX_COORD_COMPONENT_COUNT:I = 0x3

.field private static final VERTEX_COORD_OFFSET:I = 0x0

.field private static final VERTEX_COUNT:I = 0x4

.field private static final VERTEX_SIZE_BYTES:I = 0x24

.field private static final VERTEX_UVCOORD_COMPONENT_COUNT:I = 0x2

.field private static final VERTEX_UVCOORD_OFFSET:I = 0x7

.field private static final Vertices:[F

.field private static final simpleFragmentShader:Ljava/lang/String; = "varying lowp vec4 DestinationColor; varying lowp vec2 TexCoordOut;uniform sampler2D Texture;void main(void) {   gl_FragColor = DestinationColor * texture2D(Texture, TexCoordOut);}"

.field private static final simpleVertexShader:Ljava/lang/String; = "attribute vec4 Position;attribute vec4 SourceColor;varying vec4 DestinationColor;uniform mat4 Projection;uniform mat4 Modelview;uniform float alphaMultiplier;attribute vec2 TexCoordIn;varying vec2 TexCoordOut;void main(void) {   DestinationColor = SourceColor * alphaMultiplier;   gl_Position = Projection * Position;   TexCoordOut = TexCoordIn;}"


# instance fields
.field private _indexBuffer:Ljava/nio/IntBuffer;

.field private _vertexBuffer:Ljava/nio/IntBuffer;

.field protected alphaMultiplier:F

.field private context:Landroid/content/Context;

.field protected identifier:Ljava/lang/String;

.field private indices:Ljava/nio/ShortBuffer;

.field private matrix:[F

.field private shaderProgram:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;

.field private sourceImageFileName:Ljava/lang/String;

.field protected texture:Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

.field private vertices:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 57
    sput v1, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->TEX_COORD_MAX:I

    .line 80
    const/16 v0, 0x24

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Vertices:[F

    .line 90
    new-array v0, v1, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Indices:[S

    return-void

    .line 80
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 90
    :array_1
    .array-data 2
        0x1s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->matrix:[F

    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context specified for Sprite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->context:Landroid/content/Context;

    .line 127
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->matrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 129
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->vertices:Ljava/nio/FloatBuffer;

    .line 131
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->vertices:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->indices:Ljava/nio/ShortBuffer;

    .line 135
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->indices:Ljava/nio/ShortBuffer;

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Indices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "imageData"    # Landroid/graphics/Bitmap;
    .param p4, "recycleBitmap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->matrix:[F

    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context specified for Sprite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid identifier specified for Sprite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    if-nez p3, :cond_3

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to create sprite with invalid image data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_3
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->context:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->identifier:Ljava/lang/String;

    .line 183
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->alphaMultiplier:F

    .line 185
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->matrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 187
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->vertices:Ljava/nio/FloatBuffer;

    .line 189
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->vertices:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->indices:Ljava/nio/ShortBuffer;

    .line 193
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->indices:Ljava/nio/ShortBuffer;

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Indices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    invoke-direct {p0, p3, p4}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->createOpenGLAssets(Landroid/graphics/Bitmap;Z)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "imageFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->matrix:[F

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context specified for Sprite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid identifier specified for Sprite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 147
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid image file specified for Sprite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_4
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->context:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->identifier:Ljava/lang/String;

    .line 152
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->alphaMultiplier:F

    .line 154
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->matrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 156
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->vertices:Ljava/nio/FloatBuffer;

    .line 158
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->vertices:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->indices:Ljava/nio/ShortBuffer;

    .line 162
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->indices:Ljava/nio/ShortBuffer;

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Indices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    iput-object p3, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->sourceImageFileName:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->createOpenGLAssets(Landroid/graphics/Bitmap;Z)V

    .line 167
    return-void
.end method

.method private createOpenGLAssets(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "imageData"    # Landroid/graphics/Bitmap;
    .param p2, "recycleBitmap"    # Z

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->setupVertexBuffer()V

    .line 213
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->setupIndexBuffer()V

    .line 214
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->identifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->setupShaderWithId(Ljava/lang/String;)V

    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->identifier:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->setupTextureWithId(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->sourceImageFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->identifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->sourceImageFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->setupTextureWithId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    const-string v0, "OffersSprite"

    const-string v1, "No assets with which to recreate sprite"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected deleteBuffers()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 669
    const-string v0, "OffersSprite"

    const-string v1, "Deleting vertex and index buffers"

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 671
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_vertexBuffer:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    .line 672
    const-string v0, "OffersSprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting vertex buffer with Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_vertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 673
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_vertexBuffer:Ljava/nio/IntBuffer;

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 682
    iput-object v5, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_vertexBuffer:Ljava/nio/IntBuffer;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_indexBuffer:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    .line 687
    const-string v0, "OffersSprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting index buffer with Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_indexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 688
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_indexBuffer:Ljava/nio/IntBuffer;

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 697
    iput-object v5, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_indexBuffer:Ljava/nio/IntBuffer;

    .line 699
    :cond_1
    return-void
.end method

.method public drawWithProjectionMatrix([F)V
    .locals 10
    .param p1, "projectionMatrix"    # [F

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0x1406

    const/16 v6, 0x24

    const/4 v1, 0x0

    .line 285
    const-string v2, "Offers Render - Sprite"

    invoke-static {v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLExtensions;->pushGroupMarker(Ljava/lang/String;)V

    .line 405
    const v2, 0x8892

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_vertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 415
    const v2, 0x8893

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_indexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 426
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->shaderProgram:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;

    invoke-virtual {v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->use()V

    .line 435
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 436
    .local v0, "MVPMatrix":[F
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->matrix:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 440
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->shaderProgram:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;

    invoke-virtual {v2, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->setUniformForModelViewProjectionMatrix([F)V

    .line 459
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->shaderProgram:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;

    iget v3, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->alphaMultiplier:F

    invoke-virtual {v2, v3}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->setUniformForAlphaMultiplier(F)V

    .line 468
    const/4 v7, 0x0

    .line 469
    .local v7, "offset":I
    sget-object v2, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_POSITION:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-virtual {v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    move v4, v8

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 478
    sget-object v2, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_POSITION:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-virtual {v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ordinal()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 487
    add-int/lit8 v7, v7, 0xc

    .line 489
    sget-object v2, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_COLOR:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-virtual {v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ordinal()I

    move-result v2

    move v3, v9

    move v4, v8

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 499
    sget-object v2, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_COLOR:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-virtual {v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ordinal()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 509
    add-int/lit8 v7, v7, 0x10

    .line 512
    sget-object v2, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_TEXCOORD:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-virtual {v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    move v4, v8

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 521
    sget-object v2, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_TEXCOORD:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-virtual {v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ordinal()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 530
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->texture:Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->texture:Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    invoke-virtual {v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->use()V

    .line 542
    :goto_0
    const/4 v2, 0x5

    const/16 v3, 0x1403

    invoke-static {v2, v9, v3, v1}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 553
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLExtensions;->popGroupMarker()V

    .line 554
    return-void

    .line 533
    :cond_0
    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public recreate()V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->createOpenGLAssets(Landroid/graphics/Bitmap;Z)V

    .line 202
    return-void
.end method

.method public recreate(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "imageData"    # Landroid/graphics/Bitmap;
    .param p2, "recycleBitmap"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->createOpenGLAssets(Landroid/graphics/Bitmap;Z)V

    .line 207
    return-void
.end method

.method public setFrame(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "frame"    # Landroid/graphics/RectF;

    .prologue
    .line 245
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 274
    return-void
.end method

.method public setMatrix([F)V
    .locals 3
    .param p1, "matrix"    # [F

    .prologue
    .line 251
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->matrix:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method public setPosition(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/PointF;

    .prologue
    .line 241
    return-void
.end method

.method public setRotation(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "rotation"    # Landroid/graphics/PointF;

    .prologue
    .line 279
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 264
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 269
    return-void
.end method

.method protected setupIndexBuffer()V
    .locals 5

    .prologue
    const v4, 0x8893

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 597
    const-string v0, "OffersSprite"

    const-string v1, "Generating index buffer"

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 599
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_indexBuffer:Ljava/nio/IntBuffer;

    .line 600
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_indexBuffer:Ljava/nio/IntBuffer;

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 610
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_indexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 619
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->indices:Ljava/nio/ShortBuffer;

    const v2, 0x88e4

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 629
    const-string v0, "OffersSprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated index buffer with Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_indexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 630
    return-void
.end method

.method protected setupShaderWithId(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 635
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->programForKey(Ljava/lang/String;)Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;

    move-result-object v0

    .line 638
    .local v0, "shaderProg":Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;
    if-nez v0, :cond_0

    .line 641
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;

    .end local v0    # "shaderProg":Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;
    const-string v1, "attribute vec4 Position;attribute vec4 SourceColor;varying vec4 DestinationColor;uniform mat4 Projection;uniform mat4 Modelview;uniform float alphaMultiplier;attribute vec2 TexCoordIn;varying vec2 TexCoordOut;void main(void) {   DestinationColor = SourceColor * alphaMultiplier;   gl_Position = Projection * Position;   TexCoordOut = TexCoordIn;}"

    const-string v2, "varying lowp vec4 DestinationColor; varying lowp vec2 TexCoordOut;uniform sampler2D Texture;void main(void) {   gl_FragColor = DestinationColor * texture2D(Texture, TexCoordOut);}"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .restart local v0    # "shaderProg":Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;
    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_POSITION:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ordinal()I

    move-result v1

    const-string v2, "Position"

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->addAttributeAtIndex(ILjava/lang/String;)V

    .line 645
    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_COLOR:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ordinal()I

    move-result v1

    const-string v2, "SourceColor"

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->addAttributeAtIndex(ILjava/lang/String;)V

    .line 646
    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_TEXCOORD:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ordinal()I

    move-result v1

    const-string v2, "TexCoordIn"

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->addAttributeAtIndex(ILjava/lang/String;)V

    .line 649
    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->link()Z

    .line 652
    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->UNIFORM_MODELVIEWPROJECTION_MATRIX:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->ordinal()I

    move-result v1

    const-string v2, "Projection"

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->addUniformAtIndex(ILjava/lang/String;)V

    .line 653
    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->UNIFORM_MODELVIEW_MATRIX:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->ordinal()I

    move-result v1

    const-string v2, "Modelview"

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->addUniformAtIndex(ILjava/lang/String;)V

    .line 654
    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->UNIFORM_TEXTURE:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->ordinal()I

    move-result v1

    const-string v2, "Texture"

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->addUniformAtIndex(ILjava/lang/String;)V

    .line 655
    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->UNIFORM_ALPHA_MULT:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->ordinal()I

    move-result v1

    const-string v2, "alphaMultiplier"

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->addUniformAtIndex(ILjava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->addProgramForKey(Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;Ljava/lang/String;)V

    .line 664
    :cond_0
    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->shaderProgram:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;

    .line 666
    return-void
.end method

.method protected setupTextureWithId(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "imageData"    # Landroid/graphics/Bitmap;
    .param p3, "recycleBitmap"    # Z

    .prologue
    .line 746
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->textureForKey(Ljava/lang/String;)Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    move-result-object v0

    .line 748
    .local v0, "spriteTexture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    if-nez v0, :cond_0

    .line 750
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    .end local v0    # "spriteTexture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    invoke-direct {v0, p2, p3}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 752
    .restart local v0    # "spriteTexture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->addTextureForKey(Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;Ljava/lang/String;)V

    .line 754
    :cond_0
    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->texture:Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    .line 755
    return-void
.end method

.method protected setupTextureWithId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "imageFile"    # Ljava/lang/String;

    .prologue
    .line 704
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->textureForKey(Ljava/lang/String;)Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    move-result-object v3

    .line 706
    .local v3, "spriteTexture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    if-nez v3, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 713
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->getInstance()Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->activeTheme()Lcom/chillingo/liboffers/gui/theme/Theme;

    move-result-object v4

    iget-object v5, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->context:Landroid/content/Context;

    const-string v6, "images"

    invoke-virtual {v4, p2, v5, v6}, Lcom/chillingo/liboffers/gui/theme/Theme;->openAsset(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 716
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 719
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 734
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v0, :cond_0

    .line 735
    new-instance v3, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    .end local v3    # "spriteTexture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 737
    .restart local v3    # "spriteTexture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    move-result-object v4

    invoke-virtual {v4, v3, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->addTextureForKey(Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;Ljava/lang/String;)V

    .line 740
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iput-object v3, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->texture:Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    .line 741
    return-void

    .line 718
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    .line 719
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 722
    :goto_1
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 725
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 726
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "OffersSprite"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create sprite "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v4, "OffersSprite"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 729
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 730
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "OffersSprite"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create sprite "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v4, "OffersSprite"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 720
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    goto/16 :goto_0

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method protected setupVertexBuffer()V
    .locals 5

    .prologue
    const v4, 0x8892

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 560
    const-string v0, "OffersSprite"

    const-string v1, "Generating vertex buffer"

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 562
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_vertexBuffer:Ljava/nio/IntBuffer;

    .line 563
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_vertexBuffer:Ljava/nio/IntBuffer;

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 573
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_vertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 582
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->Vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->vertices:Ljava/nio/FloatBuffer;

    const v2, 0x88e4

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 592
    const-string v0, "OffersSprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated vertex buffer with Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->_vertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 594
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->deleteBuffers()V

    .line 237
    return-void
.end method

.method public updateAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 258
    iput p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;->alphaMultiplier:F

    .line 259
    return-void
.end method
