.class public Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
.super Landroid/opengl/GLSurfaceView;
.source "OpenGLView.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;


# static fields
.field private static final BACKGROUND_COLOUR_INTERP_RATE:F = 0.2f

.field private static final ENABLE_CONTEXT_BINDING:Z = false

.field private static final ENABLE_TEST_BACKGROUND_COLOUR:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OffersOpenGLView"

.field private static final OPENGL_VERSION:I = 0x2

.field private static final kEAGLRenderingAPIOpenGLES1:I = 0x1

.field private static final kEAGLRenderingAPIOpenGLES2:I = 0x2


# instance fields
.field private backgroundColourChanged:Z

.field protected backgroundLayerActive:Z

.field protected backgroundLayerEnabled:Z

.field backingHeight:Ljava/nio/IntBuffer;

.field backingWidth:Ljava/nio/IntBuffer;

.field private bounds:Landroid/graphics/Rect;

.field private center:Landroid/graphics/PointF;

.field private currentBackgroundColour:I

.field private currentContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private glFactory:Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLContextFactory;

.field private glRenderer:Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;

.field private previousContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private recreateBuffers:Z

.field private renderThreadContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private targetBackgroundColour:I

.field viewFramebuffer:Ljava/nio/IntBuffer;

.field viewRenderbuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->delegate:Ljava/lang/ref/WeakReference;

    .line 79
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->initialise()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->delegate:Ljava/lang/ref/WeakReference;

    .line 88
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->initialise()V

    .line 89
    return-void
.end method

.method private checkFrameBufferCreated()Z
    .locals 2

    .prologue
    .line 245
    const v0, 0x8d40

    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createFramebuffer()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method private currentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .prologue
    .line 641
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 642
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1
.end method

.method private destroyFramebuffer()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 275
    .local v0, "result":Z
    return v0
.end method

.method private recreateFrameBuffer()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method private setCurrentEGLContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 7
    .param p1, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 617
    if-nez p1, :cond_0

    .line 618
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid OpenGL context specified"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 620
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 623
    .local v0, "currentEgl":Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 624
    .local v1, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/16 v5, 0x3059

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    .line 625
    .local v2, "drawSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    const/16 v5, 0x305a

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    .line 627
    .local v3, "readSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-interface {v0, v1, v2, v3, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v4

    .line 636
    .local v4, "result":Z
    return v4
.end method

