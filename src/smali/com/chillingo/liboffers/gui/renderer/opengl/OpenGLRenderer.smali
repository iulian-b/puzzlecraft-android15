.class Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;
.super Ljava/lang/Object;
.source "OpenGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OffersOpenGLRenderer"


# instance fields
.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;->delegate:Ljava/lang/ref/WeakReference;

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;->delegate:Ljava/lang/ref/WeakReference;

    .line 22
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;

    .line 33
    .local v0, "delegate":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;
    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;->doUIUpdate()V

    .line 36
    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;->doUIDraw()V

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v1, "OffersOpenGLRenderer"

    const-string v2, "No delegate for onDrawFrame"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;

    .line 47
    .local v0, "delegate":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1, p2, p3}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 52
    :goto_0
    invoke-static {}, Lcom/chillingo/liboffers/utils/DeviceUtils;->clearCacheData()V

    .line 53
    return-void

    .line 50
    :cond_0
    const-string v1, "OffersOpenGLRenderer"

    const-string v2, "No delegate for onSurfaceChanged"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;

    .line 60
    .local v0, "delegate":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v1, "OffersOpenGLRenderer"

    const-string v2, "No delegate for onSurfaceCreated"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDelegate(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;

    .prologue
    .line 72
    const-string v0, "OffersOpenGLRenderer"

    const-string v1, "Updating delegate"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRenderer;->delegate:Ljava/lang/ref/WeakReference;

    .line 75
    return-void
.end method
