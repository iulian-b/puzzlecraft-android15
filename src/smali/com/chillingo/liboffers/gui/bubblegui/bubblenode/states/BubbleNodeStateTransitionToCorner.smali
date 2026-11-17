.class public Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;
.super Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;
.source "BubbleNodeStateTransitionToCorner.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;
.implements Lcom/chillingo/liboffers/gui/interaction/TouchEvents;


# instance fields
.field private invertedXAxis:Z

.field private invertedYAxis:Z

.field private lastTranslation:Landroid/graphics/PointF;

.field private moved:Z

.field private nextState:Ljava/lang/String;

.field private offerId:Ljava/lang/String;

.field private releaseBubble:Z

.field private releaseBubbleWithVelocity:Z

.field private targetPos:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    .locals 1
    .param p1, "owner"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->invertedYAxis:Z

    .line 43
    return-void
.end method

.method private updateDirectionAndSpeedFromTouchEvent(Landroid/graphics/PointF;)V
    .locals 6
    .param p1, "delta"    # Landroid/graphics/PointF;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setDirection(Landroid/graphics/PointF;)V

    .line 247
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 248
    .local v1, "lengthSqr":F
    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 252
    .local v0, "length":F
    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v2, v3, v0

    .line 253
    .local v2, "nodeSpeed":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v3

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-interface {v3, v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setSpeed(F)V

    .line 257
    return-void
.end method

.method private updatePositionFromTouchEvent(Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "delta"    # Landroid/graphics/PointF;

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    add-float v0, v2, v3

    .line 233
    .local v0, "xpos":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float v1, v2, v3

    .line 236
    .local v1, "ypos":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setPosition(Landroid/graphics/PointF;)V

    .line 237
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->releaseBubble:Z

    .line 49
    iput-boolean v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->releaseBubbleWithVelocity:Z

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->nextState:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "showbadgenotification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ownerhashcode"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v1, "offerid"

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->offerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 57
    return-void
.end method

.method public gestureRecognized(Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;)V
    .locals 4
    .param p1, "gestureRecognizer"    # Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;

    .prologue
    const/4 v3, 0x1

    .line 124
    instance-of v2, p1, Lcom/chillingo/liboffers/gui/interaction/gestures/TapGestureRecognizer;

    if-eqz v2, :cond_1

    .line 128
    iput-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->releaseBubbleWithVelocity:Z

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    instance-of v2, p1, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;

    if-eqz v2, :cond_0

    .line 132
    iput-boolean v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->moved:Z

    move-object v0, p1

    .line 134
    check-cast v0, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;

    .line 136
    .local v0, "panGesture":Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;
    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;->getDelta()Landroid/graphics/PointF;

    move-result-object v1

    .line 139
    .local v1, "translate":Landroid/graphics/PointF;
    iget-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->invertedYAxis:Z

    if-eqz v2, :cond_2

    .line 140
    iget v2, v1, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 142
    :cond_2
    iget-boolean v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->invertedXAxis:Z

    if-eqz v2, :cond_3

    .line 143
    iget v2, v1, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 147
    :cond_3
    iput-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->lastTranslation:Landroid/graphics/PointF;

    .line 151
    invoke-direct {p0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->updatePositionFromTouchEvent(Landroid/graphics/PointF;)V

    goto :goto_0
.end method

.method public setInvertedXAxis(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->invertedXAxis:Z

    .line 276
    return-void
.end method

.method public setInvertedYAxis(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->invertedYAxis:Z

    .line 272
    return-void
.end method

.method public setOfferId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->offerId:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setTargetPos(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "targetPos"    # Landroid/graphics/PointF;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->targetPos:Landroid/graphics/PointF;

    .line 268
    return-void
.end method

.method public touchesBegan(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 65
    return-void
.end method

.method public touchesCancelled(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 75
    return-void
.end method

.method public touchesEnded(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 80
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->moved:Z

    if-eqz v5, :cond_2

    .line 82
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 83
    .local v3, "location":Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 86
    .local v4, "prevLocation":Landroid/graphics/PointF;
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v4, Landroid/graphics/PointF;->x:F

    sub-float v1, v5, v6

    .line 87
    .local v1, "deltaX":F
    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v4, Landroid/graphics/PointF;->y:F

    sub-float v2, v5, v6

    .line 90
    .local v2, "deltaY":F
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->invertedYAxis:Z

    if-eqz v5, :cond_0

    .line 91
    neg-float v2, v2

    .line 92
    :cond_0
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->invertedXAxis:Z

    if-eqz v5, :cond_1

    .line 93
    neg-float v1, v1

    .line 99
    :cond_1
    iget-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->lastTranslation:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v5

    .line 100
    iget-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->lastTranslation:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v5

    .line 102
    mul-float/2addr v1, v7

    .line 103
    mul-float/2addr v2, v7

    .line 107
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 109
    .local v0, "delta":Landroid/graphics/PointF;
    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->updatePositionFromTouchEvent(Landroid/graphics/PointF;)V

    .line 111
    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->updateDirectionAndSpeedFromTouchEvent(Landroid/graphics/PointF;)V

    .line 114
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->releaseBubble:Z

    .line 116
    .end local v0    # "delta":Landroid/graphics/PointF;
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "location":Landroid/graphics/PointF;
    .end local v4    # "prevLocation":Landroid/graphics/PointF;
    :cond_2
    return-void
.end method

.method public touchesMoved(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 70
    return-void
.end method

.method public update(DD)Ljava/lang/String;
    .locals 9
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    const v8, 0x3ba3d70a    # 0.005f

    .line 179
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->moved:Z

    if-nez v5, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v5

    invoke-interface {v5}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v3

    .line 185
    .local v3, "position":Landroid/graphics/PointF;
    const v5, 0x3dcccccd    # 0.1f

    double-to-float v6, p3

    mul-float v4, v5, v6

    .line 188
    .local v4, "timeCompensatedInterpRate":F
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->targetPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    add-float v1, v5, v6

    .line 189
    .local v1, "newPosX":F
    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->targetPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    add-float v2, v5, v6

    .line 192
    .local v2, "newPosY":F
    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_2

    iget v5, v3, Landroid/graphics/PointF;->y:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v5

    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->targetPos:Landroid/graphics/PointF;

    invoke-interface {v5, v6}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setPosition(Landroid/graphics/PointF;)V

    .line 198
    const-string v5, "corner"

    iput-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->nextState:Ljava/lang/String;

    .line 208
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "position":Landroid/graphics/PointF;
    .end local v4    # "timeCompensatedInterpRate":F
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->releaseBubble:Z

    if-eqz v5, :cond_3

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v5, "shownextoffer"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v5

    invoke-interface {v5}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 213
    const-string v5, "release"

    iput-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->nextState:Ljava/lang/String;

    .line 225
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->nextState:Ljava/lang/String;

    return-object v5

    .line 203
    .restart local v1    # "newPosX":F
    .restart local v2    # "newPosY":F
    .restart local v3    # "position":Landroid/graphics/PointF;
    .restart local v4    # "timeCompensatedInterpRate":F
    :cond_2
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v5

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v5, v6}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setPosition(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 215
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "position":Landroid/graphics/PointF;
    .end local v4    # "timeCompensatedInterpRate":F
    :cond_3
    iget-boolean v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->releaseBubbleWithVelocity:Z

    if-eqz v5, :cond_1

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v5, "shownextoffer"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v5

    invoke-interface {v5}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 220
    const-string v5, "releasewithvelocity"

    iput-object v5, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateTransitionToCorner;->nextState:Ljava/lang/String;

    goto :goto_1
.end method
