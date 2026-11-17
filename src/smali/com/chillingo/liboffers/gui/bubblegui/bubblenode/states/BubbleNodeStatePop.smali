.class public Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;
.super Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;
.source "BubbleNodeStatePop.java"


# instance fields
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

.field private offer:Lcom/chillingo/liboffers/model/Offer;


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    .locals 0
    .param p1, "owner"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateImpl;-><init>(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 31
    return-void
.end method

.method private createEmitterNode()V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    const-string v1, "position"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    const-string v1, "rotation"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->rotation()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    const-string v1, "scale"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->scale()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterClassName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    invoke-interface {v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method private createPopAudioEffect()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method private postActivateOfferNotification()V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "activateoffer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ownerhashcode"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 150
    return-void
.end method

.method private postPopTransactionEndNotification()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "offerActivationTransactionEnd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ownerhashcode"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 158
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->createPopAudioEffect()V

    .line 113
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->createEmitterNode()V

    .line 115
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->postActivateOfferNotification()V

    .line 116
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->postPopTransactionEndNotification()V

    .line 172
    return-void
.end method

.method public parseProperties(Ljava/util/HashMap;)V
    .locals 10
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
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 36
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    .line 57
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 59
    .local v2, "objectProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "emitterClassName"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterClassName:Ljava/lang/String;

    .line 61
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterClassName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterClassName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 62
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to obtain emitter class"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_1
    const-string v4, "popSplashImage"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, "imageName":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 69
    const-string v4, "image"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_2
    const-string v4, "identifier"

    const-string v5, "POP"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v4, "duration"

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v4, "speed"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v4

    invoke-interface {v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/chillingo/liboffers/utils/DeviceUtils;->contentScaleFactor(Landroid/content/Context;)F

    move-result v0

    .line 78
    .local v0, "density":F
    const-string v4, "scaleX"

    mul-float v5, v8, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v4, "scaleY"

    mul-float v5, v8, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v4, "targetAlphaMult"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v4, "scaleFactor"

    const v5, 0x3f83d70a    # 1.03f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v4, "parentview"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    const-string v4, "parentview"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 87
    .local v3, "parentView":Landroid/view/ViewGroup;
    const-string v4, "parentview"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v3    # "parentView":Landroid/view/ViewGroup;
    :cond_3
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    const-string v5, "objectProperties"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    const-string v5, "duration"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    const-string v5, "numberOfObjectsToEmitPerSecond"

    const/high16 v6, 0x447a0000    # 1000.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    const-string v5, "maximumNumberOfObjectsActive"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    const-string v5, "maximumNumberOfObjectsToEmit"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    const-string v5, "diameter"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->owner()Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-result-object v6

    invoke-interface {v6}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->radius()F

    move-result v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->emitterData:Ljava/util/HashMap;

    const-string v5, "type"

    sget-object v6, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_POINT:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public setOffer(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 0
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStatePop;->offer:Lcom/chillingo/liboffers/model/Offer;

    .line 180
    return-void
.end method

.method public update(DD)Ljava/lang/String;
    .locals 1
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method
