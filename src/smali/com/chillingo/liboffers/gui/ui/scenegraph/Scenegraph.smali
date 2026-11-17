.class public Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;
.super Ljava/lang/Object;
.source "Scenegraph.java"


# static fields
.field private static final ENABLE_SCENEGRAPH_LOG:Z = false

.field public static final ENABLE_SCENENODE_LOG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OffersScenegraph"

.field private static ourInstance:Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;


# instance fields
.field private addNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;",
            ">;"
        }
    .end annotation
.end field

.field private createNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;",
            ">;"
        }
    .end annotation
.end field

.field private removeNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->ourInstance:Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "OffersScenegraph"

    const-string v1, "Constructor"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNodes:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->addNodes:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeNodes:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->messages:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method public static getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->ourInstance:Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    invoke-direct {v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;-><init>()V

    sput-object v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->ourInstance:Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    .line 43
    :cond_0
    sget-object v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->ourInstance:Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    return-object v0
.end method

.method public static hasSharedInstance()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->ourInstance:Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static releaseInstance()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->ourInstance:Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->ourInstance:Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->shutdown()V

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->ourInstance:Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public addNode(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    .locals 3
    .param p1, "node"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add invalid node to scenegraph"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    const-string v0, "OffersScenegraph"

    const-string v1, "addNode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 139
    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->addNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1
    return-void
.end method

.method public createNode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "top"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;Landroid/content/Context;Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;)V

    .line 93
    return-void
.end method

.method public createNode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "top"    # Ljava/lang/Boolean;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;Landroid/content/Context;Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;)V

    .line 102
    return-void
.end method

.method public createNode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;Landroid/content/Context;Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "top"    # Ljava/lang/Boolean;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "delegate"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "OffersScenegraph"

    const-string v2, "createNode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 113
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 115
    .local v0, "nodeAddData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "class"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "top"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    if-eqz p3, :cond_0

    .line 119
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    if-eqz p4, :cond_1

    .line 122
    const-string v1, "context"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    if-eqz p5, :cond_2

    .line 125
    const-string v1, "delegate"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public drawWithProjectionMatrix([F)V
    .locals 3
    .param p1, "projectionMatrix"    # [F

    .prologue
    .line 526
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 529
    .local v1, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->draw([F)V

    goto :goto_0

    .line 531
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_0
    return-void
.end method

.method public nodeCollision(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    .locals 5
    .param p1, "testNode"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    .line 553
    invoke-interface {p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->position()Landroid/graphics/PointF;

    move-result-object v2

    .line 554
    .local v2, "testPoint":Landroid/graphics/PointF;
    invoke-interface {p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->radius()F

    move-result v3

    .line 561
    .local v3, "testRadius":F
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 564
    .local v1, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    if-eq v1, p1, :cond_0

    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->collisionEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    invoke-interface {v1, v2, v3}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->hitTest(Landroid/graphics/PointF;F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 574
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public numberOfNodesInScene()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public numberOfNodesInSceneOfType(Ljava/lang/Class;)Ljava/lang/Integer;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 195
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 198
    .local v2, "numberOfNodesOfType":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 200
    .local v1, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 201
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 205
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_1
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->addNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 207
    .restart local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 208
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 218
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_3
    return-object v2
.end method

.method public numberOfNodesToBeAddedToScene()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->addNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public numberOfNodesToBeAddedToSceneOfType(Ljava/lang/Class;)Ljava/lang/Integer;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 288
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 291
    .local v2, "numberOfNodesOfType":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->addNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 293
    .local v1, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 294
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 297
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_1
    return-object v2
.end method

.method public numberOfNodesToBeCreated()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public numberOfNodesToBeCreatedOfType(Ljava/lang/Class;)Ljava/lang/Integer;
    .locals 8
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 244
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 247
    .local v5, "numberOfNodesOfType":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 249
    .local v4, "nodeToCreateData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "class"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 255
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 256
    .local v3, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v3, p1, :cond_0

    .line 257
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 259
    .end local v3    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "OffersScenegraph"

    const-string v7, "Class not found when counting nodes to be created"

    invoke-static {v6, v7}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v4    # "nodeToCreateData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v5
.end method

.method public numberOfNodesToBeRemovedFromScene()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public pointCollision(Landroid/graphics/PointF;)Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 539
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 541
    .local v1, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    invoke-interface {v1, p1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->hitTest(Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method processMessageQueue()V
    .locals 7

    .prologue
    .line 349
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 351
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "class"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 355
    const-string v6, "message"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 357
    .local v4, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    .line 359
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 361
    .local v5, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    invoke-interface {v5, v4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->processMessage(Ljava/util/HashMap;)V

    goto :goto_0

    .line 368
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_1
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 369
    return-void
.end method

.method public recreateAssetsForAllNodes()V
    .locals 3

    .prologue
    .line 327
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 328
    .local v1, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->recreateAssets()V

    goto :goto_0

    .line 330
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_0
    return-void
.end method

.method removeAllNodes()V
    .locals 3

    .prologue
    .line 178
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 180
    .local v1, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->shutdown()V

    goto :goto_0

    .line 183
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_0
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 184
    return-void
.end method

.method public removeAllNodesOfType(Ljava/lang/Class;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 167
    .local v1, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 168
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_1
    return-void
.end method

.method public removeAllNodesToBeAdded()V
    .locals 3

    .prologue
    .line 272
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->addNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 275
    .local v1, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->shutdown()V

    goto :goto_0

    .line 278
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_0
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->addNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 279
    return-void
.end method

.method public removeAllNodesToBeCreated()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    return-void
.end method

.method public removeAllNodesToBeRemoved()V
    .locals 5

    .prologue
    .line 305
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 307
    .local v1, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    const-string v2, "OffersScenegraph"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing scene node from graph: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 310
    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->shutdown()V

    .line 312
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    .end local v1    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_0
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 316
    return-void
.end method

.method public removeNode(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    .locals 3
    .param p1, "node"    # Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to remove invalid node from scenegraph"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    const-string v0, "OffersScenegraph"

    const-string v1, "removeNode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 155
    if-eqz p1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    return-void
.end method

.method public sendMessageToNodesOfType(Ljava/lang/Class;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 339
    .local v0, "finalMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 75
    const-string v0, "OffersScenegraph"

    const-string v1, "Scenegraph shutdown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 78
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeAllNodesToBeRemoved()V

    .line 79
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeAllNodesToBeAdded()V

    .line 80
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeAllNodesToBeCreated()V

    .line 81
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeAllNodes()V

    .line 82
    return-void
.end method

.method public update(DD)V
    .locals 7
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 377
    :try_start_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->processMessageQueue()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->updateGraphState()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 393
    :goto_1
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 397
    .local v2, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :try_start_2
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->update(DD)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "OffersScenegraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update node "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 379
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :catch_1
    move-exception v0

    .line 380
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "OffersScenegraph"

    const-string v4, "Failed to process messages"

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 388
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "OffersScenegraph"

    const-string v4, "Failed to update graph state"

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 404
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method updateGraphState()V
    .locals 16

    .prologue
    const/4 v15, 0x0

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 413
    .local v10, "nodeToAddData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "class"

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 417
    const-string v12, "OffersScenegraph"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Creating node of class: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v15}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 419
    const-string v12, "top"

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 421
    .local v11, "onTop":Ljava/lang/Boolean;
    const-string v12, "data"

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 423
    .local v7, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "context"

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 428
    .local v2, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 430
    .local v9, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v9, :cond_0

    .line 434
    :try_start_1
    const-string v12, "OffersScenegraph"

    const-string v13, "Constructing scene node"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 438
    if-eqz v2, :cond_2

    .line 440
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/content/Context;

    aput-object v14, v12, v13

    invoke-virtual {v9, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 441
    .local v3, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-object v0, v12

    check-cast v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-object v8, v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 450
    .local v8, "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :goto_1
    if-eqz v8, :cond_1

    .line 453
    :try_start_2
    const-string v12, "OffersScenegraph"

    const-string v13, "Initialising scene node"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 455
    invoke-interface {v8, v7}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->initialise(Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 469
    :cond_1
    :try_start_3
    const-string v12, "OffersScenegraph"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding scene node to graph: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 474
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :goto_2
    const-string v12, "delegate"

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 480
    const-string v12, "delegate"

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;

    .line 481
    .local v4, "delegate":Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;
    invoke-interface {v4, v8}, Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;->OnNodeAdded(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 484
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "delegate":Lcom/chillingo/liboffers/gui/ui/scenegraph/ScenegraphDelegate;
    .end local v8    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :catch_0
    move-exception v5

    .line 486
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    const-string v12, "OffersScenegraph"

    const-string v13, "No such method when trying to add node"

    invoke-static {v12, v13}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 499
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    .end local v9    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v5

    .line 501
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    const-string v12, "OffersScenegraph"

    const-string v13, "Class not found when trying to add node"

    invoke-static {v12, v13}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 445
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v9    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v12, 0x0

    :try_start_5
    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v9, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 446
    .restart local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-object v0, v12

    check-cast v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    move-object v8, v0

    .restart local v8    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    goto :goto_1

    .line 457
    :catch_2
    move-exception v5

    .line 459
    .local v5, "e":Ljava/lang/Throwable;
    const-string v12, "OffersScenegraph"

    const-string v13, "Exception occured when trying to initialise node"

    invoke-static {v12, v13}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 464
    invoke-interface {v8}, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;->shutdown()V

    .line 465
    throw v5
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 488
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v8    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :catch_3
    move-exception v5

    .line 490
    .local v5, "e":Ljava/lang/InstantiationException;
    :try_start_6
    const-string v12, "OffersScenegraph"

    const-string v13, "Instantiation exception when trying to add node"

    invoke-static {v12, v13}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 477
    .end local v5    # "e":Ljava/lang/InstantiationException;
    .restart local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 492
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :catch_4
    move-exception v5

    .line 494
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_8
    const-string v12, "OffersScenegraph"

    const-string v13, "Exception when trying to add node"

    invoke-static {v12, v13}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 506
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v7    # "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "nodeToAddData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "onTop":Ljava/lang/Boolean;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->createNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 510
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->addNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;

    .line 512
    .restart local v8    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    const-string v12, "OffersScenegraph"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding scene node to graph: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v15}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 514
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 517
    .end local v8    # "node":Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->addNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeAllNodesToBeRemoved()V

    .line 521
    return-void
.end method
