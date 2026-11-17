.class public interface abstract Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLRendererDelegate;
.super Ljava/lang/Object;
.source "OpenGLRendererDelegate.java"


# virtual methods
.method public abstract doUIDraw()V
.end method

.method public abstract doUIUpdate()V
.end method

.method public abstract onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
.end method

.method public abstract onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public abstract openGLViewDrawInRect(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;Landroid/graphics/Rect;)V
.end method
