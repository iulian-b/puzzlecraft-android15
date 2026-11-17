.class public Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;
.super Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;
.source "BubbleNodeStateSwipeOffRight.java"


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    .locals 0
    .param p1, "owner"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 25
    return-void
.end method

.method private createSwipeAudioNode()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setDirection(Landroid/graphics/PointF;)V

    .line 32
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v0

    const/high16 v1, 0x44160000    # 600.0f

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setSpeed(F)V

    .line 35
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;->createSwipeAudioNode()V

    .line 36
    return-void
.end method

.method public update(DD)Ljava/lang/String;
    .locals 13
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v9

    invoke-interface {v9}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/chillingo/liboffers/utils/DeviceUtils;->screenbounds(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object v6

    .line 66
    .local v6, "screenBounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v9

    invoke-interface {v9}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v1

    .line 67
    .local v1, "currentPos":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v9

    invoke-interface {v9}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->velocity()Landroid/graphics/PointF;

    move-result-object v2

    .line 71
    .local v2, "currentVelocity":Landroid/graphics/PointF;
    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->x:F

    double-to-float v11, p1

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 72
    .local v7, "xpos":F
    iget v9, v1, Landroid/graphics/PointF;->y:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    double-to-float v11, p1

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 74
    .local v8, "ypos":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v9

    invoke-interface {v9}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->radius()F

    move-result v5

    .line 75
    .local v5, "rad":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v3, v5, v9

    .line 77
    .local v3, "diameter":F
    const/4 v4, 0x0

    .line 80
    .local v4, "nextState":Ljava/lang/String;
    add-float v9, v7, v5

    iget v10, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v3

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 82
    const-string v4, "close"

    .line 89
    :goto_0
    return-object v4

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateSwipeOffRight;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v9

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v9, v10}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setPosition(Landroid/graphics/PointF;)V

    goto :goto_0
.end method
