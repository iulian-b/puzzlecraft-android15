.class public Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;
.super Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;
.source "BubbleViewControllerOpenGLImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBadgeNotificationRunnable;,
        Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBubbleViewForOfferRunnable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OffersBubbleViewController"


# instance fields
.field private backgroundLayerEnabled:Z

.field private enableGreyBackgroundAfterAutoRelease:Z

.field private numberOfOffersFloating:I

.field private offerDisplayIndex:I

.field private offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

.field private projectionMatrix:[F

.field private receiver:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewControllerBroadcastReceiver;

.field private vcDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/gui/renderer/ViewControllerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->vcDelegate:Ljava/lang/ref/WeakReference;

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->projectionMatrix:[F

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->vcDelegate:Ljava/lang/ref/WeakReference;

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->projectionMatrix:[F

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;
    .param p1, "x1"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "x2"    # Ljava/util/HashMap;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->updateBubbleViewForOfferOnGLThread(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->updateBadgeNotificationOnGLThread(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->vcDelegate:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->doOfferReleasedOnGLThread(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->doOfferRemovedOnGLThread()V

    return-void
.end method

.method private checkScenegraphState()V
    .locals 5

    .prologue
    .line 145
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->numberOfNodesInScene()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    .local v0, "numberOfNodes":I
    if-lez v0, :cond_0

    .line 148
    const-string v2, "OffersBubbleViewController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scenegraph has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nodes active during GUI creation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v1

    .line 159
    .local v1, "view":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    new-instance v2, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$1;

    invoke-direct {v2, p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$1;-><init>(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;)V

    invoke-virtual {v1, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 169
    .end local v1    # "view":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    :cond_0
    return-void
.end method

.method private doOfferReleasedOnGLThread(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v8, 0x80

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 291
    const-string v3, "OffersBubbleViewController"

    const-string v4, "doOfferReleasedOnGLThread"

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v1, 0x0

    .line 296
    .local v1, "enableGreyBackgroundOverride":Z
    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->enableGreyBackgroundAfterAutoRelease:Z

    if-eqz v3, :cond_0

    .line 298
    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    if-nez v3, :cond_0

    .line 299
    const-string v3, "releaseType"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 301
    .local v2, "releaseType":Ljava/lang/String;
    const-string v3, "cornerTap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 302
    const/4 v1, 0x1

    .line 306
    .end local v2    # "releaseType":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->numberOfOffersFloating:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->numberOfOffersFloating:I

    .line 308
    const-string v3, "OffersBubbleViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of offers floating =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->numberOfOffersFloating:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->numberOfOffersFloating:I

    if-lez v3, :cond_3

    .line 312
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->isBackgroundLayerActive()Z

    move-result v3

    if-nez v3, :cond_4

    .line 314
    if-eqz v1, :cond_1

    .line 316
    iput-boolean v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    .line 317
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setBackgroundLayerEnabled(Z)V

    .line 320
    :cond_1
    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    if-eqz v3, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v3

    invoke-static {v8, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setTargetBackgroundColour(I)V

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setBackgroundLayerActive(Z)V

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v3, "offerBackgroundLayerActive"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "bgLayerIntent":Landroid/content/Intent;
    const-string v3, "active"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->isBackgroundLayerActive()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 344
    .end local v0    # "bgLayerIntent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 330
    :cond_4
    if-eqz v1, :cond_3

    .line 332
    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    if-nez v3, :cond_3

    .line 335
    iput-boolean v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    .line 338
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setBackgroundLayerEnabled(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v3

    invoke-static {v8, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setTargetBackgroundColour(I)V

    goto :goto_0
.end method

.method private doOfferRemovedOnGLThread()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 362
    const-string v1, "OffersBubbleViewController"

    const-string v2, "doOfferRemovedOnGLThread"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->numberOfOffersFloating:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->numberOfOffersFloating:I

    .line 366
    const-string v1, "OffersBubbleViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of offers floating =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->numberOfOffersFloating:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->numberOfOffersFloating:I

    if-nez v1, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->isBackgroundLayerActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iget-boolean v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setTargetBackgroundColour(I)V

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setBackgroundLayerActive(Z)V

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-string v1, "offerBackgroundLayerActive"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "bgLayerIntent":Landroid/content/Intent;
    const-string v1, "active"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->isBackgroundLayerActive()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 383
    .end local v0    # "bgLayerIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private setupGL()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method private tearDownGL()V
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v0

    .line 391
    .local v0, "oglView":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->cleanup()V

    .line 392
    return-void
.end method

.method private updateBadgeNotificationOnGLThread(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "OffersBubbleViewController"

    const-string v1, "updateBadgeNotificationOnGLThread"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v0, "parentview"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v0

    const-class v1, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;Landroid/content/Context;)V

    .line 514
    return-void
.end method

.method private updateBubbleViewForOfferOnGLThread(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/Offer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p2, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "OffersBubbleViewController"

    const-string v3, "updateBubbleViewForOfferOnGLThread"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v2, "offerData"

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->offerDisplayIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 470
    .local v0, "index":Ljava/lang/Integer;
    const-string v2, "index"

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v2, "emitterClassName"

    const-class v3, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-class v2, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "nodeClass":Ljava/lang/String;
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v1, v3, p2, v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;Landroid/content/Context;)V

    .line 478
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    invoke-interface {v2, p1, v0}, Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;->offerWasDisplayedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V

    .line 480
    iget v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->offerDisplayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->offerDisplayIndex:I

    .line 481
    return-void
.end method


# virtual methods
.method public addBubbleViewFromClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "OffersBubbleViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBubbleViewFromClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->addOpenGLViewFromClass(Ljava/lang/Class;)V

    .line 132
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->checkScenegraphState()V

    .line 133
    return-void
.end method

.method public backgroundLayerEnabled()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    return v0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 203
    const-string v1, "OffersBubbleViewController"

    const-string v2, "cleanup"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v0

    .line 222
    .local v0, "oglView":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    new-instance v1, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$2;

    invoke-direct {v1, p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$2;-><init>(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method protected doCleanupOnGLThread()V
    .locals 3

    .prologue
    .line 242
    const-string v1, "OffersBubbleViewController"

    const-string v2, "doCleanupOnGLThread"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v0

    .line 246
    .local v0, "oglView":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->bindContext()Z

    .line 249
    invoke-static {}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->releaseInstance()V

    .line 251
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->releaseInstance()V

    .line 252
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->releaseInstance()V

    .line 253
    invoke-static {}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->releaseInstance()V

    .line 257
    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->unbindContext()Z

    .line 259
    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->cleanup()V

    .line 262
    invoke-super {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->doCleanup()V

    .line 263
    return-void
.end method

.method protected initialise()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-super {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->initialise()V

    .line 116
    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->numberOfOffersFloating:I

    .line 117
    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    .line 118
    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->enableGreyBackgroundAfterAutoRelease:Z

    .line 120
    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->offerDisplayIndex:I

    .line 123
    new-instance v0, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewControllerBroadcastReceiver;

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewControllerBroadcastReceiver;-><init>(Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->receiver:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewControllerBroadcastReceiver;

    .line 124
    return-void
.end method

.method public initialise(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->parseProperties(Ljava/util/HashMap;)V

    .line 174
    return-void
.end method

.method public numberOfBubblesActive()I
    .locals 5

    .prologue
    .line 441
    const-class v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;

    .line 442
    .local v0, "bubbleType":Ljava/lang/Class;
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->numberOfNodesInSceneOfType(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 444
    .local v1, "numberOfBubblesInScene":I
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->numberOfNodesToBeCreatedOfType(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 446
    .local v3, "numberOfBubblesToBeCreated":I
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->numberOfNodesToBeAddedToSceneOfType(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 448
    .local v2, "numberOfBubblesToBeAdded":I
    add-int v4, v1, v3

    add-int/2addr v4, v2

    return v4
.end method

.method public offerReleased(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 271
    const-string v2, "OffersBubbleViewController"

    const-string v3, "offerReleased"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 276
    .local v0, "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "releaseType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "releaseType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 279
    const-string v2, "releaseType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v2

    new-instance v3, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$3;

    invoke-direct {v3, p0, v0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$3;-><init>(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method public offerRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 347
    const-string v0, "OffersBubbleViewController"

    const-string v1, "offerRemoved"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v0

    new-instance v1, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$4;

    invoke-direct {v1, p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$4;-><init>(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method public onBubbleViewAdded(Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;)V
    .locals 3
    .param p1, "view"    # Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;

    .prologue
    .line 137
    const-string v0, "OffersBubbleViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBubbleViewAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    check-cast p1, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    .end local p1    # "view":Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;
    invoke-super {p0, p1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLViewController;->onOpenGLViewAdded(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;)V

    .line 140
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->checkScenegraphState()V

    .line 141
    return-void
.end method

.method public openGLViewDrawInRect(Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 610
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 613
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->projectionMatrix:[F

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->drawWithProjectionMatrix([F)V

    .line 617
    return-void
.end method

.method public parseProperties(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "backgroundLayerEnabled"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 180
    .local v0, "backgroundEnabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    if-eq v2, v3, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    .line 186
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v2

    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    invoke-virtual {v2, v3}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->setBackgroundLayerEnabled(Z)V

    .line 191
    :cond_0
    const-string v2, "enableGreyBackgroundAfterAutoRelease"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 193
    .local v1, "enableGreyBackgroundAfterAutoRelease":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->enableGreyBackgroundAfterAutoRelease:Z

    if-eq v2, v3, :cond_1

    .line 195
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->enableGreyBackgroundAfterAutoRelease:Z

    .line 198
    :cond_1
    return-void
.end method

.method public removeBadgeNotification()V
    .locals 2

    .prologue
    .line 518
    const-string v0, "OffersBubbleViewController"

    const-string v1, "removeBadgeNotification"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v0

    new-instance v1, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$5;

    invoke-direct {v1, p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$5;-><init>(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method public removeBadgeNotificationOnGlThread()V
    .locals 4

    .prologue
    .line 529
    const-string v2, "OffersBubbleViewController"

    const-string v3, "removeBadgeNotificationOnGlThread"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v2

    const-class v3, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;

    invoke-virtual {v2, v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->numberOfNodesInSceneOfType(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 533
    .local v0, "badgeNodes":I
    if-eqz v0, :cond_0

    .line 535
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 536
    .local v1, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "identifier"

    const-string v3, "shutdown"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v2

    const-class v3, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;

    invoke-virtual {v2, v3, v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->sendMessageToNodesOfType(Ljava/lang/Class;Ljava/util/HashMap;)V

    .line 540
    .end local v1    # "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public setBackgroundLayerEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->backgroundLayerEnabled:Z

    .line 486
    return-void
.end method

.method public setTelemetryHandler(Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;)V
    .locals 0
    .param p1, "telemetryHandler"    # Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    .line 627
    return-void
.end method

.method public setViewControllerDelegate(Lcom/chillingo/liboffers/gui/renderer/ViewControllerDelegate;)V
    .locals 1
    .param p1, "vcDelegate"    # Lcom/chillingo/liboffers/gui/renderer/ViewControllerDelegate;

    .prologue
    .line 622
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->vcDelegate:Ljava/lang/ref/WeakReference;

    .line 623
    return-void
.end method

.method public update()V
    .locals 18

    .prologue
    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->timeSinceLastUpdate()D

    move-result-wide v16

    .line 578
    .local v16, "timestep":D
    const-wide v2, 0x3fa1111110c7c411L    # 0.0333333333

    div-double v12, v16, v2

    .line 580
    .local v12, "nominalTimestepFactor":D
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v14

    .line 582
    .local v14, "oglView":Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;
    invoke-virtual {v14}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 583
    .local v10, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->projectionMatrix:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 585
    invoke-virtual {v14}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->bindContext()Z

    .line 589
    :try_start_0
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v12, v13}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->update(DD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v12, v13}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->updateWithTimestep(DD)V

    .line 600
    invoke-virtual {v14}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->unbindContext()Z

    .line 601
    return-void

    .line 591
    :catch_0
    move-exception v11

    .line 593
    .local v11, "exception":Ljava/lang/Throwable;
    const-string v2, "BubbleViewControllerViewImpl"

    const-string v3, "Failed to update scenegraph"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public updateBadgeNotification(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "OffersBubbleViewController"

    const-string v1, "updateBadgeNotification"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v0

    new-instance v1, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBadgeNotificationRunnable;

    invoke-direct {v1, p1, p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBadgeNotificationRunnable;-><init>(Ljava/util/HashMap;Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 499
    return-void
.end method

.method public updateBubbleViewForOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/Offer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p2, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "OffersBubbleViewController"

    const-string v1, "updateBubbleViewForOffer"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->getOpenGLView()Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;

    move-result-object v0

    new-instance v1, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBubbleViewForOfferRunnable;

    invoke-direct {v1, p1, p2, p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBubbleViewForOfferRunnable;-><init>(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method
