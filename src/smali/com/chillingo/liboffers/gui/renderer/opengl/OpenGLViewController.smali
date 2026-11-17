.class public Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;
.super Landroid/widget/FrameLayout;
.source "OpenGLViewController.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/renderer/ViewController;
.implements Lcom/chillingo/liboffers/gui/misc/UpdateProxyDelegate;
.implements Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;


# static fields
.field private static final LOG_RENDER_PHASE:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OffersOpenGLViewController"

.field private static final LOG_UPDATE_PHASE:Z


# instance fields
.field private currentUpdateStartTimestamp:Ljava/util/Date;

.field private frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

.field private lastUpdateEndTimestamp:Ljava/util/Date;

.field private offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

.field private oglView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;",
            ">;"
        }
    .end annotation
.end field

.field private pause:Z

.field private proxy:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

.field private timeStep:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->oglView:Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->initialise()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->oglView:Ljava/lang/ref/WeakReference;

    .line 69
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->initialise()V

    .line 70
    return-void
.end method


# virtual methods
.method public addOpenGLViewFromClass(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "OffersOpenGLViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOpenGLViewFromClass: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid view class specified for OpenGLViewController"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 106
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 107
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-object v0, v4

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-object v3, v0

    .line 109
    .local v3, "view":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    invoke-virtual {p0, v3}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0, v3}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->onOpenGLViewAdded(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-void

    .line 114
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "view":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to create OpenGL view"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method checkTimeSinceLastUpdateIsWithinTolerance()V
    .locals 12

    .prologue
    .line 354
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->currentUpdateStartTimestamp:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->lastUpdateEndTimestamp:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v4, v6, v8

    .line 356
    .local v4, "timeDifference":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    iget-object v10, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-virtual {v10}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->getValue()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    div-double v0, v6, v8

    .line 359
    .local v0, "expectedTimeDifference":D
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v2, v0, v6

    .line 361
    .local v2, "expectedTimeDifferenceTolerance":D
    cmpl-double v6, v4, v2

    if-ltz v6, :cond_0

    .line 367
    const-string v6, "Offers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING: Update longer than expected. [Timestep = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Expected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Threshold = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", FrameInterval = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    return-void
.end method

.method protected doCleanup()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->shutdown()V

    .line 138
    return-void
.end method

.method public doUIDraw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    const-string v0, "OffersOpenGLViewController"

    const-string v1, "Render start"

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 225
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->render()V

    .line 227
    const-string v0, "OffersOpenGLViewController"

    const-string v1, "Render end"

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 228
    return-void
.end method

.method public doUIUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->updateTimestamps()V

    .line 207
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->checkTimeSinceLastUpdateIsWithinTolerance()V

    .line 209
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->pause:Z

    if-nez v0, :cond_0

    .line 211
    const-string v0, "OffersOpenGLViewController"

    const-string v1, "Update start"

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 214
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->update()V

    .line 216
    const-string v0, "OffersOpenGLViewController"

    const-string v1, "Update end"

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 219
    :cond_0
    return-void
.end method

.method public doUpdate()V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->oglView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    .line 197
    .local v0, "oglView":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->requestRender()V

    .line 199
    :cond_0
    return-void
.end method

.method public frameInterval()Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    return-object v0
.end method

.method public getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->oglView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    return-object v0
.end method

.method protected initialise()V
    .locals 3

    .prologue
    .line 75
    const-string v0, "OffersOpenGLViewController"

    const-string v1, "initialise"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->setFrameInterval(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V

    .line 84
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->TIMER:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->setUpdateMethod(Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->pause:Z

    .line 88
    new-instance v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-direct {v0, p0, v1, v2}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;-><init>(Lcom/chillingo/liboffers/gui/misc/UpdateProxyDelegate;Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->proxy:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->setClickable(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->updateTimestamps()V

    .line 95
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->pause:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 392
    .local v0, "result":Z
    const-string v1, "OffersOpenGLViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 394
    return v0
.end method

.method public onOpenGLViewAdded(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;)V
    .locals 3
    .param p1, "view"    # Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    .prologue
    .line 124
    const-string v0, "OffersOpenGLViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpenGLViewAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1, p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setDelegate(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->setOpenGLView(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;)V

    .line 132
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->updateRenderMode()V

    .line 133
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 428
    const-string v0, "OffersOpenGLViewController"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->onPause()V

    .line 430
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "OffersOpenGLViewController"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->onResume()V

    .line 436
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 410
    const-string v0, "OffersOpenGLViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->removeAllTextures()V

    .line 414
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->removeAllPrograms()V

    .line 417
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->recreateAssetsForAllNodes()V

    .line 419
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 423
    const-string v0, "OffersOpenGLViewController"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 402
    .local v0, "result":Z
    const-string v1, "OffersOpenGLViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 404
    return v0
.end method

.method public openGLViewDrawInRect(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 249
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->oglView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    .line 240
    .local v0, "oglView":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->display()V

    .line 242
    :cond_0
    return-void
.end method

.method public setFrameInterval(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .locals 6
    .param p1, "interval"    # Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->LINKED_TO_DRAW:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    if-ne v0, v1, :cond_0

    .line 271
    sget-object p1, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 272
    const-string v0, "OffersOpenGLViewController"

    const-string v1, "Limiting the frame interval to LOW because the update method is currently set to be linked to the draw phase"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    if-eq p1, v0, :cond_1

    .line 278
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 281
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-virtual {v4}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->getValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->timeStep:D

    .line 283
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->stopUpdateAndRender()V

    .line 284
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->startUpdateAndRender()V

    .line 286
    :cond_1
    return-void
.end method

.method public setOpenGLView(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->oglView:Ljava/lang/ref/WeakReference;

    .line 160
    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "pauseState"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->pause:Z

    .line 165
    return-void
.end method

.method public setUpdateMethod(Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;)V
    .locals 1
    .param p1, "method"    # Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    if-eq v0, p1, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->stopUpdateAndRender()V

    .line 302
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->proxy:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->proxy:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    invoke-virtual {v0, p1}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->setUpdateMethod(Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;)V

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->startUpdateAndRender()V

    .line 307
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->updateRenderMode()V

    .line 311
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->oglView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    .line 145
    .local v0, "oglView":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setDelegate(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewDelegate;)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->proxy:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->shutdown()V

    .line 149
    iput-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->proxy:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    .line 150
    return-void
.end method

.method startUpdateAndRender()V
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->updateTimestamps()V

    .line 334
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->proxy:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->proxy:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->startUpdating(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V

    .line 336
    :cond_0
    return-void
.end method

.method stopUpdateAndRender()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->proxy:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->proxy:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->stopUpdating()V

    .line 341
    :cond_0
    return-void
.end method

.method public timeSinceLastUpdate()D
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->timeStep:D

    return-wide v0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public updateMethod()Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    return-object v0
.end method

.method updateRenderMode()V
    .locals 3

    .prologue
    .line 315
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    sget-object v2, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->TIMER:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    if-ne v1, v2, :cond_1

    .line 317
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->oglView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    .line 318
    .local v0, "oglView":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    if-eqz v0, :cond_0

    .line 319
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setRenderMode(I)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    .end local v0    # "oglView":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    :cond_1
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->oglView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    .line 324
    .restart local v0    # "oglView":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    if-eqz v0, :cond_0

    .line 325
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setRenderMode(I)V

    goto :goto_0
.end method

.method updateTimestamps()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->currentUpdateStartTimestamp:Ljava/util/Date;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->lastUpdateEndTimestamp:Ljava/util/Date;

    .line 348
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->currentUpdateStartTimestamp:Ljava/util/Date;

    .line 349
    return-void
.end method
