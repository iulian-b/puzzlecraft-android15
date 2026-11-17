.class public Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFadeOff;
.super Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;
.source "BubbleNodeStateFadeOff.java"


# instance fields
.field private timeToFade:F


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    .locals 0
    .param p1, "owner"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 19
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 24
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFadeOff;->timeToFade:F

    .line 25
    return-void
.end method

.method public update(DD)Ljava/lang/String;
    .locals 7
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    const/4 v6, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFadeOff;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->alphaMultiplier()F

    move-result v0

    .line 34
    .local v0, "alpha":F
    float-to-double v2, v0

    iget v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFadeOff;->timeToFade:F

    float-to-double v4, v4

    div-double v4, p1, v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .line 36
    const/4 v1, 0x0

    .line 39
    .local v1, "nextState":Ljava/lang/String;
    cmpg-float v2, v0, v6

    if-gtz v2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFadeOff;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setAlphaMultiplier(F)V

    .line 44
    const-string v1, "close"

    .line 51
    :goto_0
    return-object v1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFadeOff;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->setAlphaMultiplier(F)V

    goto :goto_0
.end method
