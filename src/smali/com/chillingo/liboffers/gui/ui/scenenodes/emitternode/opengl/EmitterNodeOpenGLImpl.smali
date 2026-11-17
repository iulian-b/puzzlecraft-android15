.class public Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;
.super Ljava/lang/Object;
.source "EmitterNodeOpenGLImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;
.implements Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OffersEmitterNode"


# instance fields
.field private context:Landroid/content/Context;

.field private diameter:F

.field private direction:Landroid/graphics/PointF;

.field private duration:F

.field private emittedObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private emitterType:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

.field private maximumNumberOfObjectsActive:I

.field private maximumNumberOfObjectsToEmit:I

.field private numberOfObjectsToEmitPerSecond:F

.field private objectProperties:Ljava/util/HashMap;
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

.field private position:Landroid/graphics/PointF;

.field private radius:F

.field private rotation:Landroid/graphics/PointF;

.field private scale:Landroid/graphics/PointF;

.field private speed:F

.field private time:F

.field private totalNumberOfObjectsEmitted:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->context:Landroid/content/Context;

    .line 155
    return-void
.end method


# virtual methods
.method public allowCollisionChanges()Z
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method public alphaMultiplier()F
    .locals 1

    .prologue
    .line 715
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public collisionEnabled()Z
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method createEmissionAudioNode()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public direction()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->direction:Landroid/graphics/PointF;

    return-object v0
.end method

