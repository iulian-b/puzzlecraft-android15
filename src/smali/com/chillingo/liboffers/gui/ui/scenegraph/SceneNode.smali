.class public interface abstract Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
.super Ljava/lang/Object;
.source "SceneNode.java"


# virtual methods
.method public abstract allowCollisionChanges()Z
.end method

.method public abstract alphaMultiplier()F
.end method

.method public abstract collisionEnabled()Z
.end method

.method public abstract direction()Landroid/graphics/PointF;
.end method

.method public abstract draw([F)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract hitTest(Landroid/graphics/PointF;)Z
.end method

.method public abstract hitTest(Landroid/graphics/PointF;F)Z
.end method

.method public abstract initialise(Ljava/util/HashMap;)V
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
.end method

.method public abstract position()Landroid/graphics/PointF;
.end method

.method public abstract processMessage(Ljava/util/HashMap;)V
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
.end method

.method public abstract radius()F
.end method

.method public abstract recreateAssets()V
.end method

.method public abstract rotation()Landroid/graphics/PointF;
.end method

.method public abstract scale()Landroid/graphics/PointF;
.end method

.method public abstract setAllowCollisionChanges(Z)V
.end method

.method public abstract setAlphaMultiplier(F)V
.end method

.method public abstract setCollisionEnabled(Z)V
.end method

.method public abstract setDirection(Landroid/graphics/PointF;)V
.end method

.method public abstract setPosition(Landroid/graphics/PointF;)V
.end method

.method public abstract setRotation(Landroid/graphics/PointF;)V
.end method

.method public abstract setScale(Landroid/graphics/PointF;)V
.end method

.method public abstract setSpeed(F)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract speed()F
.end method

.method public abstract update(DD)V
.end method

.method public abstract velocity()Landroid/graphics/PointF;
.end method
