.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;
.super Ljava/lang/Object;
.source "Cocos2dxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume(Lcom/chillingo/puzzlecraft/android/ajagplay/CocosSurfaceViewStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field final synthetic val$cocos2dxListener:Lcom/chillingo/puzzlecraft/android/ajagplay/CocosSurfaceViewStateChangeListener;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;Lcom/chillingo/puzzlecraft/android/ajagplay/CocosSurfaceViewStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .prologue
    .line 208
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;->val$cocos2dxListener:Lcom/chillingo/puzzlecraft/android/ajagplay/CocosSurfaceViewStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$300(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleOnResume()V

    .line 212
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;->val$cocos2dxListener:Lcom/chillingo/puzzlecraft/android/ajagplay/CocosSurfaceViewStateChangeListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;->val$cocos2dxListener:Lcom/chillingo/puzzlecraft/android/ajagplay/CocosSurfaceViewStateChangeListener;

    invoke-interface {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/CocosSurfaceViewStateChangeListener;->onSurfaceViewResumed()V

    .line 215
    :cond_0
    return-void
.end method
