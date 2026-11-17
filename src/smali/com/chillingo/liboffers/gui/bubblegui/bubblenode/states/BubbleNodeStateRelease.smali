.class public Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateRelease;
.super Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;
.source "BubbleNodeStateRelease.java"


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    .locals 0
    .param p1, "owner"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 21
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "offerreleased"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ownerhashcode"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateRelease;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string v1, "releaseType"

    const-string v2, "cornerTap"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateRelease;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 30
    return-void
.end method

.method public update(DD)Ljava/lang/String;
    .locals 7
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateRelease;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    invoke-interface {v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v0

    .line 37
    .local v0, "position":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateRelease;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    invoke-interface {v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->velocity()Landroid/graphics/PointF;

    move-result-object v1

    .line 40
    .local v1, "velocity":Landroid/graphics/PointF;
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    double-to-float v6, p1

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 41
    .local v2, "xpos":F
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    double-to-float v6, p1

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 44
    .local v3, "ypos":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateRelease;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v4, v5}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setPosition(Landroid/graphics/PointF;)V

    .line 47
    const-string v4, "floating"

    return-object v4
.end method
