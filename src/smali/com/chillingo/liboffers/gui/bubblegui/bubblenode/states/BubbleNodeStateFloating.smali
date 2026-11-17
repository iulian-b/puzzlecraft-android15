.class public Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;
.super Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;
.source "BubbleNodeStateFloating.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
.implements Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;,
        Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;
    }
.end annotation


# static fields
.field private static final BUBBLE_EXPAND_DURATION:F = 0.75f

.field private static final BUBBLE_EXPAND_SCALE:F = 30.0f

.field private static final BUBBLE_IGNOREANGLECHANGEANDCOLLISIONS_DURATION:F = 1.5f

.field private static final ICON_SPRING_DEFAULT_TIME:F = 1.5f

.field private static final LOG_TAG:Ljava/lang/String; = "Bubble-FloatingState"

.field private static final TIMEDIFF_PERCENTSCALE_COLLISION_THRESHOLD:F = 0.5f


# instance fields
.field private angleChangeEnabled:Z

.field private angleChangeInitialData:[F

.field private angleChangeTime:F

.field private angleOffsetRadiansPerSecond:F

.field private canPop:Z

.field private collisionVector:Landroid/graphics/PointF;

.field private counter:D

.field private currentIconSpringDuration:F

.field private doOnEdgeCollision:Z

.field private expandCurrentDuration:F

.field private expandDuration:F

.field private forceRecalculateAngleChange:Z

.field private held:Z

.field private ignoreAngleChangeAndCollisionsTime:F

.field private initialIconSpringDuration:F

.field private invertedXAxis:Z

.field private invertedYAxis:Z

.field private lastSceneNodeCollidedWith:Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

.field private lastTranslation:Landroid/graphics/PointF;

.field private lerp:F

.field private moved:Z

.field private nextState:Ljava/lang/String;

.field private originalScale:Landroid/graphics/PointF;

.field private oscillationCollisionData:[F

.field private oscillationCollisionScale:F

.field private oscillationCollisionScaleDuration:F

.field private oscillationCollisionScaleTime:F

.field private oscillationDataX:[F

.field private oscillationDataY:[F

.field private popMethod:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

.field private randomNumberGenerator:Ljava/util/Random;

.field private recalculateAngleChangeDuration:F

.field private recalculateAngleChangeInitialDuration:F

.field private receiver:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;

.field private scaleCompensation:F

.field private speedDampen:F


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    .locals 5
    .param p1, "owner"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 164
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataX:[F

    .line 165
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataY:[F

    .line 166
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionData:[F

    .line 167
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeInitialData:[F

    .line 169
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->randomNumberGenerator:Ljava/util/Random;

    .line 173
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->scaleCompensation:F

    .line 174
    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->invertedYAxis:Z

    .line 175
    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->invertedXAxis:Z

    .line 177
    sget-object v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;->TAP:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->popMethod:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    .line 179
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataX:[F

    const/high16 v1, 0x40100000    # 2.25f

    aput v1, v0, v2

    .line 180
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataX:[F

    const/high16 v1, 0x41240000    # 10.25f

    aput v1, v0, v3

    .line 182
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataY:[F

    const/high16 v1, 0x40980000    # 4.75f

    aput v1, v0, v2

    .line 183
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataY:[F

    const/high16 v1, 0x410c0000    # 8.75f

    aput v1, v0, v3

    .line 185
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionData:[F

    const/high16 v1, 0x42480000    # 50.0f

    aput v1, v0, v2

    .line 186
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionData:[F

    const/high16 v1, 0x40a00000    # 5.0f

    aput v1, v0, v3

    .line 188
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->ignoreAngleChangeAndCollisionsTime:F

    .line 190
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeInitialData:[F

    const/high16 v1, 0x420c0000    # 35.0f

    aput v1, v0, v2

    .line 191
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeInitialData:[F

    const/high16 v1, 0x41700000    # 15.0f

    aput v1, v0, v3

    .line 192
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeInitialData:[F

    const/4 v1, 0x0

    aput v1, v0, v4

    .line 194
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->speedDampen:F

    .line 196
    iput-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeEnabled:Z

    .line 197
    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->forceRecalculateAngleChange:Z

    .line 198
    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->doOnEdgeCollision:Z

    .line 199
    iput-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->canPop:Z

    .line 201
    return-void
.end method

.method private calculateFinalDirectionAfterAngleChange(Landroid/graphics/PointF;D)Landroid/graphics/PointF;
    .locals 12
    .param p1, "direction"    # Landroid/graphics/PointF;
    .param p2, "timestep"    # D

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 796
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeInitialData:[F

    aget v1, v6, v11

    .line 797
    .local v1, "floatingAngleChangeDegrees":F
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScale:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_0

    .line 799
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScale:F

    const v7, 0x3f19999a    # 0.6f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 800
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeInitialData:[F

    const/4 v7, 0x2

    aget v1, v6, v7

    .line 809
    :cond_0
    :goto_0
    iget v6, p1, Landroid/graphics/PointF;->x:F

    float-to-double v6, v6

    iget v8, p1, Landroid/graphics/PointF;->y:F

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 810
    .local v0, "currentAngle":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v6

    invoke-interface {v6}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->speed()F

    move-result v7

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v6

    check-cast v6, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    invoke-interface {v6}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->targetSpeed()F

    move-result v6

    div-float v2, v7, v6

    .line 812
    .local v2, "speedScale":F
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeTime:F

    float-to-double v6, v6

    add-double/2addr v6, p2

    double-to-float v6, v6

    iput v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeTime:F

    .line 815
    iget-boolean v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->forceRecalculateAngleChange:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeTime:F

    iget v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->recalculateAngleChangeDuration:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 817
    :cond_1
    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    mul-double/2addr v6, p2

    double-to-float v6, v6

    iput v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleOffsetRadiansPerSecond:F

    .line 820
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    rem-int/lit8 v6, v6, 0x64

    const/16 v7, 0x32

    if-le v6, v7, :cond_2

    .line 821
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleOffsetRadiansPerSecond:F

    neg-float v6, v6

    iput v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleOffsetRadiansPerSecond:F

    .line 824
    :cond_2
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->recalculateAngleChangeInitialDuration:F

    div-float/2addr v6, v2

    iput v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->recalculateAngleChangeDuration:F

    .line 829
    iput v10, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeTime:F

    .line 831
    iput-boolean v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->forceRecalculateAngleChange:Z

    .line 836
    :cond_3
    iget v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleOffsetRadiansPerSecond:F

    mul-float/2addr v6, v2

    add-float v3, v0, v6

    .line 837
    .local v3, "targetAngle":F
    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    .line 838
    .local v4, "targetDirectionX":F
    invoke-static {v3}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    .line 849
    .local v5, "targetDirectionY":F
    new-instance p1, Landroid/graphics/PointF;

    .end local p1    # "direction":Landroid/graphics/PointF;
    invoke-direct {p1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 851
    .restart local p1    # "direction":Landroid/graphics/PointF;
    return-object p1

    .line 802
    .end local v0    # "currentAngle":F
    .end local v2    # "speedScale":F
    .end local v3    # "targetAngle":F
    .end local v4    # "targetDirectionX":F
    .end local v5    # "targetDirectionY":F
    :cond_4
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeInitialData:[F

    const/4 v7, 0x1

    aget v1, v6, v7

    goto :goto_0
.end method

.method private createCollisionAudioEffect()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method private createReleaseAudioEffect()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method private onEdgeCollision()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 858
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScale:F

    .line 859
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleDuration:F

    .line 860
    iget v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleDuration:F

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleTime:F

    .line 861
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->counter:D

    .line 862
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    .line 863
    return-void
.end method

.method private onNodeCollision(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)Landroid/graphics/PointF;
    .locals 17
    .param p1, "collidedNode"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v14

    invoke-interface {v14}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    invoke-interface/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float v2, v14, v15

    .line 873
    .local v2, "dX":F
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v14

    invoke-interface {v14}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-interface/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float v3, v14, v15

    .line 875
    .local v3, "dY":F
    mul-float v14, v2, v2

    mul-float v15, v3, v3

    add-float v9, v14, v15

    .line 876
    .local v9, "lengthSqr":F
    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    .line 878
    .local v8, "length":F
    div-float v11, v2, v8

    .line 879
    .local v11, "normalisedDX":F
    div-float v12, v3, v8

    .line 885
    .local v12, "normalisedDY":F
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v14

    invoke-interface {v14}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->direction()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    invoke-interface {v15}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->direction()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float v15, v11, v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    add-float v5, v14, v15

    .line 886
    .local v5, "glanceX":F
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v14

    invoke-interface {v14}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->direction()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    invoke-interface {v15}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->direction()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float v15, v12, v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    add-float v6, v14, v15

    .line 888
    .local v6, "glanceY":F
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 890
    .local v4, "direction":Landroid/graphics/PointF;
    invoke-interface/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->direction()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    neg-float v15, v11

    invoke-interface/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->direction()Landroid/graphics/PointF;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    add-float v5, v14, v15

    .line 891
    invoke-interface/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->direction()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    neg-float v15, v12

    invoke-interface/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->direction()Landroid/graphics/PointF;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    add-float v6, v14, v15

    .line 893
    invoke-interface/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->allowCollisionChanges()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 894
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setDirection(Landroid/graphics/PointF;)V

    .line 897
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v14

    invoke-interface {v14}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->speed()F

    move-result v14

    invoke-interface/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->speed()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 898
    .local v13, "speedDiff":F
    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v7, v13, v14

    .line 902
    .local v7, "halfSpeedDiff":F
    invoke-interface/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->speed()F

    move-result v14

    add-float v10, v14, v7

    .line 904
    .local v10, "nodeSpeed":F
    invoke-interface/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->allowCollisionChanges()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 905
    const/high16 v14, 0x447a0000    # 1000.0f

    invoke-static {v10, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setSpeed(F)V

    .line 909
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v14

    invoke-interface {v14}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->speed()F

    move-result v14

    sub-float v10, v14, v7

    .line 912
    const/high16 v14, 0x447a0000    # 1000.0f

    cmpl-float v14, v10, v14

    if-lez v14, :cond_3

    .line 913
    const/high16 v10, 0x447a0000    # 1000.0f

    .line 917
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v14

    invoke-interface {v14, v10}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setSpeed(F)V

    .line 922
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScale:F

    .line 923
    const/high16 v14, 0x3f400000    # 0.75f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleDuration:F

    .line 924
    move-object/from16 v0, p0

    iget v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleDuration:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleTime:F

    .line 926
    const/high16 v14, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    .line 933
    const/high16 v14, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->initialIconSpringDuration:F

    .line 934
    move-object/from16 v0, p0

    iget v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->initialIconSpringDuration:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->currentIconSpringDuration:F

    .line 935
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->collisionVector:Landroid/graphics/PointF;

    .line 938
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lastSceneNodeCollidedWith:Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 941
    return-object v4

    .line 914
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v14

    check-cast v14, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    invoke-interface {v14}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->targetSpeed()F

    move-result v14

    cmpg-float v14, v10, v14

    if-gez v14, :cond_2

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v14

    check-cast v14, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    invoke-interface {v14}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->targetSpeed()F

    move-result v10

    goto :goto_0
.end method

.method private oscillateBubble(DD)V
    .locals 15
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 955
    iget v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleTime:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 959
    iget-object v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionData:[F

    const/4 v12, 0x0

    aget v5, v11, v12

    .line 960
    .local v5, "frequency":F
    iget-object v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionData:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    iget v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScale:F

    mul-float v0, v11, v12

    .line 962
    .local v0, "amplitude":F
    iget-wide v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->counter:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v1, v12

    .line 968
    .local v1, "angleRadians":F
    mul-float v11, v1, v5

    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    mul-float v7, v11, v0

    .line 969
    .local v7, "scaleX":F
    mul-float v11, v1, v5

    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    mul-float v8, v11, v0

    .line 973
    .local v8, "scaleY":F
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleTime:F

    iget v13, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleDuration:F

    div-float/2addr v12, v13

    sub-float v10, v11, v12

    .line 975
    .local v10, "timeDiffPercent":F
    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_0

    .line 977
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float v12, v10, v12

    sub-float v6, v11, v12

    .line 978
    .local v6, "scaleReduction":F
    iget v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScale:F

    mul-float/2addr v11, v6

    iput v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScale:F

    .line 981
    .end local v6    # "scaleReduction":F
    :cond_0
    iget v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleTime:F

    float-to-double v12, v11

    sub-double v12, v12, p1

    double-to-float v11, v12

    iput v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleTime:F

    .line 983
    iget v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleTime:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 986
    const/4 v11, 0x0

    iput v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScale:F

    .line 987
    const/4 v11, 0x0

    iput v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleDuration:F

    .line 988
    iget v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleDuration:F

    iput v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleTime:F

    .line 990
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->counter:D

    .line 991
    const v11, 0x3dcccccd    # 0.1f

    iput v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    .line 993
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lastSceneNodeCollidedWith:Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 1027
    .end local v0    # "amplitude":F
    .end local v1    # "angleRadians":F
    .end local v5    # "frequency":F
    .end local v10    # "timeDiffPercent":F
    :cond_1
    :goto_0
    iget-wide v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->counter:D

    add-double v12, v12, p3

    iput-wide v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->counter:D

    .line 1033
    new-instance v9, Landroid/graphics/PointF;

    iget-object v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->originalScale:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->scaleCompensation:F

    div-float v12, v7, v12

    add-float/2addr v11, v12

    iget-object v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->originalScale:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget v13, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->scaleCompensation:F

    div-float v13, v8, v13

    add-float/2addr v12, v13

    invoke-direct {v9, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1035
    .local v9, "targetScale":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v11

    invoke-interface {v11}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->scale()Landroid/graphics/PointF;

    move-result-object v2

    .line 1038
    .local v2, "currentOwnerScale":Landroid/graphics/PointF;
    iget v11, v2, Landroid/graphics/PointF;->x:F

    iget v12, v9, Landroid/graphics/PointF;->x:F

    iget v13, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    mul-float/2addr v12, v13

    add-float v3, v11, v12

    .line 1039
    .local v3, "finalScaleX":F
    iget v11, v2, Landroid/graphics/PointF;->y:F

    iget v12, v9, Landroid/graphics/PointF;->y:F

    iget v13, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    mul-float/2addr v12, v13

    add-float v4, v11, v12

    .line 1042
    .local v4, "finalScaleY":F
    iget v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    const v12, 0x3f666666    # 0.9f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_2

    .line 1043
    iget v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    const v12, 0x3f8ccccd    # 1.1f

    mul-float/2addr v11, v12

    iput v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    .line 1045
    :cond_2
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v11

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v11, v12}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setScale(Landroid/graphics/PointF;)V

    .line 1046
    return-void

    .line 996
    .end local v2    # "currentOwnerScale":Landroid/graphics/PointF;
    .end local v3    # "finalScaleX":F
    .end local v4    # "finalScaleY":F
    .end local v7    # "scaleX":F
    .end local v8    # "scaleY":F
    .end local v9    # "targetScale":Landroid/graphics/PointF;
    :cond_3
    iget v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandDuration:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 999
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandCurrentDuration:F

    iget v13, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandDuration:F

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    const/high16 v12, 0x41f00000    # 30.0f

    mul-float v7, v11, v12

    .line 1000
    .restart local v7    # "scaleX":F
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandCurrentDuration:F

    iget v13, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandDuration:F

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    const/high16 v12, 0x41f00000    # 30.0f

    mul-float v8, v11, v12

    .line 1004
    .restart local v8    # "scaleY":F
    iget v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandCurrentDuration:F

    float-to-double v12, v11

    sub-double v12, v12, p1

    double-to-float v11, v12

    iput v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandCurrentDuration:F

    .line 1006
    iget v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandCurrentDuration:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_1

    .line 1008
    const/4 v11, 0x0

    iput v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandCurrentDuration:F

    .line 1011
    const-string v11, "pop"

    iput-object v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->nextState:Ljava/lang/String;

    goto/16 :goto_0

    .line 1017
    .end local v7    # "scaleX":F
    .end local v8    # "scaleY":F
    :cond_4
    iget-wide v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->counter:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v1, v12

    .line 1022
    .restart local v1    # "angleRadians":F
    iget-object v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataX:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    mul-float/2addr v11, v1

    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget-object v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataX:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float v7, v11, v12

    .line 1023
    .restart local v7    # "scaleX":F
    iget-object v11, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataY:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    mul-float/2addr v11, v1

    invoke-static {v11}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget-object v12, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataY:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float v8, v11, v12

    .restart local v8    # "scaleY":F
    goto/16 :goto_0
.end method

.method private updateDirectionAndSpeedFromTouchEvent(Landroid/graphics/PointF;)V
    .locals 6
    .param p1, "delta"    # Landroid/graphics/PointF;

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setDirection(Landroid/graphics/PointF;)V

    .line 632
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 633
    .local v1, "lengthSqr":F
    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 637
    .local v0, "length":F
    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v2, v3, v0

    .line 638
    .local v2, "nodeSpeed":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-interface {v3, v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setSpeed(F)V

    .line 642
    return-void
.end method

.method private updateIconSpringEffect(D)V
    .locals 7
    .param p1, "timestep"    # D

    .prologue
    const/4 v6, 0x0

    .line 1051
    iget v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->currentIconSpringDuration:F

    float-to-double v4, v4

    sub-double/2addr v4, p1

    double-to-float v4, v4

    iput v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->currentIconSpringDuration:F

    .line 1053
    iget v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->currentIconSpringDuration:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v0, v4, v5

    .line 1056
    .local v0, "iconOffsetScale":F
    iget v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->currentIconSpringDuration:F

    iget v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->initialIconSpringDuration:F

    div-float v3, v4, v5

    .line 1059
    .local v3, "timeDampen":F
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->collisionVector:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v0

    mul-float v1, v4, v3

    .line 1060
    .local v1, "targetIconOffsetX":F
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->collisionVector:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v0

    mul-float v2, v4, v3

    .line 1062
    .local v2, "targetIconOffsetY":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    instance-of v4, v4, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    if-eqz v4, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v4, v5}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->setIconOffset(Landroid/graphics/PointF;)V

    .line 1065
    :cond_0
    iget v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->currentIconSpringDuration:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 1067
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    instance-of v4, v4, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    if-eqz v4, :cond_1

    .line 1068
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v4, v5}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->setIconOffset(Landroid/graphics/PointF;)V

    .line 1070
    :cond_1
    iput v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->currentIconSpringDuration:F

    .line 1072
    :cond_2
    return-void
.end method

.method private updatePositionFromTouchEvent(Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "delta"    # Landroid/graphics/PointF;

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    add-float v0, v2, v3

    .line 618
    .local v0, "xpos":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float v1, v2, v3

    .line 621
    .local v1, "ypos":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setPosition(Landroid/graphics/PointF;)V

    .line 622
    return-void
.end method


# virtual methods
.method public dismissOffer(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 325
    const-string v0, "fadeoff"

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->nextState:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 258
    const-string v0, "Bubble-FloatingState"

    const-string v1, "Enter"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->held:Z

    .line 262
    iput-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->moved:Z

    .line 263
    iput-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->nextState:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setAllowCollisionChanges(Z)V

    .line 267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->counter:D

    .line 268
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    .line 271
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScale:F

    .line 272
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleTime:F

    .line 273
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleDuration:F

    .line 275
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->initialIconSpringDuration:F

    .line 276
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->currentIconSpringDuration:F

    .line 278
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandDuration:F

    .line 279
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->expandCurrentDuration:F

    .line 281
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->collisionVector:Landroid/graphics/PointF;

    .line 283
    iput-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lastSceneNodeCollidedWith:Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 284
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeTime:F

    .line 285
    iput v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->recalculateAngleChangeDuration:F

    .line 287
    iput-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->forceRecalculateAngleChange:Z

    .line 288
    iput-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->doOnEdgeCollision:Z

    .line 290
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->ignoreAngleChangeAndCollisionsTime:F

    .line 292
    iput-boolean v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->canPop:Z

    .line 295
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->createReleaseAudioEffect()V

    .line 297
    new-instance v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;-><init>(Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->receiver:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;

    .line 298
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->setIconOffset(Landroid/graphics/PointF;)V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setAllowCollisionChanges(Z)V

    .line 314
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->receiver:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->receiver:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->shutdown()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->receiver:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;

    .line 319
    :cond_1
    return-void
.end method

.method public gestureRecognized(Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;)V
    .locals 6
    .param p1, "gestureRecognizer"    # Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;

    .prologue
    const/4 v5, 0x1

    .line 472
    instance-of v3, p1, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;

    if-eqz v3, :cond_3

    .line 474
    iput-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->moved:Z

    move-object v1, p1

    .line 476
    check-cast v1, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;

    .line 478
    .local v1, "panGesture":Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;
    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;->getDelta()Landroid/graphics/PointF;

    move-result-object v2

    .line 481
    .local v2, "translate":Landroid/graphics/PointF;
    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->invertedYAxis:Z

    if-eqz v3, :cond_0

    .line 482
    iget v3, v2, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 484
    :cond_0
    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->invertedXAxis:Z

    if-eqz v3, :cond_1

    .line 485
    iget v3, v2, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 489
    :cond_1
    iput-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lastTranslation:Landroid/graphics/PointF;

    .line 493
    invoke-direct {p0, v2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->updatePositionFromTouchEvent(Landroid/graphics/PointF;)V

    .line 501
    const v3, 0x3dcccccd    # 0.1f

    iput v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    .line 563
    .end local v1    # "panGesture":Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;
    .end local v2    # "translate":Landroid/graphics/PointF;
    :cond_2
    :goto_0
    return-void

    .line 538
    :cond_3
    instance-of v3, p1, Lcom/chillingo/liboffers/gui/interaction/gestures/TapGestureRecognizer;

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->popMethod:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    sget-object v4, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;->EXPAND:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    if-ne v3, v4, :cond_4

    .line 543
    iput-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->doOnEdgeCollision:Z

    goto :goto_0

    .line 545
    :cond_4
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->popMethod:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    sget-object v4, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;->TAP:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    if-ne v3, v4, :cond_2

    .line 547
    iget-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->canPop:Z

    if-eqz v3, :cond_5

    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v3, "offerActivationTransactionBegin"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "ownerhashcode"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 554
    const-string v3, "pop"

    iput-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->nextState:Ljava/lang/String;

    goto :goto_0

    .line 559
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    iput-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->doOnEdgeCollision:Z

    goto :goto_0
.end method

.method public offerActivationTransactionBegin(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 331
    const-string v1, "ownerhashcode"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 333
    .local v0, "hashcode":I
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 334
    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->canPop:Z

    .line 335
    :cond_0
    return-void
.end method

.method public offerActivationTransactionEnd(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->canPop:Z

    .line 341
    return-void
.end method

.method public parseProperties(Ljava/util/HashMap;)V
    .locals 5
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    const-string v1, "floatingPopMethod"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "setting":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    if-eqz v1, :cond_0

    .line 208
    check-cast v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    .end local v0    # "setting":Ljava/lang/Object;
    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->popMethod:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    .line 211
    :cond_0
    const-string v1, "floatingWobbleXFrequency"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    .restart local v0    # "setting":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataX:[F

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "setting":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v3

    .line 215
    :cond_1
    const-string v1, "floatingWobbleXAmplitude"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .restart local v0    # "setting":Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataX:[F

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "setting":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v4

    .line 219
    :cond_2
    const-string v1, "floatingWobbleYFrequency"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .restart local v0    # "setting":Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataY:[F

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "setting":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v3

    .line 223
    :cond_3
    const-string v1, "floatingWobbleYAmplitude"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .restart local v0    # "setting":Ljava/lang/Object;
    if-eqz v0, :cond_4

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationDataY:[F

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "setting":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v4

    .line 227
    :cond_4
    const-string v1, "collisionToNodeFrequency"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    .restart local v0    # "setting":Ljava/lang/Object;
    if-eqz v0, :cond_5

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionData:[F

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "setting":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v3

    .line 231
    :cond_5
    const-string v1, "collisionToNodeAmplitude"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    .restart local v0    # "setting":Ljava/lang/Object;
    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 233
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionData:[F

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "setting":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v4

    .line 236
    :cond_6
    const-string v1, "floatingAngleChangeEnabled"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .restart local v0    # "setting":Ljava/lang/Object;
    if-eqz v0, :cond_7

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 238
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "setting":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeEnabled:Z

    .line 240
    :cond_7
    const-string v1, "floatingAngleChange"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    .restart local v0    # "setting":Ljava/lang/Object;
    if-eqz v0, :cond_8

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 242
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeInitialData:[F

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "setting":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v3

    .line 244
    :cond_8
    const-string v1, "floatingAngleChangeTime"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    .restart local v0    # "setting":Ljava/lang/Object;
    if-eqz v0, :cond_9

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_9

    .line 246
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "setting":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->recalculateAngleChangeInitialDuration:F

    .line 248
    :cond_9
    const-string v1, "floatingSpeedDampen"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    .restart local v0    # "setting":Ljava/lang/Object;
    if-eqz v0, :cond_a

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_a

    .line 250
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "setting":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->speedDampen:F

    .line 252
    :cond_a
    return-void
.end method

.method public setInvertedXAxis(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 1086
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->invertedXAxis:Z

    .line 1087
    return-void
.end method

.method public setInvertedYAxis(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 1082
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->invertedYAxis:Z

    .line 1083
    return-void
.end method

.method public setOriginalScale(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "scale"    # Landroid/graphics/PointF;

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->originalScale:Landroid/graphics/PointF;

    .line 1079
    return-void
.end method

.method public touchesBegan(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->held:Z

    .line 386
    iput-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->moved:Z

    .line 388
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setCollisionEnabled(Z)V

    .line 390
    iput v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScale:F

    .line 391
    iput v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleTime:F

    .line 392
    iput v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillationCollisionScaleDuration:F

    .line 393
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    .line 395
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lastTranslation:Landroid/graphics/PointF;

    .line 396
    return-void
.end method

.method public touchesCancelled(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->held:Z

    .line 461
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setCollisionEnabled(Z)V

    .line 463
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    .line 464
    return-void
.end method

.method public touchesEnded(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    .line 409
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->moved:Z

    if-eqz v5, :cond_2

    .line 411
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 414
    .local v3, "location":Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 417
    .local v4, "prevLocation":Landroid/graphics/PointF;
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v4, Landroid/graphics/PointF;->x:F

    sub-float v1, v5, v6

    .line 418
    .local v1, "deltaX":F
    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v4, Landroid/graphics/PointF;->y:F

    sub-float v2, v5, v6

    .line 421
    .local v2, "deltaY":F
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->invertedYAxis:Z

    if-eqz v5, :cond_0

    .line 422
    neg-float v2, v2

    .line 424
    :cond_0
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->invertedXAxis:Z

    if-eqz v5, :cond_1

    .line 425
    neg-float v1, v1

    .line 431
    :cond_1
    iget-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lastTranslation:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v5

    .line 432
    iget-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lastTranslation:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v5

    .line 434
    mul-float/2addr v1, v7

    .line 435
    mul-float/2addr v2, v7

    .line 439
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 441
    .local v0, "delta":Landroid/graphics/PointF;
    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->updatePositionFromTouchEvent(Landroid/graphics/PointF;)V

    .line 443
    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->updateDirectionAndSpeedFromTouchEvent(Landroid/graphics/PointF;)V

    .line 445
    iput-boolean v8, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->forceRecalculateAngleChange:Z

    .line 449
    .end local v0    # "delta":Landroid/graphics/PointF;
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "location":Landroid/graphics/PointF;
    .end local v4    # "prevLocation":Landroid/graphics/PointF;
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->held:Z

    .line 450
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setCollisionEnabled(Z)V

    .line 452
    const v5, 0x3dcccccd    # 0.1f

    iput v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lerp:F

    .line 453
    return-void
.end method

.method public touchesMoved(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 402
    return-void
.end method

.method public update(DD)Ljava/lang/String;
    .locals 25
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 650
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->held:Z

    if-nez v15, :cond_6

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    invoke-interface {v15}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 654
    .local v5, "context":Landroid/content/Context;
    invoke-static {v5}, Lcom/chillingo/liboffers/utils/DeviceUtils;->screenbounds(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object v10

    .line 657
    .local v10, "screenBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    invoke-interface {v15}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v8

    .line 658
    .local v8, "position":Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    invoke-interface {v15}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->direction()Landroid/graphics/PointF;

    move-result-object v7

    .line 660
    .local v7, "direction":Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    invoke-interface {v15}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->velocity()Landroid/graphics/PointF;

    move-result-object v12

    .line 663
    .local v12, "velocity":Landroid/graphics/PointF;
    iget v15, v8, Landroid/graphics/PointF;->x:F

    iget v0, v12, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move-wide/from16 v0, p1

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v13, v15, v16

    .line 664
    .local v13, "xpos":F
    iget v15, v8, Landroid/graphics/PointF;->y:F

    iget v0, v12, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move-wide/from16 v0, p1

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v14, v15, v16

    .line 666
    .local v14, "ypos":F
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    invoke-interface {v15}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->radius()F

    move-result v9

    .line 667
    .local v9, "rad":F
    const/4 v6, 0x0

    .line 669
    .local v6, "diameter":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->ignoreAngleChangeAndCollisionsTime:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_3

    .line 673
    sub-float v15, v13, v9

    neg-float v0, v6

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_8

    .line 676
    iget v15, v7, Landroid/graphics/PointF;->x:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_0

    .line 678
    const-string v15, "Bubble-FloatingState"

    const-string v16, "BOUNDSCOLLISION - HORIZONTAL"

    invoke-static/range {v15 .. v16}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget v15, v7, Landroid/graphics/PointF;->x:F

    neg-float v15, v15

    iput v15, v7, Landroid/graphics/PointF;->x:F

    .line 682
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->doOnEdgeCollision:Z

    .line 683
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->forceRecalculateAngleChange:Z

    .line 701
    :cond_0
    :goto_0
    sub-float v15, v14, v9

    neg-float v0, v6

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_9

    .line 704
    iget v15, v7, Landroid/graphics/PointF;->y:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_1

    .line 706
    const-string v15, "Bubble-FloatingState"

    const-string v16, "BOUNDSCOLLISION - VERTICLE"

    invoke-static/range {v15 .. v16}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget v15, v7, Landroid/graphics/PointF;->y:F

    neg-float v15, v15

    iput v15, v7, Landroid/graphics/PointF;->y:F

    .line 709
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->doOnEdgeCollision:Z

    .line 710
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->forceRecalculateAngleChange:Z

    .line 727
    :cond_1
    :goto_1
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodeCollision(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    .line 729
    .local v4, "collidedNode":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->lastSceneNodeCollidedWith:Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    if-eq v4, v15, :cond_2

    .line 731
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->onNodeCollision(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)Landroid/graphics/PointF;

    move-result-object v7

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->createCollisionAudioEffect()V

    .line 736
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->angleChangeEnabled:Z

    if-eqz v15, :cond_3

    .line 739
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v7, v1, v2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->calculateFinalDirectionAfterAngleChange(Landroid/graphics/PointF;D)Landroid/graphics/PointF;

    move-result-object v7

    .line 744
    .end local v4    # "collidedNode":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->doOnEdgeCollision:Z

    if-eqz v15, :cond_4

    .line 746
    const-string v15, "Bubble-FloatingState"

    const-string v16, "EDGECOLLISION"

    invoke-static/range {v15 .. v16}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-direct/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->onEdgeCollision()V

    .line 749
    invoke-direct/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->createCollisionAudioEffect()V

    .line 750
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->doOnEdgeCollision:Z

    .line 756
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->ignoreAngleChangeAndCollisionsTime:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_5

    .line 757
    move-object/from16 v0, p0

    iget v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->ignoreAngleChangeAndCollisionsTime:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    sub-double v16, v16, p1

    move-wide/from16 v0, v16

    double-to-float v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->ignoreAngleChangeAndCollisionsTime:F

    .line 760
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    invoke-interface {v15, v7}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setDirection(Landroid/graphics/PointF;)V

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface/range {v15 .. v16}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setPosition(Landroid/graphics/PointF;)V

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    check-cast v15, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    invoke-interface {v15}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->targetSpeed()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->speed()F

    move-result v16

    sub-float v11, v15, v16

    .line 775
    .local v11, "speedDiff":F
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->speed()F

    move-result v16

    float-to-double v0, v11

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->speedDampen:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    move-wide/from16 v0, p3

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setSpeed(F)V

    .line 784
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "diameter":F
    .end local v7    # "direction":Landroid/graphics/PointF;
    .end local v8    # "position":Landroid/graphics/PointF;
    .end local v9    # "rad":F
    .end local v10    # "screenBounds":Landroid/graphics/RectF;
    .end local v11    # "speedDiff":F
    .end local v12    # "velocity":Landroid/graphics/PointF;
    .end local v13    # "xpos":F
    .end local v14    # "ypos":F
    :cond_6
    invoke-direct/range {p0 .. p4}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->oscillateBubble(DD)V

    .line 786
    move-object/from16 v0, p0

    iget v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->currentIconSpringDuration:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_7

    .line 788
    invoke-direct/range {p0 .. p2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->updateIconSpringEffect(D)V

    .line 791
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->nextState:Ljava/lang/String;

    return-object v15

    .line 687
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "diameter":F
    .restart local v7    # "direction":Landroid/graphics/PointF;
    .restart local v8    # "position":Landroid/graphics/PointF;
    .restart local v9    # "rad":F
    .restart local v10    # "screenBounds":Landroid/graphics/RectF;
    .restart local v12    # "velocity":Landroid/graphics/PointF;
    .restart local v13    # "xpos":F
    .restart local v14    # "ypos":F
    :cond_8
    add-float v15, v13, v9

    iget v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    add-float v16, v16, v6

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    .line 690
    iget v15, v7, Landroid/graphics/PointF;->x:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    .line 692
    const-string v15, "Bubble-FloatingState"

    const-string v16, "BOUNDSCOLLISION - HORIZONTAL"

    invoke-static/range {v15 .. v16}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget v15, v7, Landroid/graphics/PointF;->x:F

    neg-float v15, v15

    iput v15, v7, Landroid/graphics/PointF;->x:F

    .line 696
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->doOnEdgeCollision:Z

    .line 697
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->forceRecalculateAngleChange:Z

    goto/16 :goto_0

    .line 713
    :cond_9
    add-float v15, v14, v9

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    add-float v16, v16, v6

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1

    .line 716
    iget v15, v7, Landroid/graphics/PointF;->y:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1

    .line 718
    const-string v15, "Bubble-FloatingState"

    const-string v16, "BOUNDSCOLLISION - VERTICLE"

    invoke-static/range {v15 .. v16}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget v15, v7, Landroid/graphics/PointF;->y:F

    neg-float v15, v15

    iput v15, v7, Landroid/graphics/PointF;->y:F

    .line 722
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->doOnEdgeCollision:Z

    .line 723
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->forceRecalculateAngleChange:Z

    goto/16 :goto_1
.end method