.method private setupContextForMainThread()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method private updateBackgroundColourWithTimestep(DD)Z
    .locals 25
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->targetBackgroundColour:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v19, v20, v21

    .line 407
    .local v19, "tRed":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->targetBackgroundColour:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->green(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v18, v20, v21

    .line 408
    .local v18, "tGreen":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->targetBackgroundColour:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v17, v20, v21

    .line 409
    .local v17, "tBlue":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->targetBackgroundColour:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->alpha(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v16, v20, v21

    .line 411
    .local v16, "tAlpha":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentBackgroundColour:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v9, v20, v21

    .line 412
    .local v9, "cRed":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentBackgroundColour:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->green(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v8, v20, v21

    .line 413
    .local v8, "cGreen":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentBackgroundColour:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v7, v20, v21

    .line 414
    .local v7, "cBlue":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentBackgroundColour:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->alpha(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v6, v20, v21

    .line 417
    .local v6, "cAlpha":F
    const/4 v10, 0x0

    .line 420
    .local v10, "changedBackgroundColour":Z
    sub-float v15, v19, v9

    .line 421
    .local v15, "redDiff":F
    sub-float v13, v18, v8

    .line 422
    .local v13, "greenDiff":F
    sub-float v5, v17, v7

    .line 423
    .local v5, "blueDiff":F
    sub-float v3, v16, v6

    .line 425
    .local v3, "alphaDiff":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3a83126f    # 0.001f

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_0

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3a83126f    # 0.001f

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_0

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3a83126f    # 0.001f

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3a83126f    # 0.001f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_1

    .line 430
    :cond_0
    const v20, 0x3e4ccccd    # 0.2f

    move-wide/from16 v0, p3

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v11, v20, v21

    .line 432
    .local v11, "framerateCompensatedInterpRate":F
    mul-float v20, v15, v11

    add-float v14, v9, v20

    .line 433
    .local v14, "red":F
    mul-float v20, v13, v11

    add-float v12, v8, v20

    .line 434
    .local v12, "green":F
    mul-float v20, v5, v11

    add-float v4, v7, v20

    .line 435
    .local v4, "blue":F
    mul-float v20, v3, v11

    add-float v2, v6, v20

    .line 437
    .local v2, "alpha":F
    const/high16 v20, 0x437f0000    # 255.0f

    mul-float v20, v20, v2

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v21, v21, v14

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    mul-float v22, v22, v12

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x437f0000    # 255.0f

    mul-float v23, v23, v4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v20 .. v23}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentBackgroundColour:I

    .line 442
    const/4 v10, 0x1

    .line 445
    .end local v2    # "alpha":F
    .end local v4    # "blue":F
    .end local v11    # "framerateCompensatedInterpRate":F
    .end local v12    # "green":F
    .end local v14    # "red":F
    :cond_1
    return v10
.end method


# virtual methods
.method public bindContext()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    return v0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    const-string v0, "OffersOpenGLView"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 163
    iput-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->previousContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 165
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->glRenderer:Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;

    invoke-virtual {v0, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;->setDelegate(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;)V

    .line 166
    iput-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->glRenderer:Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;

    .line 168
    iput-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->glFactory:Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLContextFactory;

    .line 169
    return-void
.end method

.method public display()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 456
    iget-boolean v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundLayerEnabled:Z

    if-ne v1, v2, :cond_0

    .line 458
    iget-boolean v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundColourChanged:Z

    if-ne v1, v2, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setClearColour()V

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;

    .line 464
    .local v0, "delegate":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;
    if-eqz v0, :cond_1

    .line 465
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->bounds:Landroid/graphics/Rect;

    invoke-interface {v0, p0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;->openGLViewDrawInRect(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;Landroid/graphics/Rect;)V

    .line 518
    :cond_1
    return-void
.end method

.method public doUIDraw()V
    .locals 2

    .prologue
    .line 682
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;

    .line 683
    .local v0, "delegate":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;
    if-eqz v0, :cond_0

    .line 684
    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;->doUIDraw()V

    .line 686
    :cond_0
    return-void
.end method

.method public doUIUpdate()V
    .locals 2

    .prologue
    .line 673
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;

    .line 674
    .local v0, "delegate":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;
    if-eqz v0, :cond_0

    .line 675
    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;->doUIUpdate()V

    .line 677
    :cond_0
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasBackgroundColourChanged()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundColourChanged:Z

    return v0
.end method

.method protected initialise()V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    const-string v0, "OffersOpenGLView"

    const-string v2, "initialise"

    invoke-static {v0, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 104
    :cond_0
    iput v6, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->targetBackgroundColour:I

    .line 105
    iput v6, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentBackgroundColour:I

    .line 107
    iput-boolean v6, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundColourChanged:Z

    .line 108
    iput-boolean v6, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundLayerEnabled:Z

    .line 110
    invoke-static {v7}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->viewRenderbuffer:Ljava/nio/IntBuffer;

    .line 111
    invoke-static {v7}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->viewFramebuffer:Ljava/nio/IntBuffer;

    .line 112
    invoke-static {v7}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backingWidth:Ljava/nio/IntBuffer;

    .line 113
    invoke-static {v7}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backingHeight:Ljava/nio/IntBuffer;

    .line 116
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLContextFactory;

    invoke-direct {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLContextFactory;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->glFactory:Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLContextFactory;

    .line 117
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->glFactory:Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLContextFactory;

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setEGLContextClientVersion(I)V

    .line 122
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setEGLConfigChooser(IIIIII)V

    .line 123
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 125
    invoke-virtual {p0, v7}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setZOrderOnTop(Z)V

    .line 127
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;

    invoke-direct {v0, p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;-><init>(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->glRenderer:Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;

    .line 128
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->glRenderer:Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 131
    invoke-virtual {p0, v6}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setRenderMode(I)V

    goto :goto_0
.end method

.method public isBackgroundLayerActive()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundLayerActive:Z

    return v0
.end method

.method public isBackgroundLayerEnabled()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundLayerEnabled:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 648
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 650
    const-string v0, "OffersOpenGLView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 657
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 659
    const-string v0, "OffersOpenGLView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 691
    const-string v2, "OffersOpenGLView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 695
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setupView(Landroid/graphics/Rect;)V

    .line 699
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;

    .line 700
    .local v1, "delegate":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;
    if-eqz v1, :cond_0

    .line 701
    invoke-interface {v1, p1, p2, p3}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 702
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 706
    const-string v1, "OffersOpenGLView"

    const-string v2, "onSurfaceCreated"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;

    .line 710
    .local v0, "delegate":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;
    if-eqz v0, :cond_0

    .line 711
    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 712
    :cond_0
    return-void
.end method

.method public openGLViewDrawInRect(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 665
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;

    .line 666
    .local v0, "delegate":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;
    if-eqz v0, :cond_0

    .line 667
    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;->openGLViewDrawInRect(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;Landroid/graphics/Rect;)V

    .line 668
    :cond_0
    return-void
.end method

.method public setBackgroundColourChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundColourChanged:Z

    .line 318
    return-void
.end method

.method public setBackgroundLayerActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundLayerActive:Z

    .line 310
    return-void
.end method

.method public setBackgroundLayerEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundLayerEnabled:Z

    .line 297
    return-void
.end method

.method setClearColour()V
    .locals 6

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 525
    iget v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentBackgroundColour:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    .line 526
    .local v3, "cRed":F
    iget v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentBackgroundColour:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v5

    .line 527
    .local v1, "cBlue":F
    iget v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentBackgroundColour:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v5

    .line 528
    .local v2, "cGreen":F
    iget v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentBackgroundColour:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v5

    .line 530
    .local v0, "cAlpha":F
    invoke-static {v3, v2, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 537
    return-void
.end method

.method public setDelegate(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;)V
    .locals 3
    .param p1, "delegate"    # Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;

    .prologue
    .line 322
    const-string v0, "OffersOpenGLView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting OpenGLView delegate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->delegate:Ljava/lang/ref/WeakReference;

    .line 324
    return-void
.end method

.method public setTargetBackgroundColour(I)V
    .locals 2
    .param p1, "targetBackgroundColour"    # I

    .prologue
    const/4 v1, 0x1

    .line 284
    iput p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->targetBackgroundColour:I

    .line 286
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundLayerEnabled:Z

    if-ne v0, v1, :cond_0

    .line 287
    iput-boolean v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundColourChanged:Z

    .line 288
    :cond_0
    return-void
.end method

.method public setupView(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 344
    const-string v2, "OffersOpenGLView"

    const-string v3, "setupView"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->currentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->renderThreadContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 348
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->renderThreadContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Render thread OpenGL context is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :cond_0
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->bounds:Landroid/graphics/Rect;

    .line 354
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 355
    .local v1, "width":I
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 357
    .local v0, "height":I
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v1

    mul-float/2addr v3, v5

    int-to-float v4, v0

    mul-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->center:Landroid/graphics/PointF;

    .line 359
    const-string v2, "OffersOpenGLView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting viewport size (0,0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {v6, v6, v1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 367
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 369
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setClearColour()V

    .line 371
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLExtensions;->cacheOpenGLESExtensions()V

    .line 381
    return-void
.end method

.method public targetBackgroundColour()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->targetBackgroundColour:I

    return v0
.end method

.method public unbindContext()Z
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x1

    return v0
.end method

.method public updateWithTimestep(DD)V
    .locals 3
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundLayerEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 400
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->updateBackgroundColourWithTimestep(DD)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->backgroundColourChanged:Z

    .line 402
    :cond_0
    return-void
.end method
