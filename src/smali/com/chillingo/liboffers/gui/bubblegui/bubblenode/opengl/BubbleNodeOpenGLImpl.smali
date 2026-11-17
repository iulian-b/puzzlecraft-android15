.class public Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;
.super Ljava/lang/Object;
.source "BubbleNodeOpenGLImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
.implements Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
.implements Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
.implements Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl$2;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OffersBubbleNode"

.field private static final USE_EVENT_QUEUE:Z = true


# instance fields
.field private allowCollisionChanges:Z

.field private alphaMultiplier:F

.field private bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

.field private bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

.field private collisionEnabled:Z

.field private context:Landroid/content/Context;

.field private diameter:F

.field private direction:Landroid/graphics/PointF;

.field eventQueue:Ljava/util/Queue;

.field private iconOffset:Landroid/graphics/PointF;

.field private iconScale:F

.field private iconScaleFactor:F

.field private iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

.field private index:I

.field private offer:Lcom/chillingo/liboffers/model/Offer;

.field offerGuiSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;",
            ">;"
        }
    .end annotation
.end field

.field offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

.field private position:Landroid/graphics/PointF;

.field private receiver:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;

.field private rotation:Landroid/graphics/PointF;

.field private rotationRateZRadians:F

.field private scale:Landroid/graphics/PointF;

.field private speed:F

.field private stateMachine:Lcom/chillingo/liboffers/gui/misc/StateMachine;