.method public draw([F)V
    .locals 4
    .param p1, "projectionMatrix"    # [F

    .prologue
    .line 585
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 587
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .line 589
    .local v1, "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    invoke-static {v1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$000(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Lcom/chillingo/liboffers/gui/renderer/Sprite;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->drawWithProjectionMatrix([F)V

    goto :goto_0

    .line 592
    .end local v1    # "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    :cond_0
    return-void
.end method

.method emitObject(Ljava/lang/String;)V
    .locals 0
    .param p1, "classType"    # Ljava/lang/String;

    .prologue
    .line 488
    return-void
.end method

.method emitSprite()V
    .locals 28

    .prologue
    .line 285
    const/4 v10, 0x0

    .line 287
    .local v10, "imageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "image"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "image"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "imageName":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 290
    .restart local v10    # "imageName":Ljava/lang/String;
    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 291
    :cond_1
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "Invalid imageName for emitted object"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 293
    :cond_2
    const/4 v9, 0x0

    .line 295
    .local v9, "identifier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "identifier"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "identifier"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "identifier":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 298
    .restart local v9    # "identifier":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 299
    :cond_4
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "Invalid identifier for emitted object"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 303
    :cond_5
    new-instance v22, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9, v10}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v22, "spriteInstance":Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;
    if-eqz v22, :cond_11

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "duration"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 309
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "No duration specified for emitter object"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 314
    :cond_6
    new-instance v11, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;-><init>(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;)V

    .line 316
    .local v11, "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$002(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Lcom/chillingo/liboffers/gui/renderer/Sprite;)Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "duration"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move/from16 v0, v24

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$202(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F

    .line 320
    const/4 v7, 0x0

    .line 321
    .local v7, "directionX":F
    const/4 v8, 0x0

    .line 323
    .local v8, "directionY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "directionX"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "directionX"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 326
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "directionY"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "directionY"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 329
    :cond_8
    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$302(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "speed"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "speed"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move/from16 v0, v24

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$402(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F

    .line 334
    :cond_9
    const/high16 v20, 0x3f800000    # 1.0f

    .line 335
    .local v20, "scaleX":F
    const/high16 v21, 0x3f800000    # 1.0f

    .line 337
    .local v21, "scaleY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "scaleX"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "scaleX"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .line 340
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "scaleY"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "scaleY"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 344
    :cond_b
    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$502(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 346
    const/16 v18, 0x0

    .line 347
    .local v18, "rotateZ":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "rotateZ"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "rotateZ"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .line 350
    :cond_c
    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$602(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F

    .line 352
    const/high16 v19, 0x3f800000    # 1.0f

    .line 353
    .local v19, "scaleFactor":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "scaleFactor"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "scaleFactor"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v19

    .line 356
    :cond_d
    move/from16 v0, v19

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$702(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F

    .line 358
    const/high16 v4, 0x3f800000    # 1.0f

    .line 359
    .local v4, "alphaMult":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "alphaMult"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "alphaMult"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 362
    :cond_e
    invoke-static {v11, v4}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$802(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F

    .line 364
    const/high16 v23, 0x3f800000    # 1.0f

    .line 366
    .local v23, "targetAlphaMult":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "targetAlphaMult"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "targetAlphaMult"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v23

    .line 369
    :cond_f
    move/from16 v0, v23

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$902(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emitterType:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_POINT:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$1002(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 416
    :cond_10
    :goto_0
    invoke-virtual {v11}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->updateMatrix()V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->createEmissionAudioNode()V

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->totalNumberOfObjectsEmitted:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->totalNumberOfObjectsEmitted:I

    .line 425
    .end local v4    # "alphaMult":F
    .end local v7    # "directionX":F
    .end local v8    # "directionY":F
    .end local v11    # "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .end local v18    # "rotateZ":F
    .end local v19    # "scaleFactor":F
    .end local v20    # "scaleX":F
    .end local v21    # "scaleY":F
    .end local v23    # "targetAlphaMult":F
    :cond_11
    return-void

    .line 377
    .restart local v4    # "alphaMult":F
    .restart local v7    # "directionX":F
    .restart local v8    # "directionY":F
    .restart local v11    # "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .restart local v18    # "rotateZ":F
    .restart local v19    # "scaleFactor":F
    .restart local v20    # "scaleX":F
    .restart local v21    # "scaleY":F
    .restart local v23    # "targetAlphaMult":F
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emitterType:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_AREA:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 379
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v24

    const-wide v26, 0x4076800000000000L    # 360.0

    rem-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v16, v0

    .line 380
    .local v16, "rotZDegrees":F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v17, v0

    .line 382
    .local v17, "rotZRadians":F
    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    .line 383
    .local v5, "dirX":F
    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->cos(F)F

    move-result v6

    .line 385
    .local v6, "dirY":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v24

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    rem-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->radius:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v12, v5, v24

    .line 386
    .local v12, "offsetX":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v24

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    rem-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->radius:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v13, v6, v24

    .line 388
    .local v13, "offsetY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    add-float v14, v24, v12

    .line 389
    .local v14, "posX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    add-float v15, v24, v13

    .line 391
    .local v15, "posY":F
    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, v24

    invoke-direct {v0, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$1002(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    goto/16 :goto_0

    .line 393
    .end local v5    # "dirX":F
    .end local v6    # "dirY":F
    .end local v12    # "offsetX":F
    .end local v13    # "offsetY":F
    .end local v14    # "posX":F
    .end local v15    # "posY":F
    .end local v16    # "rotZDegrees":F
    .end local v17    # "rotZRadians":F
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emitterType:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_PERIMETER:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 397
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v24

    const-wide v26, 0x4076800000000000L    # 360.0

    rem-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v16, v0

    .line 398
    .restart local v16    # "rotZDegrees":F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v17, v0

    .line 400
    .restart local v17    # "rotZRadians":F
    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    .line 401
    .restart local v5    # "dirX":F
    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->cos(F)F

    move-result v6

    .line 403
    .restart local v6    # "dirY":F
    new-instance v24, Landroid/graphics/PointF;

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$1102(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 405
    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$302(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 407
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->radius:F

    move/from16 v24, v0

    mul-float v12, v5, v24

    .line 408
    .restart local v12    # "offsetX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->radius:F

    move/from16 v24, v0

    mul-float v13, v6, v24

    .line 410
    .restart local v13    # "offsetY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    add-float v14, v24, v12

    .line 411
    .restart local v14    # "posX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    add-float v15, v24, v13

    .line 413
    .restart local v15    # "posY":F
    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, v24

    invoke-direct {v0, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$1002(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    goto/16 :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public hitTest(Landroid/graphics/PointF;)Z
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public hitTest(Landroid/graphics/PointF;F)Z
    .locals 1
    .param p1, "testPoint"    # Landroid/graphics/PointF;
    .param p2, "testRadius"    # F

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public initialise(Ljava/util/HashMap;)V
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
    .local p1, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 159
    const-string v0, "OffersEmitterNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emitter Initialisation Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 161
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->duration:F

    .line 162
    const-string v0, "position"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    .line 163
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->rotation:Landroid/graphics/PointF;

    .line 164
    const-string v0, "scale"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    .line 166
    const-string v0, "diameter"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->diameter:F

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->time:F

    .line 169
    iput v3, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->totalNumberOfObjectsEmitted:I

    .line 171
    iput v4, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->maximumNumberOfObjectsToEmit:I

    .line 173
    const-string v0, "maximumNumberOfObjectsToEmit"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "maximumNumberOfObjectsToEmit"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->maximumNumberOfObjectsToEmit:I

    .line 176
    :cond_0
    iput v4, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->maximumNumberOfObjectsActive:I

    .line 178
    const-string v0, "maximumNumberOfObjectsActive"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "maximumNumberOfObjectsActive"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->maximumNumberOfObjectsActive:I

    .line 181
    :cond_1
    const-string v0, "numberOfObjectsToEmitPerSecond"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->numberOfObjectsToEmitPerSecond:F

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->maximumNumberOfObjectsToEmit:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    .line 185
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emitterType:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    .line 187
    const-string v0, "objectProperties"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->objectProperties:Ljava/util/HashMap;

    .line 188
    return-void
.end method

.method public position()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    return-object v0
.end method

.method public processMessage(Ljava/util/HashMap;)V
    .locals 1
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
    .line 207
    .local p1, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->duration:F

    .line 209
    :cond_0
    return-void
.end method

.method public radius()F
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public recreateAssets()V
    .locals 3

    .prologue
    .line 615
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .line 616
    .local v1, "object":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->recreateAssets()V

    goto :goto_0

    .line 618
    .end local v1    # "object":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    :cond_0
    return-void
.end method

.method public rotation()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->rotation:Landroid/graphics/PointF;

    return-object v0
.end method

.method public scale()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    return-object v0
.end method

.method public setAllowCollisionChanges(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 702
    return-void
.end method

.method public setAlphaMultiplier(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 711
    return-void
.end method

.method public setCollisionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 693
    return-void
.end method

.method public setDiameter(F)V
    .locals 0
    .param p1, "diameter"    # F

    .prologue
    .line 736
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->diameter:F

    .line 737
    return-void
.end method

.method public setDirection(Landroid/graphics/PointF;)V
    .locals 7
    .param p1, "direction"    # Landroid/graphics/PointF;

    .prologue
    .line 643
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/PointF;->y:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 645
    .local v1, "lengthSqr":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 647
    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 649
    .local v0, "length":F
    iget v4, p1, Landroid/graphics/PointF;->x:F

    div-float v2, v4, v0

    .line 650
    .local v2, "normalisedDirectionX":F
    iget v4, p1, Landroid/graphics/PointF;->y:F

    div-float v3, v4, v0

    .line 652
    .local v3, "normalisedDirectionY":F
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->direction:Landroid/graphics/PointF;

    .line 654
    .end local v0    # "length":F
    .end local v2    # "normalisedDirectionX":F
    .end local v3    # "normalisedDirectionY":F
    :cond_0
    return-void
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 720
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->duration:F

    .line 721
    return-void
.end method

.method public setEmitterType(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;)V
    .locals 0
    .param p1, "type"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emitterType:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    .line 741
    return-void
.end method

.method public setMaximumNumberOfObjectsActive(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 728
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->maximumNumberOfObjectsActive:I

    .line 729
    return-void
.end method

.method public setMaximumNumberOfObjectsToEmit(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 732
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->maximumNumberOfObjectsToEmit:I

    .line 733
    return-void
.end method

.method public setNumberOfObjectsToEmitPerSecond(F)V
    .locals 0
    .param p1, "emit"    # F

    .prologue
    .line 724
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->numberOfObjectsToEmitPerSecond:F

    .line 725
    return-void
.end method

.method public setPosition(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/PointF;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    .line 623
    return-void
.end method

.method public setRotation(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "rotation"    # Landroid/graphics/PointF;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->rotation:Landroid/graphics/PointF;

    .line 679
    return-void
.end method

.method public setScale(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "scale"    # Landroid/graphics/PointF;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    .line 669
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 632
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->speed:F

    .line 633
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 193
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .line 196
    .local v1, "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    invoke-static {v1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$000(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Lcom/chillingo/liboffers/gui/renderer/Sprite;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->shutdown()V

    .line 198
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$002(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Lcom/chillingo/liboffers/gui/renderer/Sprite;)Lcom/chillingo/liboffers/gui/renderer/Sprite;

    goto :goto_0

    .line 201
    .end local v1    # "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    :cond_0
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 202
    return-void
.end method

.method public speed()F
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->speed:F

    return v0
.end method

.method public update(DD)V
    .locals 9
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    const/4 v4, 0x0

    .line 214
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->time:F

    float-to-double v2, v0

    add-double/2addr v2, p1

    double-to-float v0, v2

    iput v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->time:F

    .line 216
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->time:F

    iget v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->duration:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 219
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->totalNumberOfObjectsEmitted:I

    int-to-float v0, v0

    iget v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->time:F

    div-float v6, v0, v2

    .line 223
    .local v6, "emissionRate":F
    :goto_0
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->numberOfObjectsToEmitPerSecond:F

    cmpg-float v0, v6, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->totalNumberOfObjectsEmitted:I

    iget v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->maximumNumberOfObjectsToEmit:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->maximumNumberOfObjectsActive:I

    if-ge v0, v2, :cond_0

    .line 225
    const-string v0, "OffersEmitterNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emission total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->totalNumberOfObjectsEmitted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 226
    const-string v0, "OffersEmitterNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of objects active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 227
    const-string v0, "OffersEmitterNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emitter emission rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 230
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emitSprite()V

    .line 235
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->totalNumberOfObjectsEmitted:I

    int-to-float v0, v0

    iget v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->time:F

    div-float v6, v0, v2

    goto :goto_0

    .line 240
    .end local v6    # "emissionRate":F
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v8, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;>;"
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .line 245
    .local v1, "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    invoke-static {v1, p1, p2}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$118(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;D)F

    .line 249
    invoke-static {v1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$100(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v0

    invoke-static {v1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$200(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 252
    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->updateSprite(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;DD)V

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 262
    .end local v1    # "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .line 265
    .restart local v1    # "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    invoke-static {v1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$000(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Lcom/chillingo/liboffers/gui/renderer/Sprite;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->shutdown()V

    .line 267
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$002(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Lcom/chillingo/liboffers/gui/renderer/Sprite;)Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 269
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 272
    .end local v1    # "objectWrapper":Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    :cond_3
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->time:F

    iget v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->duration:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;->emittedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 277
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeNode(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 281
    :cond_4
    return-void
.end method

.method updateSprite(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;DD)V
    .locals 20
    .param p1, "objectWrapper"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p2, "timestep"    # D
    .param p4, "nominalTimestepFactor"    # D

    .prologue
    .line 506
    const/4 v14, 0x0

    .line 509
    .local v14, "updateMatrix":Z
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$400(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 511
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$300(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$400(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v18

    mul-float v15, v17, v18

    .line 512
    .local v15, "velocityX":F
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$300(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$400(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v18

    mul-float v16, v17, v18

    .line 514
    .local v16, "velocityY":F
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$1000(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-wide/from16 v0, p2

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    add-float v5, v17, v18

    .line 515
    .local v5, "posX":F
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$1000(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move-wide/from16 v0, p2

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    add-float v6, v17, v18

    .line 517
    .local v6, "posY":F
    new-instance v17, Landroid/graphics/PointF;

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$1002(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 519
    const/4 v14, 0x1

    .line 523
    .end local v5    # "posX":F
    .end local v6    # "posY":F
    .end local v15    # "velocityX":F
    .end local v16    # "velocityY":F
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$100(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v17

    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$200(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v18

    div-float v4, v17, v18

    .line 528
    .local v4, "percentComplete":F
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$900(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v17

    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$800(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v18

    sub-float v2, v17, v18

    .line 530
    .local v2, "alphaMultiplierDiff":F
    const v17, 0x3f19999a    # 0.6f

    cmpl-float v17, v4, v17

    if-lez v17, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3a83126f    # 0.001f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    .line 532
    const v17, 0x3e19999a    # 0.15f

    mul-float v3, v4, v17

    .line 537
    .local v3, "lerpRate":F
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$800(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v17

    mul-float v18, v2, v3

    move-wide/from16 v0, p4

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$802(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F

    .line 539
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$000(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Lcom/chillingo/liboffers/gui/renderer/Sprite;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$800(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->updateAlpha(F)V

    .line 545
    .end local v3    # "lerpRate":F
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$700(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_2

    .line 549
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$500(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$700(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v18

    mul-float v12, v17, v18

    .line 550
    .local v12, "targetScaleX":F
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$500(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$700(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v18

    mul-float v13, v17, v18

    .line 552
    .local v13, "targetScaleY":F
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$500(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    sub-float v9, v12, v17

    .line 553
    .local v9, "scaleXDiff":F
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$500(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    sub-float v11, v13, v17

    .line 555
    .local v11, "scaleYDiff":F
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$500(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-wide/from16 v0, p4

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    add-float v8, v17, v18

    .line 556
    .local v8, "scaleX":F
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$500(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move-wide/from16 v0, p4

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v11

    add-float v10, v17, v18

    .line 560
    .local v10, "scaleY":F
    new-instance v17, Landroid/graphics/PointF;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v10}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$502(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 561
    const/4 v14, 0x1

    .line 565
    .end local v8    # "scaleX":F
    .end local v9    # "scaleXDiff":F
    .end local v10    # "scaleY":F
    .end local v11    # "scaleYDiff":F
    .end local v12    # "targetScaleX":F
    .end local v13    # "targetScaleY":F
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$600(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_3

    .line 567
    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$1100(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$600(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F

    move-result v18

    move-wide/from16 v0, p2

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v7, v17, v18

    .line 570
    .local v7, "rotZ":F
    new-instance v17, Landroid/graphics/PointF;

    invoke-static/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$1100(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->access$1102(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 572
    const/4 v14, 0x1

    .line 576
    .end local v7    # "rotZ":F
    :cond_3
    if-eqz v14, :cond_4

    .line 577
    invoke-virtual/range {p1 .. p1}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->updateMatrix()V

    .line 578
    :cond_4
    return-void
.end method

.method public velocity()Landroid/graphics/PointF;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 663
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
