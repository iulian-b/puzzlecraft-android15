.class public Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;,
        Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;
    }
.end annotation


# static fields
.field private static final ENABLE_SHADER_LOG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OffersShaderProgram"


# instance fields
.field private _fragShader:Ljava/nio/IntBuffer;

.field private _program:I

.field private _uniforms:[I

.field private _vertShader:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vShaderByteArray"    # Ljava/lang/String;
    .param p2, "fShaderByteArray"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->NUM_UNIFORMS:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->ordinal()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_uniforms:[I

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->initialise(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    return-void
.end method

.method private compileShader(ILjava/lang/String;)Ljava/nio/IntBuffer;
    .locals 3
    .param p1, "type"    # I
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "source":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 307
    const-string v1, "OffersShaderProgram"

    const-string v2, "Failed to load vertex shader"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v1, 0x0

    .line 311
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->compileShaderWithByteArray(ILjava/lang/String;)Ljava/nio/IntBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method private compileShaderWithByteArray(ILjava/lang/String;)Ljava/nio/IntBuffer;
    .locals 8
    .param p1, "type"    # I
    .param p2, "shaderByteArray"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 316
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 325
    .local v0, "identifier":I
    const-string v3, "OffersShaderProgram"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created shader with Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 327
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 336
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 355
    invoke-static {v7}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 356
    .local v2, "status":Ljava/nio/IntBuffer;
    const v3, 0x8b81

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 357
    invoke-virtual {v2, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 358
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 359
    const/4 v1, 0x0

    .line 366
    :goto_0
    return-object v1

    .line 363
    :cond_0
    invoke-static {v7}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 364
    .local v1, "shader":Ljava/nio/IntBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0
.end method

.method private deleteProgram()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    const-string v0, "OffersShaderProgram"

    const-string v1, "deleteProgram"

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 284
    iget v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "OffersShaderProgram"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting program with with Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 287
    iget v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 296
    iput v3, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    .line 298
    :cond_0
    return-void
.end method

.method private deleteShaders()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 247
    const-string v0, "OffersShaderProgram"

    const-string v1, "deleteShaders"

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 249
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_vertShader:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "OffersShaderProgram"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting vertex shader with with Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_vertShader:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 252
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_vertShader:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 261
    iput-object v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_vertShader:Ljava/nio/IntBuffer;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_fragShader:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    .line 265
    const-string v0, "OffersShaderProgram"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting fragment shader with with Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_fragShader:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 266
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_fragShader:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 275
    iput-object v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_fragShader:Ljava/nio/IntBuffer;

    .line 278
    :cond_1
    return-void
.end method

.method private initialise(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "vShaderByteArray"    # Ljava/lang/String;
    .param p2, "fShaderByteArray"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to create shader program with invalid vertex shader data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 85
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to create shader program with invalid fragment shader data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    .line 97
    const-string v2, "OffersShaderProgram"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created shader program with Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 102
    const v2, 0x8b31

    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->compileShaderWithByteArray(ILjava/lang/String;)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_vertShader:Ljava/nio/IntBuffer;

    .line 104
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_vertShader:Ljava/nio/IntBuffer;

    if-eqz v2, :cond_5

    .line 106
    iget v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_vertShader:Ljava/nio/IntBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const v2, 0x8b30

    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->compileShaderWithByteArray(ILjava/lang/String;)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_fragShader:Ljava/nio/IntBuffer;

    .line 130
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_fragShader:Ljava/nio/IntBuffer;

    if-eqz v2, :cond_6

    .line 132
    iget v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_fragShader:Ljava/nio/IntBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_1
    iget v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 117
    :cond_5
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to compile vertex shader"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "OffersShaderProgram"

    const-string v3, "Failed to compile vertex shader"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->deleteProgram()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to compile fragment shader"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 146
    :catch_1
    move-exception v0

    .line 148
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "OffersShaderProgram"

    const-string v3, "Failed to compile fragment shader"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->deleteProgram()V

    goto :goto_1
.end method

.method private linkProgram(I)Z
    .locals 4
    .param p1, "prog"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 372
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 391
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 392
    .local v0, "status":Ljava/nio/IntBuffer;
    const v3, 0x8b82

    invoke-static {p1, v3, v0}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 393
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 397
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private validateProgram(I)Z
    .locals 4
    .param p1, "prog"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 402
    invoke-static {p1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 422
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 423
    .local v0, "status":Ljava/nio/IntBuffer;
    const v3, 0x8b83

    invoke-static {p1, v3, v0}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 424
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 428
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public addAttributeAtIndex(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    .line 212
    iget v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    if-eqz v0, :cond_0

    .line 214
    iget v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public addUniformAtIndex(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "uniform"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_uniforms:[I

    iget v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    aput v1, v0, p1

    .line 221
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    const-string v0, "OffersShaderProgram"

    const-string v1, "cleanUp"

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 200
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_vertShader:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    .line 201
    iget v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_vertShader:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_fragShader:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    .line 204
    iget v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_fragShader:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->deleteShaders()V

    .line 209
    return-void
.end method

.method public getAttributeLocation(Ljava/lang/String;)I
    .locals 1
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 240
    iget v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public link()Z
    .locals 5

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, "result":Z
    iget v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    if-eqz v2, :cond_0

    .line 174
    :try_start_0
    iget v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    invoke-direct {p0, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->linkProgram(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "OffersShaderProgram"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to link program: %d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 181
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->deleteShaders()V

    .line 183
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->deleteProgram()V

    goto :goto_0
.end method

.method public setUniformForAlphaMultiplier(F)V
    .locals 2
    .param p1, "alphaMult"    # F

    .prologue
    .line 236
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_uniforms:[I

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->UNIFORM_ALPHA_MULT:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 237
    return-void
.end method

.method public setUniformForModelViewMatrix([F)V
    .locals 3
    .param p1, "matrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_uniforms:[I

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->UNIFORM_MODELVIEW_MATRIX:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 229
    return-void
.end method

.method public setUniformForModelViewProjectionMatrix([F)V
    .locals 3
    .param p1, "matrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_uniforms:[I

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->UNIFORM_MODELVIEWPROJECTION_MATRIX:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 225
    return-void
.end method

.method public setUniformForTexture(I)V
    .locals 2
    .param p1, "texture"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_uniforms:[I

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->UNIFORM_TEXTURE:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$UNIFORMS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 233
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 159
    const-string v0, "OffersShaderProgram"

    const-string v1, "shutdown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 161
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->deleteShaders()V

    .line 162
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->deleteProgram()V

    .line 163
    return-void
.end method

.method public use()V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->_program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 193
    return-void
.end method