.field private targetSpeed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    .line 95
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->context:Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconOffset:Landroid/graphics/PointF;

    .line 99
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    .line 100
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->rotation:Landroid/graphics/PointF;

    .line 101
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    .line 103
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->direction:Landroid/graphics/PointF;

    .line 105
    new-instance v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;-><init>(Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->receiver:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->eventQueue:Ljava/util/Queue;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->deferredActivation()V

    return-void
.end method

.method private deferredActivation()V
    .locals 4

    .prologue
    .line 903
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;->offerWasActivatedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V

    .line 905
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    .line 907
    .local v0, "guiSession":Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
    if-eqz v0, :cond_0

    .line 908
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    iget v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->activateOfferWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V

    .line 912
    :cond_0
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->eventQueue:Ljava/util/Queue;

    const-string v2, "removeFromScene"

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 915
    return-void
.end method

.method private determineInitialDirectionsFromCorner(Lcom/chillingo/liboffers/OfferSession$OffersCorner;F)Landroid/graphics/PointF;
    .locals 4
    .param p1, "corner"    # Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    .param p2, "angleRadians"    # F

    .prologue
    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, "dirX":F
    const/4 v1, 0x0

    .line 796
    .local v1, "dirY":F
    sget-object v2, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl$2;->$SwitchMap$com$chillingo$liboffers$OfferSession$OffersCorner:[I

    invoke-virtual {p1}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 819
    :goto_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 799
    :pswitch_0
    invoke-static {p2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    neg-float v0, v2

    .line 800
    invoke-static {p2}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    .line 801
    goto :goto_0

    .line 804
    :pswitch_1
    invoke-static {p2}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 805
    invoke-static {p2}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    .line 806
    goto :goto_0

    .line 809
    :pswitch_2
    invoke-static {p2}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 810
    invoke-static {p2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    neg-float v1, v2

    .line 811
    goto :goto_0

    .line 814
    :pswitch_3
    invoke-static {p2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    neg-float v0, v2

    .line 815
    invoke-static {p2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    neg-float v1, v2

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private determineInitialPositionFromCorner(Lcom/chillingo/liboffers/OfferSession$OffersCorner;)Landroid/graphics/PointF;
    .locals 5
    .param p1, "corner"    # Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/chillingo/liboffers/utils/DeviceUtils;->screenbounds(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object v0

    .line 749
    .local v0, "screenBounds":Landroid/graphics/RectF;
    const/4 v1, 0x0

    .line 750
    .local v1, "xpos":F
    const/4 v2, 0x0

    .line 752
    .local v2, "ypos":F
    sget-object v3, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl$2;->$SwitchMap$com$chillingo$liboffers$OfferSession$OffersCorner:[I

    invoke-virtual {p1}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 787
    :goto_0
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .line 756
    :pswitch_0
    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->diameter:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float v1, v3, v4

    .line 758
    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->diameter:F

    neg-float v2, v3

    .line 760
    goto :goto_0

    .line 764
    :pswitch_1
    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->diameter:F

    neg-float v1, v3

    .line 766
    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->diameter:F

    neg-float v2, v3

    .line 768
    goto :goto_0

    .line 772
    :pswitch_2
    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->diameter:F

    neg-float v1, v3

    .line 774
    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->diameter:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float v2, v3, v4

    .line 776
    goto :goto_0

    .line 780
    :pswitch_3
    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->diameter:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float v1, v3, v4

    .line 782
    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->diameter:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float v2, v3, v4

    goto :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private determineTransitionToCornerTargetPosFrom(Lcom/chillingo/liboffers/OfferSession$OffersCorner;F)Landroid/graphics/PointF;
    .locals 7
    .param p1, "corner"    # Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    .param p2, "cornerOffsetScaleFactor"    # F

    .prologue
    const/4 v5, 0x0

    .line 825
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/chillingo/liboffers/utils/DeviceUtils;->screenbounds(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object v2

    .line 827
    .local v2, "screenBounds":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 829
    .local v3, "targetPos":Landroid/graphics/PointF;
    sget-object v4, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl$2;->$SwitchMap$com$chillingo$liboffers$OfferSession$OffersCorner:[I

    invoke-virtual {p1}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 872
    :goto_0
    return-object v3

    .line 833
    :pswitch_0
    iget v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScale:F

    mul-float v1, v4, p2

    .line 835
    .local v1, "cornerOffsetValue":F
    new-instance v0, Landroid/graphics/PointF;

    neg-float v4, v1

    invoke-direct {v0, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 837
    .local v0, "cornerOffset":Landroid/graphics/PointF;
    new-instance v3, Landroid/graphics/PointF;

    .end local v3    # "targetPos":Landroid/graphics/PointF;
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 839
    .restart local v3    # "targetPos":Landroid/graphics/PointF;
    goto :goto_0

    .line 843
    .end local v0    # "cornerOffset":Landroid/graphics/PointF;
    .end local v1    # "cornerOffsetValue":F
    :pswitch_1
    iget v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScale:F

    mul-float v1, v4, p2

    .line 845
    .restart local v1    # "cornerOffsetValue":F
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 847
    .restart local v0    # "cornerOffset":Landroid/graphics/PointF;
    new-instance v3, Landroid/graphics/PointF;

    .end local v3    # "targetPos":Landroid/graphics/PointF;
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 849
    .restart local v3    # "targetPos":Landroid/graphics/PointF;
    goto :goto_0

    .line 853
    .end local v0    # "cornerOffset":Landroid/graphics/PointF;
    .end local v1    # "cornerOffsetValue":F
    :pswitch_2
    iget v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScale:F

    mul-float v1, v4, p2

    .line 855
    .restart local v1    # "cornerOffsetValue":F
    new-instance v0, Landroid/graphics/PointF;

    neg-float v4, v1

    invoke-direct {v0, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 857
    .restart local v0    # "cornerOffset":Landroid/graphics/PointF;
    new-instance v3, Landroid/graphics/PointF;

    .end local v3    # "targetPos":Landroid/graphics/PointF;
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 859
    .restart local v3    # "targetPos":Landroid/graphics/PointF;
    goto :goto_0

    .line 863
    .end local v0    # "cornerOffset":Landroid/graphics/PointF;
    .end local v1    # "cornerOffsetValue":F
    :pswitch_3
    iget v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScale:F

    mul-float v1, v4, p2

    .line 865
    .restart local v1    # "cornerOffsetValue":F
    new-instance v0, Landroid/graphics/PointF;

    neg-float v4, v1

    neg-float v5, v1

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 867
    .restart local v0    # "cornerOffset":Landroid/graphics/PointF;
    new-instance v3, Landroid/graphics/PointF;

    .end local v3    # "targetPos":Landroid/graphics/PointF;
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .restart local v3    # "targetPos":Landroid/graphics/PointF;
    goto :goto_0

    .line 829
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processEventQueue()V
    .locals 5

    .prologue
    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->eventQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    .local v1, "element":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 394
    const-string v2, "OffersBubbleNode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 401
    :try_start_1
    const-string v2, "shutdownSprites"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->shutdownSprites()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 424
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->eventQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "element":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v1    # "element":Ljava/lang/String;
    goto :goto_0

    .line 404
    :cond_0
    :try_start_3
    const-string v2, "removeFromScene"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->removeFromScene()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v2, "OffersBubbleNode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to process event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 427
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "element":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 428
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "OffersBubbleNode"

    const-string v3, "Failed to process event queue"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 431
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 408
    .restart local v1    # "element":Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string v2, "OffersBubbleNode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid event type specified: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method private removeFromScene()V
    .locals 1

    .prologue
    .line 897
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeNode(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 898
    return-void
.end method

.method private shutdownSprites()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 879
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->shutdown()V

    .line 881
    iput-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->shutdown()V

    .line 886
    iput-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->shutdown()V

    .line 891
    iput-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 893
    :cond_2
    return-void
.end method

.method private updateMatrices()V
    .locals 8

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 706
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 716
    .local v0, "modelMatrix":[F
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 717
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 719
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 722
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v2, v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->setMatrix([F)V

    .line 727
    :cond_0
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->rotation:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 729
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v2, :cond_1

    .line 730
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v2, v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->setMatrix([F)V

    .line 733
    :cond_1
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 735
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconOffset:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float v6, v2, v4

    .line 736
    .local v6, "iconPosX":F
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconOffset:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float v7, v2, v4

    .line 738
    .local v7, "iconPosY":F
    invoke-static {v0, v1, v6, v7, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 739
    iget v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScale:F

    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScale:F

    invoke-static {v0, v1, v2, v3, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 741
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v1, :cond_2

    .line 742
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v1, v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->setMatrix([F)V

    .line 743
    :cond_2
    return-void
.end method


# virtual methods
.method public activateOffer(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 939
    const-string v3, "ownerhashcode"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 941
    .local v1, "hashcode":I
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 946
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 947
    .local v0, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl$1;

    invoke-direct {v3, p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl$1;-><init>(Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->eventQueue:Ljava/util/Queue;

    const-string v4, "shutdownSprites"

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 967
    :cond_0
    return-void

    .line 954
    :catch_0
    move-exception v2

    .line 956
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "OffersBubbleNode"

    const-string v4, "Exception occured trying to queue up deferred activation"

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public allowCollisionChanges()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->allowCollisionChanges:Z

    return v0
.end method

.method public alphaMultiplier()F
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->alphaMultiplier:F

    return v0
.end method

.method public closeOffer(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 971
    const-string v1, "ownerhashcode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 973
    .local v0, "hashcode":I
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;->offerWasClosedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V

    .line 978
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->eventQueue:Ljava/util/Queue;

    const-string v2, "removeFromScene"

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 982
    :cond_0
    return-void
.end method

.method public collisionEnabled()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->collisionEnabled:Z

    return v0
.end method

.method public direction()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->direction:Landroid/graphics/PointF;

    return-object v0
.end method

.method public draw([F)V
    .locals 2
    .param p1, "projectionMatrix"    # [F

    .prologue
    .line 446
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 455
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->drawWithProjectionMatrix([F)V

    .line 468
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x301

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 471
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->drawWithProjectionMatrix([F)V

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->drawWithProjectionMatrix([F)V

    .line 477
    :cond_2
    return-void
.end method

.method public gestureRecognized(Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;)V
    .locals 1
    .param p1, "gestureRecognizer"    # Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->stateMachine:Lcom/chillingo/liboffers/gui/misc/StateMachine;

    invoke-virtual {v0, p1}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->gestureRecognized(Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;)V

    .line 696
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public hitTest(Landroid/graphics/PointF;)Z
    .locals 12
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/chillingo/liboffers/utils/DeviceUtils;->screenbounds(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object v5

    .line 486
    .local v5, "screenBounds":Landroid/graphics/RectF;
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 489
    .local v0, "boundsY":F
    new-instance v1, Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v11, v0, v11

    invoke-direct {v1, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 493
    .local v1, "currentPos":Landroid/graphics/PointF;
    iget v10, v1, Landroid/graphics/PointF;->x:F

    iget v11, p1, Landroid/graphics/PointF;->x:F

    sub-float v6, v10, v11

    .line 494
    .local v6, "xdiff":F
    iget v10, v1, Landroid/graphics/PointF;->y:F

    iget v11, p1, Landroid/graphics/PointF;->y:F

    sub-float v8, v10, v11

    .line 496
    .local v8, "ydiff":F
    mul-float v7, v6, v6

    .line 497
    .local v7, "xdiffSqr":F
    mul-float v9, v8, v8

    .line 499
    .local v9, "ydiffSqr":F
    add-float v2, v7, v9

    .line 501
    .local v2, "distSqr":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->radius()F

    move-result v3

    .line 502
    .local v3, "radius":F
    mul-float v4, v3, v3

    .line 507
    .local v4, "radiusSqr":F
    cmpg-float v10, v2, v4

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public hitTest(Landroid/graphics/PointF;F)Z
    .locals 10
    .param p1, "testPoint"    # Landroid/graphics/PointF;
    .param p2, "testRadius"    # F

    .prologue
    .line 513
    new-instance v0, Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 517
    .local v0, "currentPos":Landroid/graphics/PointF;
    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, p1, Landroid/graphics/PointF;->x:F

    sub-float v4, v8, v9

    .line 518
    .local v4, "xdiff":F
    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, p1, Landroid/graphics/PointF;->y:F

    sub-float v6, v8, v9

    .line 520
    .local v6, "ydiff":F
    mul-float v5, v4, v4

    .line 521
    .local v5, "xdiffSqr":F
    mul-float v7, v6, v6

    .line 523
    .local v7, "ydiffSqr":F
    add-float v1, v5, v7

    .line 525
    .local v1, "distSqr":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->radius()F

    move-result v2

    .line 526
    .local v2, "radius":F
    add-float v8, v2, p2

    add-float v9, v2, p2

    mul-float v3, v8, v9

    .line 531
    .local v3, "radiusSqr":F
    cmpg-float v8, v1, v3

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public iconScaleFactor()F
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScaleFactor:F

    return v0
.end method

.method public initialise(Ljava/util/HashMap;)V
    .locals 35
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
    .line 115
    .local p1, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v31, "OffersBubbleNode"

    const-string v32, "initialise"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 118
    const-string v31, "index"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->index:I

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconOffset:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconOffset:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 123
    const/high16 v31, 0x41f00000    # 30.0f

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->targetSpeed:F

    .line 125
    const/high16 v31, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->alphaMultiplier:F

    .line 127
    const-string v31, "telemetryHandler"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 128
    const-string v31, "telemetryHandler"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    .line 130
    :cond_0
    const-string v31, "guiSession"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 131
    new-instance v32, Ljava/lang/ref/WeakReference;

    const-string v31, "guiSession"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    .line 133
    :cond_1
    const-string v31, "speed"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 134
    const-string v31, "speed"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Float;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->targetSpeed:F

    .line 137
    :cond_2
    const/16 v22, 0x0

    .line 138
    .local v22, "rotZRate":F
    const-string v31, "rotationRateZ"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 139
    const-string v31, "rotationRateZ"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Float;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v22

    .line 141
    :cond_3
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->rotationRateZRadians:F

    .line 143
    const-string v31, "offerData"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/chillingo/liboffers/model/Offer;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/chillingo/liboffers/model/Offer;->getPurgableBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 147
    .local v14, "offerImage":Landroid/graphics/Bitmap;
    if-nez v14, :cond_4

    .line 148
    new-instance v31, Ljava/lang/IllegalStateException;

    const-string v32, "Failed to get purgeable bitmap from offer data"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 151
    :cond_4
    new-instance v31, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/chillingo/liboffers/model/Offer;->getId()Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 155
    const/4 v12, 0x0

    .line 157
    .local v12, "imageName":Ljava/lang/String;
    const-string v31, "image"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 158
    const-string v31, "image"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "imageName":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 161
    .restart local v12    # "imageName":Ljava/lang/String;
    :cond_5
    if-eqz v12, :cond_6

    .line 162
    new-instance v31, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "bubble"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2, v12}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 166
    :cond_6
    const/16 v18, 0x0

    .line 167
    .local v18, "reflectionsEnabled":Z
    const-string v31, "reflectionsEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 168
    const-string v31, "reflectionsEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 171
    :cond_7
    if-eqz v18, :cond_9

    .line 173
    const/16 v17, 0x0

    .line 175
    .local v17, "reflectionImageName":Ljava/lang/String;
    const-string v31, "reflection"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 176
    const-string v31, "reflection"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "reflectionImageName":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 178
    .restart local v17    # "reflectionImageName":Ljava/lang/String;
    :cond_8
    if-eqz v17, :cond_9

    .line 181
    new-instance v31, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "bubblereflection"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 188
    .end local v17    # "reflectionImageName":Ljava/lang/String;
    :cond_9
    const/high16 v23, 0x43000000    # 128.0f

    .line 189
    .local v23, "size":F
    const-string v31, "size"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 190
    const-string v31, "size"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Float;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v23

    .line 193
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/chillingo/liboffers/utils/DeviceUtils;->contentScaleFactor(Landroid/content/Context;)F

    move-result v31

    mul-float v23, v23, v31

    .line 196
    const/high16 v24, 0x3f800000    # 1.0f

    .line 198
    .local v24, "sizeScaleFactor":F
    const-string v31, "sizeScaleFactor"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 199
    const-string v31, "sizeScaleFactor"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Float;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v24

    .line 201
    :cond_b
    mul-float v23, v23, v24

    .line 205
    const/high16 v31, 0x42960000    # 75.0f

    move/from16 v0, v23

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 208
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->diameter:F

    .line 211
    sget-object v7, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_BOTTOM_RIGHT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 213
    .local v7, "corner":Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    const-string v31, "corner"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 214
    const-string v31, "corner"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "corner":Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    check-cast v7, Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 216
    .restart local v7    # "corner":Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->determineInitialPositionFromCorner(Lcom/chillingo/liboffers/OfferSession$OffersCorner;)Landroid/graphics/PointF;

    move-result-object v25

    .line 218
    .local v25, "startingPosition":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->setPosition(Landroid/graphics/PointF;)V

    .line 220
    const/high16 v4, 0x42340000    # 45.0f

    .line 221
    .local v4, "angle":F
    const-string v31, "releaseAngle"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 222
    const-string v31, "releaseAngle"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Float;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 224
    :cond_d
    float-to-double v0, v4

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v5, v0

    .line 226
    .local v5, "angleRadians":F
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->determineInitialDirectionsFromCorner(Lcom/chillingo/liboffers/OfferSession$OffersCorner;F)Landroid/graphics/PointF;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->direction:Landroid/graphics/PointF;

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->targetSpeed:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->speed:F

    .line 230
    new-instance v31, Landroid/graphics/PointF;

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v31 .. v33}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->rotation:Landroid/graphics/PointF;

    .line 231
    new-instance v31, Landroid/graphics/PointF;

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->radius()F

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->radius()F

    move-result v33

    invoke-direct/range {v31 .. v33}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    .line 233
    const v31, 0x3f266666    # 0.65f

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScaleFactor:F

    .line 234
    const-string v31, "iconScale"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 235
    const-string v31, "iconScale"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Float;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScaleFactor:F

    .line 238
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScaleFactor:F

    move/from16 v31, v0

    const/high16 v32, 0x3f000000    # 0.5f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(FF)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScaleFactor:F

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->radius()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScaleFactor:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScale:F

    .line 242
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->collisionEnabled:Z

    .line 243
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->allowCollisionChanges:Z

    .line 245
    const/16 v27, 0x0

    .line 247
    .local v27, "tapToRelease":Z
    const-string v31, "tapToRelease"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 248
    const-string v31, "tapToRelease"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    .line 251
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->updateMatrices()V

    .line 254
    new-instance v29, Lcom/chillingo/liboffers/gui/misc/StateMachine;

    invoke-direct/range {v29 .. v29}, Lcom/chillingo/liboffers/gui/misc/StateMachine;-><init>()V

    .line 256
    .local v29, "theStateMachine":Lcom/chillingo/liboffers/gui/misc/StateMachine;
    const-string v16, "releasewithvelocity"

    .line 257
    .local v16, "postIntroDelayState":Ljava/lang/String;
    const-string v20, "auto"

    .line 262
    .local v20, "releaseType":Ljava/lang/String;
    if-eqz v27, :cond_11

    .line 264
    new-instance v30, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 266
    .local v30, "transToCornerState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;
    const/high16 v8, 0x3f800000    # 1.0f

    .line 268
    .local v8, "cornerOffsetScaleFactor":F
    const-string v31, "cornerOffsetScaleFactor"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 269
    const-string v31, "cornerOffsetScaleFactor"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Float;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 271
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->determineTransitionToCornerTargetPosFrom(Lcom/chillingo/liboffers/OfferSession$OffersCorner;F)Landroid/graphics/PointF;

    move-result-object v28

    .line 272
    .local v28, "targetPos":Landroid/graphics/PointF;
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->setTargetPos(Landroid/graphics/PointF;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/chillingo/liboffers/model/Offer;->getId()Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->setOfferId(Ljava/lang/String;)V

    .line 275
    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->setInvertedYAxis(Z)V

    .line 276
    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->setInvertedXAxis(Z)V

    .line 278
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->parseProperties(Ljava/util/HashMap;)V

    .line 280
    new-instance v9, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 281
    .local v9, "cornerState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->setInvertedYAxis(Z)V

    .line 282
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->setInvertedXAxis(Z)V

    .line 286
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->parseProperties(Ljava/util/HashMap;)V

    .line 288
    const-string v31, "transtocorner"

    invoke-virtual/range {v29 .. v31}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V

    .line 289
    const-string v31, "corner"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v9, v1}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V

    .line 291
    const-string v16, "transtocorner"

    .line 292
    const-string v20, "cornerTap"

    .line 295
    .end local v8    # "cornerOffsetScaleFactor":F
    .end local v9    # "cornerState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;
    .end local v28    # "targetPos":Landroid/graphics/PointF;
    .end local v30    # "transToCornerState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;
    :cond_11
    new-instance v13, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateIntroDelay;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateIntroDelay;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 296
    .local v13, "introDelayState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateIntroDelay;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateIntroDelay;->parseProperties(Ljava/util/HashMap;)V

    .line 297
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateIntroDelay;->setNextState(Ljava/lang/String;)V

    .line 298
    const-string v31, "introdelay"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V

    .line 300
    new-instance v19, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateRelease;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateRelease;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 302
    .local v19, "releaseState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateRelease;
    new-instance v21, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateReleaseWithVelocity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateReleaseWithVelocity;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;Ljava/lang/String;)V

    .line 303
    .local v21, "releaseWithVelocityState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateReleaseWithVelocity;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateReleaseWithVelocity;->parseProperties(Ljava/util/HashMap;)V

    .line 306
    new-instance v11, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 307
    .local v11, "floatingState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->setOriginalScale(Landroid/graphics/PointF;)V

    .line 308
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->setInvertedYAxis(Z)V

    .line 309
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->setInvertedXAxis(Z)V

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->parseProperties(Ljava/util/HashMap;)V

    .line 315
    new-instance v15, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 316
    .local v15, "popState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->setOffer(Lcom/chillingo/liboffers/model/Offer;)V

    .line 317
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->parseProperties(Ljava/util/HashMap;)V

    .line 319
    new-instance v26, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 320
    .local v26, "swipeRightState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;->parseProperties(Ljava/util/HashMap;)V

    .line 322
    new-instance v10, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFadeOff;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFadeOff;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 323
    .local v10, "fadeOffState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFadeOff;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFadeOff;->parseProperties(Ljava/util/HashMap;)V

    .line 325
    new-instance v6, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateClose;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateClose;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 327
    .local v6, "closeState":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateClose;
    const-string v31, "releasewithvelocity"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V

    .line 328
    const-string v31, "release"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V

    .line 329
    const-string v31, "floating"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v11, v1}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V

    .line 330
    const-string v31, "pop"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v15, v1}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V

    .line 331
    const-string v31, "swipeoffright"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V

    .line 332
    const-string v31, "fadeoff"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V

    .line 333
    const-string v31, "close"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V

    .line 336
    const-string v31, "introdelay"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->setState(Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->stateMachine:Lcom/chillingo/liboffers/gui/misc/StateMachine;

    .line 343
    return-void
.end method

.method public offerReleased(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 998
    const-string v2, "ownerhashcode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1000
    .local v1, "hashcode":I
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    iget v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;->offerWasReleasedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V

    .line 1004
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    .line 1006
    .local v0, "guiSession":Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
    if-eqz v0, :cond_0

    .line 1007
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->offerWasReleasedWithIndex(Lcom/chillingo/liboffers/model/Offer;Ljava/lang/Integer;)V

    .line 1009
    .end local v0    # "guiSession":Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
    :cond_0
    return-void
.end method

.method public position()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    return-object v0
.end method

.method public processMessage(Ljava/util/HashMap;)V
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
    .line 364
    .local p1, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public radius()F
    .locals 2

    .prologue
    .line 567
    iget v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->diameter:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public recreateAssets()V
    .locals 3

    .prologue
    .line 654
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->recreate()V

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->recreate()V

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v1, :cond_2

    .line 661
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->offer:Lcom/chillingo/liboffers/model/Offer;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/Offer;->getPurgableBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 662
    .local v0, "offerImage":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->recreate(Landroid/graphics/Bitmap;Z)V

    .line 664
    .end local v0    # "offerImage":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method public removeNode(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 985
    const-string v1, "ownerhashcode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 987
    .local v0, "hashcode":I
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->eventQueue:Ljava/util/Queue;

    const-string v2, "removeFromScene"

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_0
    return-void
.end method

.method public rotation()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->rotation:Landroid/graphics/PointF;

    return-object v0
.end method

.method public scale()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    return-object v0
.end method

.method public setAllowCollisionChanges(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 582
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->allowCollisionChanges:Z

    .line 583
    return-void
.end method

.method public setAlphaMultiplier(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 592
    iput p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->alphaMultiplier:F

    .line 595
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->updateAlpha(F)V

    .line 596
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->updateAlpha(F)V

    .line 597
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->bubbleSpriteReflection:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->updateAlpha(F)V

    .line 599
    return-void
.end method

.method public setCollisionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->collisionEnabled:Z

    .line 573
    return-void
.end method

.method public setDirection(Landroid/graphics/PointF;)V
    .locals 7
    .param p1, "direction"    # Landroid/graphics/PointF;

    .prologue
    .line 629
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/PointF;->y:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 631
    .local v1, "lengthSqr":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 633
    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 635
    .local v0, "length":F
    iget v4, p1, Landroid/graphics/PointF;->x:F

    div-float v2, v4, v0

    .line 636
    .local v2, "normalisedDirectionX":F
    iget v4, p1, Landroid/graphics/PointF;->y:F

    div-float v3, v4, v0

    .line 638
    .local v3, "normalisedDirectionY":F
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->direction:Landroid/graphics/PointF;

    .line 640
    .end local v0    # "length":F
    .end local v2    # "normalisedDirectionX":F
    .end local v3    # "normalisedDirectionY":F
    :cond_0
    return-void
.end method

.method public setIconOffset(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "offset"    # Landroid/graphics/PointF;

    .prologue
    .line 929
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconOffset:Landroid/graphics/PointF;

    .line 930
    return-void
.end method

.method public setIconScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 919
    iput p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->iconScale:F

    .line 920
    return-void
.end method

.method public setPosition(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/PointF;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    .line 609
    return-void
.end method

.method public setRotation(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "rotation"    # Landroid/graphics/PointF;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->rotation:Landroid/graphics/PointF;

    .line 558
    return-void
.end method

.method public setScale(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "scale"    # Landroid/graphics/PointF;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    .line 548
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 618
    iput p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->speed:F

    .line 619
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "OffersBubbleNode"

    const-string v1, "Shutdown"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->stateMachine:Lcom/chillingo/liboffers/gui/misc/StateMachine;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->shutdown()V

    .line 351
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->shutdownSprites()V

    .line 354
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->receiver:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->shutdown()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->receiver:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;

    .line 356
    return-void
.end method

.method public speed()F
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->speed:F

    return v0
.end method

.method public targetSpeed()F
    .locals 1

    .prologue
    .line 934
    iget v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->targetSpeed:F

    return v0
.end method

.method public touchesBegan(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->stateMachine:Lcom/chillingo/liboffers/gui/misc/StateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->touchesBegan(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 670
    return-void
.end method

.method public touchesCancelled(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->stateMachine:Lcom/chillingo/liboffers/gui/misc/StateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->touchesCancelled(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 684
    return-void
.end method

.method public touchesEnded(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->stateMachine:Lcom/chillingo/liboffers/gui/misc/StateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->touchesEnded(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 690
    return-void
.end method

.method public touchesMoved(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->stateMachine:Lcom/chillingo/liboffers/gui/misc/StateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->touchesMoved(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 677
    return-void
.end method

.method public update(DD)V
    .locals 5
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->processEventQueue()V

    .line 375
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->stateMachine:Lcom/chillingo/liboffers/gui/misc/StateMachine;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->updateState(DD)V

    .line 377
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->updateMatrices()V

    .line 380
    iget v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->speed:F

    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->targetSpeed:F

    div-float v1, v2, v3

    .line 381
    .local v1, "speedScale":F
    iget v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->rotationRateZRadians:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-float v2, v2

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    .line 382
    .local v0, "rotationZPerSecond":F
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->rotation:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->rotation:Landroid/graphics/PointF;

    .line 384
    return-void
.end method

.method public velocity()Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 540
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->direction:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->speed:F

    mul-float v0, v2, v3

    .line 541
    .local v0, "velX":F
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->direction:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/opengl/BubbleNodeOpenGLImpl;->speed:F

    mul-float v1, v2, v3

    .line 542
    .local v1, "velY":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method
