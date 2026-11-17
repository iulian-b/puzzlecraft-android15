.class public Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;
.super Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;
.source "BubbleNodeStateCorner.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;
.implements Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
.implements Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner$1;
    }
.end annotation


# static fields
.field private static final OSCILLATION_RATE:F = 16.0f


# instance fields
.field private counter:F

.field private emitter:Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

.field private emitterClassName:Ljava/lang/String;

.field private emitterData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private emitterOffsetX:F

.field private emitterOffsetY:F

.field private iconScaleCounter:F

.field private invertedXAxis:Z

.field private invertedYAxis:Z

.field private lastTranslation:Landroid/graphics/PointF;

.field private lerp:F

.field private moved:Z

.field private nextState:Ljava/lang/String;

.field private originalScale:Landroid/graphics/PointF;

.field private playIconWobbleAudioEffect:Z

.field private pulseIconCount:I

.field private pulseIconEnabled:Z

.field private pulseIconTimer:F

.field private scaleCompensation:F

.field private timeToScaleIcon:F


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    .locals 3
    .param p1, "owner"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->scaleCompensation:F

    .line 76
    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->invertedYAxis:Z

    .line 77
    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->moved:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->pulseIconEnabled:Z

    .line 81
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->pulseIconTimer:F

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->pulseIconCount:I

    .line 84
    iput v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterOffsetX:F

    .line 85
    iput v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterOffsetY:F

    .line 86
    return-void
.end method

