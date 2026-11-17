.class public Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;
.super Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
.source "BubbleViewOpenGLImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BubbleView"


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private nodeHit:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->nodeHit:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->nodeHit:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

.method private getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->nodeHit:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    return-object v0
.end method

.method private shouldProcessEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    const-string v6, "BubbleView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldProcessEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 96
    const/4 v4, 0x0

    .line 98
    .local v4, "result":Z
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 101
    .local v3, "point":Landroid/graphics/PointF;
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->pointCollision(Landroid/graphics/PointF;)Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v1

    .line 103
    .local v1, "hitNode":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-eqz v1, :cond_3

    .line 105
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    .line 107
    .local v0, "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-nez v0, :cond_2

    .line 109
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->nodeHit:Ljava/lang/ref/WeakReference;

    .line 131
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 151
    .end local v0    # "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_1
    :goto_1
    return v4

    .line 115
    .restart local v0    # "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_2
    if-eq v0, v1, :cond_0

    .line 119
    invoke-interface {v0, v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->hitTest(Landroid/graphics/PointF;)Z

    move-result v5

    .line 121
    .local v5, "touchingPreviousNode":Z
    if-eqz v5, :cond_0

    .line 124
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->nodeHit:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 136
    .end local v0    # "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    .end local v5    # "touchingPreviousNode":Z
    :cond_3
    iget-boolean v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->backgroundLayerEnabled:Z

    if-eqz v6, :cond_1

    .line 140
    iget-boolean v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->backgroundLayerActive:Z

    if-eqz v6, :cond_1

    .line 142
    new-instance v2, Landroid/content/Intent;

    const-string v6, "dismissoffers"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 146
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private touchesBegan(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    const-string v2, "BubbleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touchesBegan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 219
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    .line 221
    .local v0, "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-eqz v0, :cond_0

    .line 223
    instance-of v2, v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 225
    check-cast v1, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    .line 226
    .local v1, "touchObj":Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
    invoke-interface {v1, p1, p0}, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;->touchesBegan(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 229
    .end local v1    # "touchObj":Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
    :cond_0
    return-void
.end method

.method private touchesCancelled(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 247
    const-string v2, "BubbleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touchesCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 249
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    .line 251
    .local v0, "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-eqz v0, :cond_1

    .line 253
    instance-of v2, v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 255
    check-cast v1, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    .line 256
    .local v1, "touchObj":Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
    invoke-interface {v1, p1, p0}, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;->touchesCancelled(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 259
    .end local v1    # "touchObj":Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->nodeHit:Ljava/lang/ref/WeakReference;

    .line 261
    :cond_1
    return-void
.end method

.method private touchesEnded(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 264
    const-string v2, "BubbleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touchesEnded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 266
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    .line 268
    .local v0, "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-eqz v0, :cond_1

    .line 270
    instance-of v2, v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 272
    check-cast v1, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    .line 273
    .local v1, "touchObj":Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
    invoke-interface {v1, p1, p0}, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;->touchesEnded(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 276
    .end local v1    # "touchObj":Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->nodeHit:Ljava/lang/ref/WeakReference;

    .line 278
    :cond_1
    return-void
.end method

.method private touchesMoved(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    const-string v2, "BubbleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touchesMoved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 234
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    .line 236
    .local v0, "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-eqz v0, :cond_0

    .line 238
    instance-of v2, v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 240
    check-cast v1, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    .line 241
    .local v1, "touchObj":Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
    invoke-interface {v1, p1, p0}, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;->touchesMoved(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 244
    .end local v1    # "touchObj":Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
    :cond_0
    return-void
.end method


# virtual methods
.method protected initialise()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->initialise()V

    .line 66
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->gestureDetector:Landroid/view/GestureDetector;

    .line 67
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 284
    const-string v0, "BubbleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 291
    const-string v1, "BubbleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 294
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    .line 296
    .local v0, "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-eqz v0, :cond_0

    .line 298
    instance-of v1, v0, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;

    if-eqz v1, :cond_0

    .line 306
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 76
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 78
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->shouldProcessEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 86
    :cond_0
    :goto_0
    const-string v2, "BubbleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 88
    return v1

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 311
    const-string v0, "BubbleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongPress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 312
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 317
    const-string v2, "BubbleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScroll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 319
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    .line 321
    .local v0, "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-eqz v0, :cond_0

    .line 323
    instance-of v2, v0, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 326
    check-cast v1, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;

    .line 327
    .local v1, "gestureObj":Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;
    new-instance v2, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;-><init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    invoke-interface {v1, v2}, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;->gestureRecognized(Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;)V

    .line 331
    .end local v1    # "gestureObj":Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    const-string v0, "BubbleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowPress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 337
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 341
    const-string v2, "BubbleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSingleTapUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 343
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    .line 344
    .local v0, "currentNodeHit":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-eqz v0, :cond_0

    .line 346
    instance-of v2, v0, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 349
    check-cast v1, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;

    .line 350
    .local v1, "gestureObj":Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;
    new-instance v2, Lcom/chillingo/liboffers/gui/interaction/gestures/TapGestureRecognizer;

    invoke-direct {v2, p1}, Lcom/chillingo/liboffers/gui/interaction/gestures/TapGestureRecognizer;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {v1, v2}, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;->gestureRecognized(Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;)V

    .line 355
    .end local v1    # "gestureObj":Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    const-string v3, "BubbleView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 160
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 165
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->getCurrentNodeHit()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    if-nez v3, :cond_1

    .line 167
    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->backgroundLayerEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->backgroundLayerActive:Z

    if-eqz v3, :cond_0

    .line 168
    const-string v3, "BubbleView"

    const-string v4, "onTouchEvent - no nodes being interacted with but background active"

    invoke-static {v3, v4, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 211
    :goto_0
    return v1

    .line 175
    :cond_0
    const-string v1, "BubbleView"

    const-string v3, "no nodes being interacted with and background inactive"

    invoke-static {v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 176
    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 182
    .local v0, "action":I
    const-string v3, "BubbleView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processing action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 185
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->touchesBegan(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->touchesMoved(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 201
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->touchesCancelled(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 207
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;->touchesEnded(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