.method private createWobbleAudioEffect()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method private determineEmitterOffsetFromCorner(Lcom/chillingo/liboffers/OfferSession$OffersCorner;)V
    .locals 5
    .param p1, "corner"    # Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .prologue
    const v4, 0x3f4ccccd    # 0.8f

    .line 169
    const v0, 0x43a78000    # 335.0f

    .line 171
    .local v0, "angleDegrees":F
    sget-object v2, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner$1;->$SwitchMap$com$chillingo$liboffers$OfferSession$OffersCorner:[I

    invoke-virtual {p1}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 188
    :goto_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 190
    .local v1, "angleRadians":F
    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->radius()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterOffsetX:F

    .line 191
    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->radius()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterOffsetY:F

    .line 192
    return-void

    .line 173
    .end local v1    # "angleRadians":F
    :pswitch_0
    const/high16 v0, 0x41c80000    # 25.0f

    .line 174
    goto :goto_0

    .line 177
    :pswitch_1
    const/high16 v0, 0x42e60000    # 115.0f

    .line 178
    goto :goto_0

    .line 181
    :pswitch_2
    const/high16 v0, 0x434d0000    # 205.0f

    .line 182
    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private scaleIcon(DD)V
    .locals 9
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    const/high16 v8, 0x41800000    # 16.0f

    .line 461
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    .line 463
    .local v0, "bubbleNodeOwner":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v5

    invoke-interface {v5}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->radius()F

    move-result v5

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->iconScaleFactor()F

    move-result v6

    mul-float v2, v5, v6

    .line 465
    .local v2, "originalIconScale":F
    iget v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->iconScaleCounter:F

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 467
    .local v3, "radians":F
    mul-float v5, v3, v8

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v4, v5, v6

    .line 469
    .local v4, "scale":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v5

    invoke-interface {v5}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/chillingo/liboffers/utils/DeviceUtils;->contentScaleFactor(Landroid/content/Context;)F

    move-result v1

    .line 472
    .local v1, "density":F
    mul-float v5, v4, v1

    add-float/2addr v5, v2

    invoke-interface {v0, v5}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->setIconScale(F)V

    .line 474
    iget v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->iconScaleCounter:F

    float-to-double v6, v5

    add-double/2addr v6, p3

    double-to-float v5, v6

    iput v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->iconScaleCounter:F

    .line 476
    iget v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->iconScaleCounter:F

    const/high16 v6, 0x43340000    # 180.0f

    iget v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->pulseIconCount:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 478
    iget v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->pulseIconTimer:F

    iput v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->timeToScaleIcon:F

    .line 479
    const/4 v5, 0x0

    iput v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->iconScaleCounter:F

    .line 481
    invoke-interface {v0, v2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->setIconScale(F)V

    .line 483
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->playIconWobbleAudioEffect:Z

    .line 485
    :cond_0
    return-void
.end method

.method private updateDirectionAndSpeedFromTouchEvent(Landroid/graphics/PointF;)V
    .locals 6
    .param p1, "delta"    # Landroid/graphics/PointF;

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setDirection(Landroid/graphics/PointF;)V

    .line 423
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 424
    .local v1, "lengthSqr":F
    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 428
    .local v0, "length":F
    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v2, v3, v0

    .line 429
    .local v2, "nodeSpeed":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-interface {v3, v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setSpeed(F)V

    .line 433
    return-void
.end method

.method private updatePositionFromTouchEvent(Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "delta"    # Landroid/graphics/PointF;

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    add-float v0, v2, v3

    .line 409
    .local v0, "xpos":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float v1, v2, v3

    .line 412
    .local v1, "ypos":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setPosition(Landroid/graphics/PointF;)V

    .line 413
    return-void
.end method


# virtual methods
.method public OnNodeAdded(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    .locals 0
    .param p1, "node"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitter:Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 527
    return-void
.end method

.method createEmitter()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 337
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 338
    .local v6, "emitterPos":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterOffsetX:F

    add-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 340
    iget-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->invertedYAxis:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterOffsetY:F

    sub-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/PointF;->y:F

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    const-string v1, "position"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    const-string v1, "rotation"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->rotation()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    const-string v1, "scale"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->scale()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterClassName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    invoke-interface {v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;Landroid/content/Context;Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;)V

    .line 350
    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterOffsetY:F

    add-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public enter()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->nextState:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->scale()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->originalScale:Landroid/graphics/PointF;

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->counter:F

    .line 324
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->lerp:F

    .line 325
    iget v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->pulseIconTimer:F

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->timeToScaleIcon:F

    .line 327
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->createEmitter()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->playIconWobbleAudioEffect:Z

    .line 330
    return-void
.end method

.method public exit()V
    .locals 5

    .prologue
    .line 492
    new-instance v1, Landroid/content/Intent;

    const-string v3, "shownextoffer"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 496
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    .line 497
    .local v0, "bubbleNodeOwner":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->radius()F

    move-result v3

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->iconScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-interface {v0, v3}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->setIconScale(F)V

    .line 500
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitter:Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    if-eqz v3, :cond_0

    .line 502
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 503
    .local v2, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "duration"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitter:Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    invoke-interface {v3, v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->processMessage(Ljava/util/HashMap;)V

    .line 505
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitter:Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 507
    .end local v2    # "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public gestureRecognized(Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;)V
    .locals 3
    .param p1, "gestureRecognizer"    # Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;

    .prologue
    .line 264
    instance-of v2, p1, Lcom/chillingo/liboffers/gui/interaction/gestures/TapGestureRecognizer;

    if-eqz v2, :cond_1

    .line 269
    const-string v2, "releasewithvelocity"

    iput-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->nextState:Ljava/lang/String;

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    instance-of v2, p1, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;

    if-eqz v2, :cond_0

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->moved:Z

    move-object v0, p1

    .line 275
    check-cast v0, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;

    .line 277
    .local v0, "panGesture":Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;
    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;->getDelta()Landroid/graphics/PointF;

    move-result-object v1

    .line 280
    .local v1, "translate":Landroid/graphics/PointF;
    iget-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->invertedYAxis:Z

    if-eqz v2, :cond_2

    .line 281
    iget v2, v1, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 283
    :cond_2
    iget-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->invertedXAxis:Z

    if-eqz v2, :cond_3

    .line 284
    iget v2, v1, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 289
    :cond_3
    iput-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->lastTranslation:Landroid/graphics/PointF;

    .line 293
    invoke-direct {p0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->updatePositionFromTouchEvent(Landroid/graphics/PointF;)V

    goto :goto_0
.end method

.method public parseProperties(Ljava/util/HashMap;)V
    .locals 11
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
    .local p1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v10, 0x2

    .line 92
    const-string v7, "cornerPulseIconEnabled"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 93
    const-string v7, "cornerPulseIconEnabled"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->pulseIconEnabled:Z

    .line 95
    :cond_0
    const-string v7, "cornerPulseIconTimer"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    const-string v7, "cornerPulseIconTimer"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->pulseIconTimer:F

    .line 99
    :cond_1
    const-string v7, "cornerPulseIconCount"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 100
    const-string v7, "cornerPulseIconCount"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->pulseIconCount:I

    .line 102
    :cond_2
    const-string v7, "emitterClassName"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterClassName:Ljava/lang/String;

    .line 104
    iget-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterClassName:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterClassName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 105
    :cond_3
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unable to obtain emitter class"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 108
    :cond_4
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    .line 111
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    .local v4, "objectProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "cornerHighlightImage"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    .local v3, "imageName":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 116
    const-string v7, "image"

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_5
    const-string v7, "identifier"

    const-string v8, "cornerHighlight"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v7, "duration"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v7

    invoke-interface {v7}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/chillingo/liboffers/utils/DeviceUtils;->contentScaleFactor(Landroid/content/Context;)F

    move-result v2

    .line 124
    .local v2, "density":F
    const-string v7, "scaleX"

    mul-float v8, v9, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v7, "scaleY"

    mul-float v8, v9, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v7, "targetAlphaMult"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v7, "scaleFactor"

    const v8, 0x3f8147ae    # 1.01f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-wide v8, 0x4056800000000000L    # 90.0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 130
    .local v6, "rotateZRadians":F
    const-string v7, "rotateZ"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 134
    .local v0, "audioProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "name"

    const-string v8, "bubble_highlight"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v7, "extension"

    const-string v8, "wav"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v7, "audio"

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v7, "parentview"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 141
    const-string v7, "parentview"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 142
    .local v5, "parentView":Landroid/view/ViewGroup;
    const-string v7, "parentview"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v5    # "parentView":Landroid/view/ViewGroup;
    :cond_6
    iget-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    const-string v8, "objectProperties"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_BOTTOM_RIGHT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 150
    .local v1, "corner":Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    const-string v7, "corner"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 151
    const-string v7, "corner"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "corner":Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    check-cast v1, Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 152
    .restart local v1    # "corner":Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    :cond_7
    invoke-direct {p0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->determineEmitterOffsetFromCorner(Lcom/chillingo/liboffers/OfferSession$OffersCorner;)V

    .line 156
    iget-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    const-string v8, "duration"

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    const-string v8, "numberOfObjectsToEmitPerSecond"

    const v9, 0x3e4ccccd    # 0.2f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    const-string v8, "maximumNumberOfObjectsActive"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    const-string v8, "maximumNumberOfObjectsToEmit"

    const/16 v9, 0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    const-string v8, "diameter"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v9

    invoke-interface {v9}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->radius()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->emitterData:Ljava/util/HashMap;

    const-string v8, "type"

    sget-object v9, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_POINT:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public setInvertedXAxis(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->invertedXAxis:Z

    .line 521
    return-void
.end method

.method public setInvertedYAxis(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->invertedYAxis:Z

    .line 517
    return-void
.end method

.method public touchesBegan(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 200
    return-void
.end method

.method public touchesCancelled(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 210
    return-void
.end method

.method public touchesEnded(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 215
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->moved:Z

    if-eqz v5, :cond_2

    .line 217
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 218
    .local v3, "location":Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 221
    .local v4, "prevLocation":Landroid/graphics/PointF;
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v4, Landroid/graphics/PointF;->x:F

    sub-float v1, v5, v6

    .line 222
    .local v1, "deltaX":F
    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v4, Landroid/graphics/PointF;->y:F

    sub-float v2, v5, v6

    .line 225
    .local v2, "deltaY":F
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->invertedYAxis:Z

    if-eqz v5, :cond_0

    .line 226
    neg-float v2, v2

    .line 227
    :cond_0
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->invertedXAxis:Z

    if-eqz v5, :cond_1

    .line 228
    neg-float v1, v1

    .line 234
    :cond_1
    iget-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->lastTranslation:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v5

    .line 235
    iget-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->lastTranslation:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v5

    .line 237
    mul-float/2addr v1, v7

    .line 238
    mul-float/2addr v2, v7

    .line 242
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 244
    .local v0, "delta":Landroid/graphics/PointF;
    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->updatePositionFromTouchEvent(Landroid/graphics/PointF;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->updateDirectionAndSpeedFromTouchEvent(Landroid/graphics/PointF;)V

    .line 249
    const-string v5, "release"

    iput-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->nextState:Ljava/lang/String;

    .line 258
    .end local v0    # "delta":Landroid/graphics/PointF;
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "location":Landroid/graphics/PointF;
    .end local v4    # "prevLocation":Landroid/graphics/PointF;
    :goto_0
    return-void

    .line 256
    :cond_2
    const-string v5, "releasewithvelocity"

    iput-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->nextState:Ljava/lang/String;

    goto :goto_0
.end method

.method public touchesMoved(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 205
    return-void
.end method

.method public update(DD)Ljava/lang/String;
    .locals 9
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 363
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->counter:F

    const v7, 0x3ccccccd    # 0.025f

    mul-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float v3, v6, v7

    .line 364
    .local v3, "scaleX":F
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->counter:F

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v4, v6, v7

    .line 367
    .local v4, "scaleY":F
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->counter:F

    float-to-double v6, v6

    add-double/2addr v6, p3

    double-to-float v6, v6

    iput v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->counter:F

    .line 369
    new-instance v5, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->originalScale:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->scaleCompensation:F

    div-float v7, v3, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->originalScale:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->scaleCompensation:F

    div-float v8, v4, v8

    add-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 371
    .local v5, "targetScale":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v6

    invoke-interface {v6}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->scale()Landroid/graphics/PointF;

    move-result-object v0

    .line 374
    .local v0, "currentOwnerScale":Landroid/graphics/PointF;
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->lerp:F

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 375
    .local v1, "finalScaleX":F
    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, v5, Landroid/graphics/PointF;->y:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->lerp:F

    mul-float/2addr v7, v8

    add-float v2, v6, v7

    .line 378
    .local v2, "finalScaleY":F
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->lerp:F

    const v7, 0x3f666666    # 0.9f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 379
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->lerp:F

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->lerp:F

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v6

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v6, v7}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setScale(Landroid/graphics/PointF;)V

    .line 383
    iget-boolean v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->pulseIconEnabled:Z

    if-eqz v6, :cond_2

    .line 385
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->timeToScaleIcon:F

    float-to-double v6, v6

    sub-double/2addr v6, p1

    double-to-float v6, v6

    iput v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->timeToScaleIcon:F

    .line 387
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->timeToScaleIcon:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 389
    iget-boolean v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->playIconWobbleAudioEffect:Z

    if-eqz v6, :cond_1

    .line 391
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->createWobbleAudioEffect()V

    .line 392
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->playIconWobbleAudioEffect:Z

    .line 394
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->scaleIcon(DD)V

    .line 400
    :cond_2
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateCorner;->nextState:Ljava/lang/String;

    return-object v6
.end method
